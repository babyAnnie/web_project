using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class BaseInfo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Request.Cookies["adminid"] == null)
            Response.Redirect("~/login.aspx");
        if (!IsPostBack)
        {
            SqlConnection sqlconn = db.CreateConnection();
            sqlconn.Open();
            SqlCommand cmd = sqlconn.CreateCommand();
            cmd.CommandText = "select* from BaseInf where user_type='管理员'";
            SqlDataReader reader = cmd.ExecuteReader();
            reader.Read();


            this.IDno.Text = reader.GetString(0);
            this.IDname.Text = reader.GetString(2);
            this.IDtype.Text = reader.GetString(3);
            this.IDdepart.Text = reader.GetString(4);
            this.IDstate.Text = reader.GetString(5);
            this.IDphone.Text = reader.GetString(6);
            this.IDmail.Text = reader.GetString(7);
            this.IDlocal.Text = reader.GetString(8);
            this.IDextra.Text = reader.GetString(9);

            this.TB_IDno.Text = reader.GetString(0);
            this.TB_IDname.Text = reader.GetString(2);
            this.TB_IDtype.Text = reader.GetString(3);
            this.TB_IDdepart.Text = reader.GetString(4);
            this.TB_IDstate.Text = reader.GetString(5);
            this.TB_IDphone.Text = reader.GetString(6);
            this.TB_IDmail.Text = reader.GetString(7);
            this.TB_IDlocal.Text = reader.GetString(8);
            this.TB_IDextra.Text = reader.GetString(9);



            this.TB_IDno.Text = reader.GetString(0);



            sqlconn.Close();
            cmd.Clone();
            reader.Close();
        }
    }
    protected void Modify_Click(object sender, EventArgs e)
    {
        this.Modify.Visible = false;
        this.IDno.Visible = false;
        this.IDname.Visible = false;
        this.IDtype.Visible = false;
        this.IDdepart.Visible = false;
        this.IDstate.Visible = false;
        this.IDphone.Visible = false;
        this.IDmail.Visible = false;
        this.IDlocal.Visible = false;
        this.IDextra.Visible = false;

        this.CertainModify.Visible = true;
        this.TB_IDno.Visible = true;
        this.TB_IDname.Visible = true;
        this.TB_IDtype.Visible = true;
        this.TB_IDdepart.Visible = true;
        this.TB_IDstate.Visible = true;
        this.TB_IDphone.Visible = true;
        this.TB_IDmail.Visible = true;
        this.TB_IDlocal.Visible = true;
        this.TB_IDextra.Visible = true;
    }
    protected void CertainModify_Click(object sender, EventArgs e)
    {
        this.Modify.Visible = true;
        this.IDno.Visible = true;
        this.IDname.Visible = true;
        this.IDtype.Visible = true;
        this.IDdepart.Visible = true;
        this.IDstate.Visible = true;
        this.IDphone.Visible = true;
        this.IDmail.Visible = true;
        this.IDlocal.Visible = true;
        this.IDextra.Visible = true;


        this.CertainModify.Visible = false;
        this.TB_IDno.Visible = false;
        this.TB_IDname.Visible = false;
        this.TB_IDtype.Visible = false;
        this.TB_IDdepart.Visible = false;
        this.TB_IDstate.Visible = false;
        this.TB_IDphone.Visible = false;
        this.TB_IDmail.Visible = false;
        this.TB_IDlocal.Visible = false;
        this.TB_IDextra.Visible = false;


        String Sno = this.TB_IDno.Text;
        String Sname = this.TB_IDname.Text;
        String Stype = this.TB_IDtype.Text;
        String Sdepart = this.TB_IDdepart.Text;
        String Sstate = this.TB_IDstate.Text;
        String Sphone = this.TB_IDphone.Text;
        String Smail = this.TB_IDmail.Text;
        String Slocal = this.TB_IDlocal.Text;
        String Sextra = this.TB_IDextra.Text;

        SqlConnection sqlconn = db.CreateConnection();
        sqlconn.Open();
        SqlCommand cmd = sqlconn.CreateCommand();
        cmd.CommandText = "update BaseInf set user_name='" + Sname + "',user_type='" + Stype + "',user_partment='" + Sdepart + "',user_state='" + Sstate + "',user_cellphone='" + Sphone
            + "',user_email='" + Smail + "',user_location='" + Slocal + "',user_extra='" + Sextra + "' where user_id='" + Sno + "'";
        cmd.ExecuteNonQuery();
            Alert("修改成功!", this);

    }
    public static void Alert(string info, Page p)
    {
        string script = "<script>alert('" + info + "')</script>";
        p.ClientScript.RegisterStartupScript(p.GetType(), "", script);
    }
}