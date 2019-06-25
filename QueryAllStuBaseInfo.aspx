<%@ Page Language="C#" AutoEventWireup="true" CodeFile="QueryAllStuBaseInfo.aspx.cs" Inherits="QueryAllStuBaseInfo" %>

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
        <div style="margin-top:5%;margin-left:20%">
            <asp:GridView ID="GridView1" runat="server" DataSourceID="SelectBaseInf" AutoGenerateColumns="False" DataKeyNames="user_id" CellPadding="4" ForeColor="#333333" GridLines="None"
            AllowPaging="True"  
            CssClass="mGrid"
            PagerStyle-CssClass="pgr"  
            AlternatingRowStyle-CssClass="alt">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="user_id" HeaderText="学号" ReadOnly="True" SortExpression="user_id" />
                    <asp:BoundField DataField="user_pwd" HeaderText="密码" SortExpression="user_pwd" />
                    <asp:BoundField DataField="user_name" HeaderText="用户名" SortExpression="user_name" />
                    <asp:BoundField DataField="user_type" HeaderText="用户类型" SortExpression="user_type" />
                    <asp:BoundField DataField="user_partment" HeaderText="单位" SortExpression="user_partment" />
                    <asp:BoundField DataField="user_state" HeaderText="状态" SortExpression="user_state" />
                    <asp:BoundField DataField="user_cellphone" HeaderText="电话" SortExpression="user_cellphone" />
                    <asp:BoundField DataField="user_email" HeaderText="邮箱" SortExpression="user_email" />
                    <asp:BoundField DataField="user_location" HeaderText="住址" SortExpression="user_location" />
                    <asp:BoundField DataField="user_extra" HeaderText="备注" SortExpression="user_extra" />
                    <asp:CommandField HeaderText="数据编辑" ShowDeleteButton="True" ShowEditButton="True" ShowHeader="True">
                    <FooterStyle Wrap="False" />
                    <HeaderStyle Wrap="False" />
                    <ItemStyle Width="20px" Wrap="False" />
                    </asp:CommandField>
                </Columns>
                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                <SortedAscendingCellStyle BackColor="#FDF5AC" />
                <SortedAscendingHeaderStyle BackColor="#4D0000" />
                <SortedDescendingCellStyle BackColor="#FCF6C0" />
                <SortedDescendingHeaderStyle BackColor="#820000" />
            </asp:GridView>
            <asp:SqlDataSource ID="SelectBaseInf" runat="server" ConnectionString="<%$ ConnectionStrings:LibrarySystemConnectionString %>" SelectCommand="SELECT * FROM [BaseInf] WHERE ([user_type] = @user_type)" DeleteCommand="DELETE FROM [BaseInf] WHERE [user_id] = @user_id" InsertCommand="INSERT INTO [BaseInf] ([user_id], [user_pwd], [user_name], [user_type], [user_partment], [user_state], [user_cellphone], [user_email], [user_location], [user_extra]) VALUES (@user_id, @user_pwd, @user_name, @user_type, @user_partment, @user_state, @user_cellphone, @user_email, @user_location, @user_extra)" ProviderName="System.Data.SqlClient" UpdateCommand="UPDATE [BaseInf] SET [user_pwd] = @user_pwd, [user_name] = @user_name, [user_type] = @user_type, [user_partment] = @user_partment, [user_state] = @user_state, [user_cellphone] = @user_cellphone, [user_email] = @user_email, [user_location] = @user_location, [user_extra] = @user_extra WHERE [user_id] = @user_id">
                <DeleteParameters>
                    <asp:Parameter Name="user_id" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="user_id" Type="String" />
                    <asp:Parameter Name="user_pwd" Type="String" />
                    <asp:Parameter Name="user_name" Type="String" />
                    <asp:Parameter Name="user_type" Type="String" />
                    <asp:Parameter Name="user_partment" Type="String" />
                    <asp:Parameter Name="user_state" Type="String" />
                    <asp:Parameter Name="user_cellphone" Type="String" />
                    <asp:Parameter Name="user_email" Type="String" />
                    <asp:Parameter Name="user_location" Type="String" />
                    <asp:Parameter Name="user_extra" Type="String" />
                </InsertParameters>
                <SelectParameters>
                    <asp:Parameter DefaultValue="学生" Name="user_type" Type="String" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="user_pwd" Type="String" />
                    <asp:Parameter Name="user_name" Type="String" />
                    <asp:Parameter Name="user_type" Type="String" />
                    <asp:Parameter Name="user_partment" Type="String" />
                    <asp:Parameter Name="user_state" Type="String" />
                    <asp:Parameter Name="user_cellphone" Type="String" />
                    <asp:Parameter Name="user_email" Type="String" />
                    <asp:Parameter Name="user_location" Type="String" />
                    <asp:Parameter Name="user_extra" Type="String" />
                    <asp:Parameter Name="user_id" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
