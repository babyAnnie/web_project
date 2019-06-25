<%@ Page Title="" Language="C#" MasterPageFile="~/UserMasterPage.master" AutoEventWireup="true" CodeFile="MyBorrowHistory.aspx.cs" Inherits="MyBorrowHistory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphTitle" Runat="Server">
        我的借书历史
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphContent" Runat="Server">
    <div style="padding-left:30px; border-bottom:1px solid #ddd;">
        <h3>我的借书历史</h3>
    </div>
    <div>
        <div style="margin-left:50px">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" AllowPaging="True" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="book_name" HeaderText="书名" SortExpression="book_name" />
                    <asp:BoundField DataField="book_type" HeaderText="图书类型" SortExpression="book_type" />
                    <asp:BoundField DataField="book_autor" HeaderText="作者" SortExpression="book_autor" />
                    <asp:BoundField DataField="start_date" HeaderText="借阅时间" SortExpression="start_date" />
                    <asp:BoundField DataField="dead_date" HeaderText="最迟还书时间" SortExpression="dead_date" />
                </Columns>
                <EditRowStyle BackColor="#7C6F57" />
                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#E3EAEB" />
                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                <SortedAscendingHeaderStyle BackColor="#246B61" />
                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                <SortedDescendingHeaderStyle BackColor="#15524A" />
            </asp:GridView>
         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:LibrarySystemConnectionString %>" SelectCommand="SELECT [book_name], [book_type], [book_autor], [start_date], [dead_date] FROM [LibraryHistory] WHERE ([user_id] = @user_id)">
            <SelectParameters>
                <asp:CookieParameter CookieName="userid" Name="user_id" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        </div>
    </div>
</asp:Content>

