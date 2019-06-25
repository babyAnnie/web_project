<%@ Page Title="" Language="C#" MasterPageFile="~/UserMasterPage.master" AutoEventWireup="true" CodeFile="UserPage.aspx.cs" Inherits="UserPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphTitle" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphContent" Runat="Server">
    <div style="text-align:center;margin-top:10%" >
        <asp:Label ID="Label1" runat="server" Text="欢迎来到个人中心..." Font-Size="XX-Large"></asp:Label>
    </div>
</asp:Content>

