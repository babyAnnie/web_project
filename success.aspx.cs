using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class success : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
        if (Request.Cookies["flag"] == null)
        {
            Response.Redirect("~/login.aspx");
        }
        else if (Request.Cookies["flag"].Value == "fail")
        {
            label1.Text = "注册失败,点击返回登录界面";
        }
        else if(Request.Cookies["flag"].Value == "success")
        {
            label1.Text = "注册成功,点击返回登录界面";
        }
    }
}