using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;


public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_login_Click(object sender, EventArgs e)
    {
        if ((edit_id.Text == "") || (edit_pwd.Text == ""))
        {

        }
        else
        {
            SqlConnection con = db.CreateConnection();
            con.Open();
            string strSql = "select user_pwd,user_type from BaseInf where user_id='" + edit_id.Text + "'";
            SqlCommand cmd = new SqlCommand(strSql, con);
            DataSet ds = new DataSet();
            SqlDataAdapter da = new SqlDataAdapter(strSql, con);
            da.Fill(ds, "mytable");
            try
            {
                if (edit_pwd.Text == ds.Tables[0].Rows[0].ItemArray[0].ToString().Trim())
                {
                    

                    if ("管理员"==ds.Tables[0].Rows[0].ItemArray[1].ToString().Trim())
                    {
                        string curuser = edit_id.Text;
                        HttpCookie cookie = new HttpCookie("adminid");
                        cookie.Value = curuser;
                        Response.Cookies.Add(cookie);
                        Response.Redirect("~/ManagerPage.aspx");
                    }
                    else
                    {
                        string curuser = edit_id.Text;
                        HttpCookie cookie = new HttpCookie("userid");
                        cookie.Value = curuser;
                        Response.Cookies.Add(cookie);
                        Response.Redirect("~/UserPage.aspx");
                    }
                   
                }
                else
                {
                    
                }
            }
            catch
            {
                
            }
            con.Close();
        }
    }
}