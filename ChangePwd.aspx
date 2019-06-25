<%@ Page Title="" Language="C#" MasterPageFile="~/UserMasterPage.master" AutoEventWireup="true" CodeFile="ChangePwd.aspx.cs" Inherits="ChangePwd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphTitle" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphContent" Runat="Server">
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
                <asp:Button ID="BtnChangePwd" runat="server" Text="确认修改" Font-Size="Large" Width="150px" Height="40px" OnClick="BtnChangePwd_Click" />
            </div>
            
        </div>
</asp:Content>

