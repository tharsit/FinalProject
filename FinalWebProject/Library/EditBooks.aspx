<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditBooks.aspx.cs" Inherits="FinalWebProject.Library.EditBooks" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="text-align: center;">
        <asp:Label ID="Label11" runat="server" ForeColor="#0066FF" Text="M.C.H Book Shop"
            Style="font-size: 50pt;"></asp:Label>
        <br />
        <br />
    </div>
    <div>
        <table style="margin-left: auto; margin-right: auto;">
            <tr>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Height="28px" Width="500px"></asp:TextBox>
                </td>
                <td>
                    <asp:Button ID="btnSearch" runat="server" Text="Search" />
                </td>
            </tr>
        </table>
    </div>

    <div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="Book_ID" DataSourceID="sqlBookTable">
            <Columns>
                <asp:BoundField DataField="Book_ID" HeaderText="Book_ID" InsertVisible="False" 
                    ReadOnly="True" SortExpression="Book_ID" />
                <asp:BoundField DataField="BookName" HeaderText="BookName" 
                    SortExpression="BookName" />
                <asp:BoundField DataField="Category" HeaderText="Category" 
                    SortExpression="Category" />
                <asp:BoundField DataField="Author" HeaderText="Author" 
                    SortExpression="Author" />
                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="sqlBookTable" runat="server" ConnectionString="<%$ ConnectionStrings:booktable %>"
            SelectCommand="SELECT * FROM [Booktable]"></asp:SqlDataSource>
    </div>
    </form>
</body>
</html>
