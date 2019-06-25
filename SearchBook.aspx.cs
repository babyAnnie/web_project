using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class SearchBook : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.Cookies["userid"] == null)
            Response.Redirect("~/login.aspx");
    }
    protected void btnSearch_Click(object sender, EventArgs e)
    {
        string bookname = txtBookName.Text;
        SqlConnection conn = db.CreateConnection();
        conn.Open();
        SqlCommand sqlcmd = conn.CreateCommand();
        sqlcmd.CommandText = "select * from LibraryBook where book_name='" + bookname + "';";

        SqlDataReader sqlreader = sqlcmd.ExecuteReader();

        if (!(sqlreader.Read()))
        {
            Response.Write("<script>alert('查无此书！');</script>");

        }
        sqlreader.Close();
        conn.Close();

    }

}