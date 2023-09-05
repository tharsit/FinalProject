<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditBooks.aspx.cs" Inherits="FinalWebProject.Library.EditBooks" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
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
                    <asp:TextBox ID="txtSearch" runat="server" Height="28px" Width="500px"></asp:TextBox>
                </td>
                <td>
                    <asp:Button ID="btnSearch" runat="server" Text="Search" 
                        onclick="btnSearch_Click" />
                </td>
            </tr>
        </table>
    </div>

    <div>
        <asp:GridView ID="BookTable" runat="server" AutoGenerateColumns="False"
    DataKeyNames="Book_ID" onrowediting="BookTable_RowEditing" 
    onrowcancelingedit="BookTable_RowCancelingEdit" 
    onrowupdating="BookTable_RowUpdating" 
    onselectedindexchanged="BookTable_SelectedIndexChanged" 
    >
    <Columns>
        <asp:CommandField ShowEditButton="True" />
        <asp:TemplateField HeaderText="Book_ID">
            <ItemTemplate>
                <asp:Label ID="lbl_BookID" runat="server" Text='<%#Eval("Book_ID") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="BookName">
            <ItemTemplate>
                <asp:Label ID="lbl_BookName" runat="server" Text='<%#Eval("BookName") %>'></asp:Label>
            </ItemTemplate>
            <EditItemTemplate>
                <asp:TextBox ID="txt_BookName" runat="server" Text='<%#Eval("BookName") %>'></asp:TextBox>
            </EditItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Category">
            <ItemTemplate>
                <asp:Label ID="lbl_Category" runat="server" Text='<%#Eval("Category") %>'></asp:Label>
            </ItemTemplate>
            <EditItemTemplate>
                <asp:TextBox ID="txt_Category" runat="server" Text='<%#Eval("Category") %>'></asp:TextBox>
            </EditItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Author">
            <ItemTemplate>
                <asp:Label ID="lbl_Author" runat="server" Text='<%#Eval("Author") %>'></asp:Label>
            </ItemTemplate>
            <EditItemTemplate>
                <asp:TextBox ID="txt_Author" runat="server" Text='<%#Eval("Author") %>'></asp:TextBox>
            </EditItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Price">
            <ItemTemplate>
                <asp:Label ID="lbl_Price" runat="server" Text='<%#Eval("Price") %>'></asp:Label>
            </ItemTemplate>
            <EditItemTemplate>
                <asp:TextBox ID="txt_Price" runat="server" Text='<%#Eval("Price") %>'></asp:TextBox>
            </EditItemTemplate>
        </asp:TemplateField>
    </Columns>
</asp:GridView>


        <asp:SqlDataSource ID="sqlBookTable" runat="server" ConnectionString="<%$ ConnectionStrings:booktable %>"
            SelectCommand="SELECT * FROM [Booktable]"
            UpdateCommand="UPDATE Booktable SET BookName = @BookName, Author = @Author WHERE Book_ID = @BookID">
            <UpdateParameters>
                <asp:Parameter Name="BookName" Type="String" />
                <asp:Parameter Name="Author" Type="String" />
                <asp:Parameter Name="BookID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
    <asp:Label ID="lblMessage" runat="server"></asp:Label>
    </form>
</body>
</html>
