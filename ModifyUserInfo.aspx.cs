using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class ModifyUserInfo : System.Web.UI.Page
{        
    public SqlConnection sqlconn = db.CreateConnection(); 
    public SqlCommand cmd;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.Cookies["userid"] == null)
            Response.Redirect("~/login.aspx");
        if (!IsPostBack)
        {
            String userNo = Request.Cookies["userid"].Value;
            sqlconn.Open();
            cmd = sqlconn.CreateCommand();
            cmd.CommandText = "select* from BaseInf where user_id=" + userNo;
            SqlDataReader reader = cmd.ExecuteReader();
            reader.Read();
            try
            {
                this.txtCellPhone.Text = reader.GetString(6);
                this.txtEmail.Text = reader.GetString(7);
                this.txtLocation.Text = reader.GetString(8);
                this.txtExtra.Text = reader.GetString(9);

            }
            catch (Exception ee)
            {
                Response.Write("系统提示：" + ee.Message + "<br />");    //输出捕捉的错误信息
            }
            finally
            {
                reader.Close();
                cmd.Clone();
                sqlconn.Close();
            }
        }

    }
    protected void btnSave_Click(object sender, EventArgs e)
    {
        String userNo = Request.Cookies["userid"].Value;
        
        if(userNo!=null)
        {
            sqlconn.Open();
            /*更新语句*/
            string updatesql = "update BaseInf set user_cellphone='" + txtCellPhone.Text
                                                + "',user_email='" + txtEmail.Text
                                                + "',user_location='" + txtLocation.Text
                                                + "',user_extra='" + txtExtra.Text
                                                + "' where user_id='" + userNo + "';";
            cmd = new SqlCommand(updatesql, sqlconn);
            cmd.ExecuteNonQuery();

            sqlconn.Close();
            Response.Redirect("~/infomodifysuccess.aspx");
        }


    }
    protected void btnCancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/UserInfo.aspx");
    }
}