<%@ Page Language="C#" AutoEventWireup="true" CodeFile="QueryLendRecordByName.aspx.cs" Inherits="QueryLendRecordByName" %>

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
            <style>
        .mGrid {    
    width: 100%;    
    background-color: #fff;    
    margin: 5px 0 10px 0;    
    border: solid 1px #525252;    
    border-collapse:collapse;    
}   
.mGrid td {    
    padding: 2px;    
    border: solid 1px #c1c1c1;    
    color: #717171;    
}   
.mGrid th {    
    padding: 4px 2px;    
    color: #fff;    
    background: #424242 url(imgsrc/grd_head.png) repeat-x top;    
    border-left: solid 1px #525252;    
    font-size: 0.9em;    
}   
.mGrid .alt { background: #fcfcfc url(imgsrc/grd_alt.png) repeat-x top; }   
.mGrid .pgr { background: #424242 url(imgsrc/grd_pgr.png) repeat-x top; }   
.mGrid .pgr table { margin: 5px 0; }   
.mGrid .pgr td {    
    border-width: 0;    
    padding: 0 6px;    
    border-left: solid 1px #666;    
    font-weight: bold;    
    color: #fff;    
    line-height: 12px;    
 }      
.mGrid .pgr a { color: #666; text-decoration: none; }   
.mGrid .pgr a:hover { color: #000; text-decoration: none; }  
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
          <li class="ulbeside"><a href="login.aspx" onclick="delCookie('adminid')"> 退出登录 </a></li>
        </ul>
         <div class="dropdown"  style="margin-left:40%;text-align:center;float:left">
            <button class="dropbtn">查询学生基本信息</button>
            <div class="dropdown-content">
            <a href="QueryAllStuBaseInfo.aspx">查询所有学生基本信息</a>
            <a href="QueryStuBaseInfoByName.aspx">按照学生姓名查询学生基本信息</a>
          </div>
         </div>
         <div class="dropdown"  style="margin-left:1%;text-align:center">
            <button class="dropbtn">查询学生借还书记录</button>
            <div class="dropdown-content">
            <a href="QueryAllLendRecord.aspx">查询所有学生借还书记录</a>
            <a href="QueryLendRecordByName.aspx">按照学生姓名查询学生借还书记录</a>
          </div>
         </div>
        <div style="margin-top:5%;margin-left:40%">
            <asp:Label ID="Label1" runat="server" Text="请输入学生姓名:" Font-Size="Large"></asp:Label>
            <asp:TextBox ID="StuName" runat="server" Font-Size="Large"></asp:TextBox>

            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="QueryByName" runat="server" Text="查询信息" Font-Size="Large" Height="40px" Width="150px"/>
        </div>
            <br />
            <br />
        <div style="margin-left:20%">
            <asp:GridView ID="GridView" runat="server" DataSourceID="QueryRecordByName" AutoGenerateColumns="False"
                   AllowPaging="True"  
            CssClass="mGrid"
            PagerStyle-CssClass="pgr"  
            AlternatingRowStyle-CssClass="alt">
                <Columns>
                    <asp:BoundField DataField="user_name" HeaderText="用户名" SortExpression="user_name" />
                    <asp:BoundField DataField="user_id" HeaderText="学号" SortExpression="user_id" />
                    <asp:BoundField DataField="dead_date" HeaderText="还书日期" SortExpression="dead_date" />
                    <asp:BoundField DataField="start_date" HeaderText="借书日期" SortExpression="start_date" />
                    <asp:BoundField DataField="book_name" HeaderText="书名" SortExpression="book_name" />
                    <asp:BoundField DataField="book_type" HeaderText="图书类型" SortExpression="book_type" />
                    <asp:BoundField DataField="book_number" HeaderText="图书登录号" SortExpression="book_number" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="QueryRecordByName" runat="server" ConnectionString="<%$ ConnectionStrings:LibrarySystemConnectionString %>" SelectCommand="SELECT BaseInf.user_name, LendBook.user_id, LendBook.dead_date, LendBook.start_date, LendBook.book_name, LendBook.book_type, LendBook.book_number FROM BaseInf INNER JOIN LendBook ON BaseInf.user_id=LendBook.user_id and user_type = @usertype and user_name = @username and LendBook.book_finish = '1'" ProviderName="System.Data.SqlClient">
                <SelectParameters>
                    <asp:Parameter DefaultValue="学生" Name="usertype" />
                    <asp:ControlParameter ControlID="StuName" Name="username" PropertyName="Text" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>


    </form>
</body>
</html>
