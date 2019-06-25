<%@ Page Language="C#" AutoEventWireup="true" CodeFile="BookInsert.aspx.cs" Inherits="BookInsert" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>管理员页面</title>
    <style>
        ul.ultop{
            list-style-type: none;
            margin:  0;
            padding: 0;
            overflow: hidden;
            background-color: #555;
            height:48px
            
        }
        li.litop{
            float: left;
            cursor:pointer;
        }

        li.litop a {
            display: block;
            color: white;
            text-align: center;
            padding: 14px 16px;
            text-decoration: none;
        }

        li.litop a:hover {
            background-color: #111;
        }




        ul.ulbeside{
            list-style-type: none;
            margin: 0;
            padding: 0;
            width: 10%;
            background-color: #333;
            position: fixed;
            height: 100%;
            overflow: auto;
        }

        li.ulbeside{
            margin-top:10px;
            cursor:pointer;
        }

        li.ulbeside a {
            display: block;
            color: #000;
            padding: 8px 16px;
            text-decoration: none;
            height:30px;
            color: white;
            text-align:center;
        }

        li.ulbeside a:hover:not(.active) {
            background-color: #4CAF50;
            color: white;
        }

    </style>
</head>
<body >
    <form id="form1" runat="server" >
    <img src="top.png" style="width:100%"/>
        <ul class="ultop">
         
        </ul>
        <ul class="ulbeside">
          <li class="ulbeside""><a href="ManagerPage.aspx">首页</a></li>
          <li class="ulbeside""><a href="BaseInfo.aspx">个人信息</a></li>
          <li class="ulbeside"><a href="UpdatePwd.aspx">修改密码</a></li>
          <li class="ulbeside"><a  href="QueryStuInfo.aspx">查询学生信息</a></li>
          <li class="ulbeside"><a href="QueryBookInfo.aspx">查询书目信息</a></li>
          <li class="ulbeside"><a>退出登录</a></li>
        </ul>

        <div style="margin-left:20%;margin-top:5%;float:left"">

            <asp:Label ID="Label1" runat="server" Text="书名:"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="BookName" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="图书类型:"></asp:Label>
            <asp:TextBox ID="BookType" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Text="作者:"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="AuthorName" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="asd" runat="server" Text="入库数量:"></asp:Label>
            <asp:TextBox ID="BookCount" runat="server"></asp:TextBox>

            <br />
            <br />
            <asp:Button ID="InsertBook" runat="server" Text="图书入库" Height="40px" Width="150px" OnClick="InsertBook_Click"/>

        </div>

    </form>
</body>
</html>
