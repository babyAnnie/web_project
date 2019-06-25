<%@ Page Title="" Language="C#" MasterPageFile="~/UserMasterPage.master" AutoEventWireup="true" CodeFile="SearchBook.aspx.cs" Inherits="SearchBook" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphTitle" Runat="Server">
    查询书籍
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphContent" Runat="Server">
    <div>
        <div style="text-align:center;">
            <h3>查询书籍</h3>
        </div>
        <div style="text-align:center;">
            <asp:Label ID="Label1" runat="server" Text="请输入要检索的书籍名称："></asp:Label>
            <br />
            <asp:TextBox ID="txtBookName" runat="server"></asp:TextBox>
            <asp:Button ID="btnSearch" runat="server" Text="搜索" OnClick="btnSearch_Click" />

            <br />
            <br />
            <div style="margin-left:38%;">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="book_name" HeaderText="book_name" SortExpression="book_name" />
                        <asp:BoundField DataField="book_type" HeaderText="book_type" SortExpression="book_type" />
                        <asp:BoundField DataField="book_autor" HeaderText="book_autor" SortExpression="book_autor" />
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:LibrarySystemConnectionString %>" SelectCommand="SELECT * FROM [LibraryBook] WHERE ([book_name] = @book_name)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="txtBookName" Name="book_name" PropertyName="Text" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </div>



        </div>

    </div>
</asp:Content>

