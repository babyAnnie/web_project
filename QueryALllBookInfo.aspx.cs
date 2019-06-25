using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class QueryALllBookInfo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.Cookies["adminid"] == null)
            Response.Redirect("~/login.aspx");
    }
    protected void BookInsertBtn_Click(object sender, EventArgs e)
    {
        Response.Redirect("BookInsert.aspx");
    }
    protected void BookDeleteBtn_Click(object sender, EventArgs e)
    {
        this.DeleteBookLabel.Visible = true;
        this.DeleteBookName.Visible = true;
        this.DeleteBook.Visible = true;
        this.BookAuthorLabel.Visible = true;
        this.BookAuthorName.Visible = true;
    }
    protected void DeleteBook_Click(object sender, EventArgs e)
    {
        String BookName = this.DeleteBookName.Text;
        String AuthorName = this.BookAuthorName.Text;
        if (!BookName.Equals("") && !BookName.Equals(" ")&&!AuthorName.Equals("")&&!AuthorName.Equals(" "))
        {
            SqlConnection sqlconn = db.CreateConnection();
            sqlconn.Open();
            SqlCommand cmd = sqlconn.CreateCommand();
            cmd.CommandText = "delete LibraryBook where book_name='" + BookName + "' and book_autor='"+AuthorName+"'";
            cmd.ExecuteNonQuery();
            Alert("出库成功!", this);
        }
        else
        {
            Alert("请输入书名和作者名后再出库!", this);
        }
    }
    public static void Alert(string info, Page p)
    {
        string script = "<script>alert('" + info + "')</script>";
        p.ClientScript.RegisterStartupScript(p.GetType(), "", script);
    }
}