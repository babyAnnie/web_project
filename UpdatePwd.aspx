<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UpdatePwd.aspx.cs" Inherits="UpdatePwd" %>

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
     <script type="text/javascript">
         function delCookie(name) {//为了删除指定名称的cookie，可以将其过期时间设定为一个过去的时间   
             var date = new Date();
             date.setTime(date.getTime() - 10000);
             document.cookie = name + "=a; expires=" + date.toGMTString();
         }
    </script>
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
          <li class="ulbeside"><a href="login.aspx" onclick="delCookie('adminid')"> 退出登录 </a></li>
        </ul>
        <div style="margin-left:10%;margin-top:5%">
            <div style="margin-left:30%;float:left">
                <asp:Label ID="Label1" runat="server" Text="请输入原密码:" Font-Size="Large"></asp:Label>
                <asp:TextBox ID="OldPWd" runat="server" Font-Size="Large"></asp:TextBox>
                <br />
                <br />
                <br />
                <asp:Label ID="Label2" runat="server" Text="请输入新密码:" Font-Size="Large"></asp:Label>
                <asp:TextBox ID="NewPwd" runat="server" Font-Size="Large"></asp:TextBox>
                <br />
                <br />
                <br />
                <asp:Label ID="Label3" runat="server" Text="请确认新密码:" Font-Size="Large"></asp:Label>
                <asp:TextBox ID="CertainPwd" runat="server" Font-Size="Large"></asp:TextBox>
                <br />
                <br />
                <br />
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                <asp:Button ID="BtnUpdatePwd" runat="server" Text="确认修改" Font-Size="Large" Width="150px" Height="40px" OnClick="BtnUpdatePwd_Click"/>
            </div>
        </div>
    </form>
</body>
</html>
