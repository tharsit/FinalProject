<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminEdit.aspx.cs" Inherits="FinalWebProject.Library.AdminEdit" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <style>
    body
        {
            background-color:#96B6C5;

                }
        table 
        {
            margin-left: auto;
            margin-right: auto;
           
        }

        th, td {
            border: none;
            padding: 8px;
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
     <table style="text-align: center;">
    <tr>
    <td><img src="..\image\images.png" style="width: 157px; height: 178px" /></td>
    <td style="text-align:center"><asp:Label ID="Label5" runat="server" ForeColor="#0066FF" Text="M.C.H Book Shop"
            Style="font-size: 50pt;"></asp:Label></td>
    <td><img src="..\image\images.png" style="width: 157px; height: 178px" /></td>
    </tr>
    </table>
        
        
        <hr />
    <div>
        <table style="margin-left: auto; margin-right: auto;">
            <tr>
                <td>
                    <asp:TextBox ID="txtSearch" runat="server" Height="46px" Width="572px"></asp:TextBox>
                </td>
                <td>
                    <asp:Button ID="btnSearch" runat="server" Text="Search" 
                        OnClick="btnSearch_Click" Height="51px" Width="118px" />
                </td>
            </tr>
        </table>
    </div>
    <div>
        <asp:GridView ID="AdminTable" runat="server" AutoGenerateColumns="False" DataKeyNames="Gmail"
            OnRowEditing="AdminTable_RowEditing" OnRowCancelingEdit="AdminTable_RowCancelingEdit"
            OnRowUpdating="AdminTable_RowUpdating" 
            OnSelectedIndexChanged="AdminTable_SelectedIndexChanged" CellPadding="4" 
            ForeColor="#333333" GridLines="None" Height="305px" Width="886px"
            >
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
            <asp:CommandField ShowEditButton="true" />
                <asp:BoundField DataField="Admin_ID" HeaderText="Admin_ID" ReadOnly="true" />
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
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
        <div>
            <asp:SqlDataSource ID="sqlAdminTable" runat="server" ConnectionString="<%$ ConnectionStrings:booktable %>"
                SelectCommand="SELECT * FROM [admindata]"></asp:SqlDataSource>
        </div>
        <div style="text-align: center;">
    <asp:Label ID="lblMessage" runat="server" ForeColor="#FF3300"></asp:Label>
    </div>
     <div style="text-align: right;">
    
         <asp:Button ID="Back" runat="server" Text="Back" Height="52px" 
             onclick="Back_Click" Width="178px" />
    </form>
</body>
</html>
