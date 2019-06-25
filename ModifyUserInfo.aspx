<%@ Page Title="" Language="C#" MasterPageFile="~/UserMasterPage.master" AutoEventWireup="true" CodeFile="ModifyUserInfo.aspx.cs" Inherits="ModifyUserInfo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphTitle" Runat="Server">
    修改个人信息
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphContent" Runat="Server">
    <div style="padding-left:30px; border-bottom:1px solid #ddd;">
        <h3>修改个人信息</h3>
    </div>
    <div style="margin-left:300px">

        <p>电&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 话：<asp:TextBox ID="txtCellPhone" runat="server"></asp:TextBox>
        </p>
        <p> 备&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;注：<asp:TextBox ID="txtExtra" runat="server"></asp:TextBox>
        </p>
        <p>Email地址:
            <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
        </p>
        <p>住&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;址：<asp:TextBox ID="txtLocation" runat="server"></asp:TextBox>
        </p>
        <asp:Button ID="btnSave" runat="server" Text="保存" OnClick="btnSave_Click"  />
        &nbsp;
        <asp:Button ID="btnCancel" runat="server" Text="取消" OnClick="btnCancel_Click" />
    </div>
</asp:Content>

