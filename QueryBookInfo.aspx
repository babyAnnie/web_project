<%@ Page Language="C#" AutoEventWireup="true" CodeFile="QueryBookInfo.aspx.cs" Inherits="QueryBookInfo" %>

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


        ul.ulbtn{
            list-style-type: none;
            margin:  0;
            padding: 0;
            overflow: hidden;
            background-color: white;
            height:48px
        }

        li.libtn{
            float: left;
            cursor:pointer;
        }

        li.libtn a {
            display: block;
            color: white;
            background-color:#555;
            text-align: center;
            padding: 14px 16px;
            text-decoration: none;
        }

        li.libtn a:hover {
            background-color: #111;
        }



        /* 下拉按钮样式 */
        .dropbtn {
            background-color: #4CAF50;
            color: white;
            padding: 16px;
            font-size: 16px;
            border: none;
            cursor: pointer;
        }

        /* 容器 <div> - 需要定位下拉内容 */
        .dropdown {
            position: relative;
            display: inline-block;
        }

        /* 下拉内容 (默认隐藏) */
        .dropdown-content {
            display: none;
            position: absolute;
            background-color: #f9f9f9;
            min-width: 160px;
            box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
        }

        /* 下拉菜单的链接 */
        .dropdown-content a {
            color: black;
            padding: 12px 16px;
            text-decoration: none;
            display: block;
        }

        /* 鼠标移上去后修改下拉菜单链接颜色 */
        .dropdown-content a:hover {background-color: #f1f1f1;cursor: pointer;}

        /* 在鼠标移上去后显示下拉菜单 */
        .dropdown:hover .dropdown-content {
            display: block;
        }

        /* 当下拉内容显示后修改下拉按钮的背景颜色 */
        .dropdown:hover .dropbtn {
            background-color: #3e8e41;
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
         <div class="dropdown"  style="margin-left:40%;text-align:center;float:left">
            <button class="dropbtn">查询图书基本信息</button>
            <div class="dropdown-content">
            <a href="QueryALllBookInfo.aspx">查询所有图书信息</a>
            <a href="QueryBookInfoByBookName.aspx">按照书名查询图书信息</a>
          </div>
         </div>
         <div class="dropdown"  style="margin-left:1%;text-align:center">
            <button class="dropbtn">查询图书历史记录</button>
            <div class="dropdown-content">
            <a href="QueryAllBookHistory.aspx">查询所有图书历史记录</a>
            <a href="QueryBookHistoryByDate.aspx"></a>
          </div>
         </div>
    </form>
</body>
</html>
