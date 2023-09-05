<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminPanel.aspx.cs" Inherits="FinalWebProject.Library.WebForm1" %>

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
        <hr />
    </div>
    <div >
    <h1 style = "text-align : center;"> Operations Related With Books</h1>
        <table style = "margin-left : auto ; margin-right : auto;">
            <tr>
                <td>
                    <asp:Button ID="btnAddBook" runat="server" Text="Add Books" Width="150px" 
                        onclick="btnAddBook_Click" />
                </td>
                <td>
                    <asp:Button ID="btnEditBook" runat="server" Text="Edit Books" 
                        style="margin-left: 0px" Width="150px" 
                       />
                </td>
            </tr>
            <tr>
                <td colspan = 2>
                    <asp:Button ID="btnDelete" runat="server" Text="Delete Books" Width="300px" />
                </td>              
            </tr>
        </table>

    </div>
     <div >
    <h1 style = "text-align : center;"> Operations Related With Admins</h1>
        <table style = "margin-left : auto ; margin-right : auto;">
            <tr>
                <td>
                    <asp:Button ID="btnAddAdmins" runat="server" Text="Add Admins" Width="150px" />
                </td>
                <td>
                    <asp:Button ID="btnEditAdmins" runat="server" Text="Edit Admins" 
                        Width="150px" />
                </td>
            </tr>
            <tr>
                <td colspan = 2>
                    <asp:Button ID="btnDeleteAdmins" runat="server" Text="Delete Admins" 
                        Width="300px" />
                </td>              
            </tr>
        </table>

    </div>
    </form>
</body>
</html>
