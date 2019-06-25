using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class BookInsert : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void InsertBook_Click(object sender, EventArgs e)
    {
        SqlConnection sqlconn = db.CreateConnection();
        sqlconn.Open();
        SqlCommand cmd = sqlconn.CreateCommand();
        String Book_Name = this.BookName.Text;
        String Book_Type = this.BookType.Text;
        String Author_Name = this.AuthorName.Text;
        String Book_Count = this.BookCount.Text;
        int Book_IntCount = int.Parse(Book_Count);
        cmd.CommandText = "insert into LibraryBook values('" + Book_Name + "','" + Book_Type + "','" + Author_Name + "'," + Book_IntCount + ",0)";
        cmd.ExecuteNonQuery();
        Alert("入库成功!", this);

    }
    public static void Alert(string info, Page p)
    {
        string script = "<script>alert('" + info + "')</script>";
        p.ClientScript.RegisterStartupScript(p.GetType(), "", script);
    }
}