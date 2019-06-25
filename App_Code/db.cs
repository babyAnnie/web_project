using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

/// <summary>
///db 的摘要说明
/// </summary>
public class db
{
    public db()
    {
        //
        //TODO: 在此处添加构造函数逻辑
        //
    }
    public static SqlConnection CreateConnection()
    {
        string connectionString=@"Data Source=(LocalDB)\v11.0;AttachDbFilename=D:\Library_System\database\LibrarySystem.mdf;Integrated Security=True;Connect Timeout=30";
        SqlConnection con = new SqlConnection(connectionString);
       // SqlConnection con = new SqlConnection(@"server=localhost\SQLExpress;database=LibrarySystem;uid=sa;pwd=85321;");
        return con;

    }
}