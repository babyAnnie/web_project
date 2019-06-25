using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class QueryStuBaseInfoByName : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.Cookies["adminid"] == null)
            Response.Redirect("~/login.aspx");
    }
    protected void LendBookBtn_Click(object sender, EventArgs e)
    {
        String LendBookName = this.LendBookName.Text;
        SqlConnection sqlconn = db.CreateConnection();
        sqlconn.Open();
        SqlCommand cmd = sqlconn.CreateCommand();
        cmd.CommandText = "Select * from LibraryBook where book_name='" + LendBookName + "'";
        SqlDataReader reader = cmd.ExecuteReader();
        reader.Read();
        String Book_Type = reader.GetString(1);
        reader.Close();
        cmd.Clone();
        String Stu_No= GridView1.Rows[0].Cells[0].Text;
        DateTime DT_Now = DateTime.Now;
        String Lend_Time = DT_Now.ToString();
      //  DT_Now.AddDays(30);//加三十天
        String Back_Time = DT_Now.AddDays(30).ToString();

        SqlCommand cmd2 = sqlconn.CreateCommand();
        cmd2.CommandText="insert into LendBook values('"+Stu_No+"','"+Back_Time+"','"+Lend_Time+"','"+LendBookName+"','"+Book_Type+"','AP10049',"+"0)";
        cmd2.ExecuteNonQuery();
        Alert("借书成功!", this);
    }
    public static void Alert(string info, Page p)
    {
        string script = "<script>alert('" + info + "')</script>";
        p.ClientScript.RegisterStartupScript(p.GetType(), "", script);
    }
    protected void QueryByName_Click(object sender, EventArgs e)
    {
        this.IsLendBook.Visible = true;
        this.IsBackBook.Visible = true;

        this.LendLabel.Visible = false;
        this.LendBookBtn.Visible = false;
        this.LendBookName.Visible = false;
        this.BackLabel.Visible = false;
        this.BackBookBtn.Visible = false;
        this.BackBookName.Visible = false;

    }
    protected void BackBookBtn_Click(object sender, EventArgs e)
    {
        String LendBookName = this.LendBookName.Text;
        SqlConnection sqlconn = db.CreateConnection();
        sqlconn.Open();
        SqlCommand cmd = sqlconn.CreateCommand();
        cmd.CommandText = "update LendBook set book_finish='1'";
        cmd.ExecuteNonQuery();
        Alert("还书成功!", this);
    }
    protected void IsLendBook_Click(object sender, EventArgs e)
    {
        this.LendLabel.Visible = true;
        this.LendBookBtn.Visible = true;
        this.LendBookName.Visible = true;
        this.IsLendBook.Visible = false;
        this.IsBackBook.Visible = false;
    }
    protected void IsBackBook_Click(object sender, EventArgs e)
    {
        this.BackLabel.Visible = true;
        this.BackBookBtn.Visible = true;
        this.BackBookName.Visible = true;
        this.IsLendBook.Visible = false;
        this.IsBackBook.Visible = false;
    }
}