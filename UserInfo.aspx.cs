using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class UserInfo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Request.Cookies["userid"] == null)
            Response.Redirect("~/login.aspx");
        String userNo = Request.Cookies["userid"].Value;
        SqlConnection sqlconn = db.CreateConnection();
        sqlconn.Open();
        SqlCommand cmd = sqlconn.CreateCommand();
        cmd.CommandText = "select* from BaseInf where user_id="+userNo;
        SqlDataReader reader = cmd.ExecuteReader();
        reader.Read(); 
        try
        {
            this.lblId.Text = reader.GetString(0);
            this.lblName.Text = reader.GetString(2);
            this.lblType.Text = reader.GetString(3);
            this.lblPartment.Text = reader.GetString(4);
            this.lblState.Text = reader.GetString(5);
            this.lblCellPhone.Text = reader.GetString(6);
            this.lblEmail.Text = reader.GetString(7);
            this.lblLocation.Text = reader.GetString(8);
            this.lblExtra.Text = reader.GetString(9);

        }
        catch (Exception ee)
        {
            Response.Write("系统提示：" + ee.Message + "<br />");    //输出捕捉的错误信息
        }
        finally {
            reader.Close();
            cmd.Clone();
            sqlconn.Close();
        }

    }
    protected void btnMod_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/ModifyUserInfo.aspx");
    }
}