using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class UpdatePwd : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.Cookies["adminid"] == null)
            Response.Redirect("~/login.aspx");
    }
    protected void BtnUpdatePwd_Click(object sender, EventArgs e)
    {
        SqlConnection sqlconn = db.CreateConnection();
        sqlconn.Open();
        SqlCommand cmd = sqlconn.CreateCommand();
        cmd.CommandText = "select user_pwd from BaseInf where user_type='管理员'";
        SqlDataReader reader = cmd.ExecuteReader();
        reader.Read();
        String oldPWD = this.OldPWd.Text;
        String newPWD = this.NewPwd.Text;
        String certainPWD = this.CertainPwd.Text;
        if(oldPWD.Equals(reader.GetString(0))&&newPWD.Equals(certainPWD))
        {
            reader.Close();
            cmd.CommandText = "update BaseInf set user_pwd='" + newPWD + "' where user_type='管理员'";
            if(cmd.ExecuteNonQuery()==1)
            {
                Alert("密码修改成功!", this);
            }
        }
        else
        {
            Alert("密码或者密码验证出错啦!", this);
        }
        sqlconn.Close();
        cmd.Clone();
    }
    //弹出信息，信息内容为info
    public static void Alert(string info, Page p)
    {
        string script = "<script>alert('" + info + "')</script>";
        p.ClientScript.RegisterStartupScript(p.GetType(), "", script);
    }
}