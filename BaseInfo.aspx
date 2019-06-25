<%@ Page Language="C#" AutoEventWireup="true" CodeFile="BaseInfo.aspx.cs" Inherits="BaseInfo" %>

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
            <asp:Label ID="Label2" runat="server" Text="学号:" Font-Size="Large"></asp:Label>
            <asp:Label ID="IDno" runat="server" Font-Size="Large"></asp:Label>
            &nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TB_IDno" runat="server" Visible="false" Enabled="false" ></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Text="姓名:" Font-Size="Large"></asp:Label>
            <asp:Label ID="IDname" runat="server" Font-Size="Large"></asp:Label>
            &nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TB_IDname" runat="server" Visible="false"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label4" runat="server" Text="类型:" Font-Size="Large"></asp:Label>
            <asp:Label ID="IDtype" runat="server" Font-Size="Large"></asp:Label>
            &nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TB_IDtype" runat="server" Visible="false"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label5" runat="server" Text="单位:" Font-Size="Large"></asp:Label>
            <asp:Label ID="IDdepart" runat="server" Font-Size="Large"></asp:Label>
             &nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TB_IDdepart" runat="server" Visible="false"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Text="状态:" Font-Size="Large"></asp:Label>
            <asp:Label ID="IDstate" runat="server" Font-Size="Large"></asp:Label>
            &nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TB_IDstate" runat="server" Visible="false"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label6" runat="server" Text="手机号:" Font-Size="Large"></asp:Label>
            <asp:Label ID="IDphone" runat="server" Font-Size="Large"></asp:Label>
            <asp:TextBox ID="TB_IDphone" runat="server" Visible="false"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label7" runat="server" Text="邮箱:" Font-Size="Large"></asp:Label>
            <asp:Label ID="IDmail" runat="server" Font-Size="Large"></asp:Label>
            &nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TB_IDmail" runat="server" Visible="false"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label8" runat="server" Text="住址:" Font-Size="Large"></asp:Label>
            <asp:Label ID="IDlocal" runat="server" Font-Size="Large"></asp:Label>
            &nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TB_IDlocal" runat="server" Visible="false"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label9" runat="server" Text="备注:" Font-Size="Large"></asp:Label>
            <asp:Label ID="IDextra" runat="server" Font-Size="Large"></asp:Label>
            &nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TB_IDextra" runat="server" Visible="false"></asp:TextBox>
            <br />
            <br />
            <br />
            <asp:Button ID="Modify" runat="server" Text="修改信息" Height="40px" Width="150px" OnClick="Modify_Click"/>
            <asp:Button ID="CertainModify" runat="server" Text="确认修改" Height="40px" Width="150px" Visible="false" OnClick="CertainModify_Click"/>
        </div>

    </form>
</body>
</html>
