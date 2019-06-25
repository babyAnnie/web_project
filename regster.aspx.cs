using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;


public partial class regster : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_reg_Click(object sender, EventArgs e)
    {
        if (Page.IsValid&&reg_edit_pwd.Text.Trim()!="")
        {
            //这里进行注册操作
            HttpCookie cookie = new HttpCookie("flag");
            try
            {
                SqlConnection con = db.CreateConnection();
                con.Open();
                string strsql = "insert into BaseInf values('" + 
                    reg_edit_id.Text + "','" + reg_edit_pwd.Text +"','" +
                    reg_edit_name.Text+"','"+"学生"+"','"+reg_edit_depart.Text+"','"+"正常"+
                    "','"+reg_edit_phone.Text+"','"+reg_edit_email.Text+"','"+reg_edit_address.Text+"','"+"无"+"')";
                SqlCommand cmd = new SqlCommand(strsql, con);
                cmd.ExecuteNonQuery();
                con.Close();
            }
            catch
            {
                cookie.Value = "fail";
                Response.Cookies.Add(cookie);
                Response.Redirect("success.aspx");
                return;
            }

            cookie.Value = "success";
            Response.Cookies.Add(cookie);
            Response.Redirect("success.aspx");
        }
    }
}