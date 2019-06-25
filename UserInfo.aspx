<%@ Page Title="" Language="C#" MasterPageFile="~/UserMasterPage.master" AutoEventWireup="true" CodeFile="UserInfo.aspx.cs" Inherits="UserInfo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphTitle" Runat="Server">
    用户个人信息
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphContent" Runat="Server">
    <div style="padding-left:30px; border-bottom:1px solid #ddd;">
        <h3>个人信息</h3>
    </div>
    <div style="margin-left:300px">
        <p>证&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;号：<asp:Label ID="lblId" runat="server" Text="Label"></asp:Label>
        </p>
        <p>姓&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;名：<asp:Label ID="lblName" runat="server" Text="Label"></asp:Label>
        </p>
        <p>类&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;型：<asp:Label ID="lblType" runat="server" Text="Label"></asp:Label>
        </p>
        <p>单&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;位：<asp:Label ID="lblPartment" runat="server" Text="Label"></asp:Label>
        </p>
        <p>当前状态：<asp:Label ID="lblState" runat="server" Text="Label"></asp:Label>
        </p>
        <p>电&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;话：<asp:Label ID="lblCellPhone" runat="server" Text="Label"></asp:Label>
        </p>
        <p> 备&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;注：<asp:Label ID="lblExtra" runat="server" Text="Label"></asp:Label>
        </p>
        <p>Email地址：<asp:Label ID="lblEmail" runat="server" Text="Label"></asp:Label>
        </p>
        <p>住&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;址：<asp:Label ID="lblLocation" runat="server" Text="Label"></asp:Label>
        </p>
        <asp:Button ID="btnMod" runat="server" Text="修改" OnClick="btnMod_Click" />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:LibrarySystemConnectionString %>" SelectCommand="SELECT * FROM [BaseInf]"></asp:SqlDataSource>
    </div>
</asp:Content>

