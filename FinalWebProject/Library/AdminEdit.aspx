<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminEdit.aspx.cs" Inherits="FinalWebProject.Library.AdminEdit" %>

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
                    <asp:Button ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click" />
                </td>
            </tr>
        </table>
    </div>
    <div>
        <asp:GridView ID="AdminTable" runat="server" AutoGenerateColumns="False" DataKeyNames="Gmail"
            OnRowEditing="AdminTable_RowEditing" OnRowCancelingEdit="AdminTable_RowCancelingEdit"
            OnRowUpdating="AdminTable_RowUpdating" OnSelectedIndexChanged="AdminTable_SelectedIndexChanged"
            >
            <Columns>
            <asp:CommandField ShowEditButton="true" />
                <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="true" />
                <asp:TemplateField HeaderText="UserName">
                    <ItemTemplate>
                        <asp:Label ID="lbl_UserName" runat="server" Text='<%# Eval("UserName") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txt_UserName" runat="server" Text='<%# Bind("UserName") %>'></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Gmail">
                    <ItemTemplate>
                        <asp:Label ID="lbl_Gmail" runat="server" Text='<%# Eval("Gmail") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txt_Gmail" runat="server" Text='<%# Bind("Gmail") %>'></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Password">
                    <ItemTemplate>
                        <asp:Label ID="lbl_Password" runat="server" Text='<%# Eval("Password") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txt_Password" runat="server" Text='<%# Bind("Password") %>'></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Confirm Password">
                    <ItemTemplate>
                        <asp:Label ID="lbl_ConfirmPassword" runat="server" Text='<%# Eval("Confirmpassword") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txt_ConfirmPassword" runat="server" Text='<%# Bind("Confirmpassword") %>'></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>
                
            </Columns>
        </asp:GridView>
        <div>
            <asp:SqlDataSource ID="sqlAdminTable" runat="server" ConnectionString="<%$ ConnectionStrings:booktable %>"
                SelectCommand="SELECT * FROM [admindata]"></asp:SqlDataSource>
        </div>
        <asp:Label ID="lblMessage" runat="server"></asp:Label>
    </form>
</body>
</html>
