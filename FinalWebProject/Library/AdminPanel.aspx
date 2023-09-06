<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminPanel.aspx.cs" Inherits="FinalWebProject.Library.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style >
        body
        {
            background-color:#96B6C5;

                }
        table 
        {
            margin-left: auto;
            margin-right: auto;
           
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
    
    <div >
    <h1 style = "text-align : center;"> Operations Related With Books</h1>
        <table style = "margin-left : auto ; margin-right : auto;">
            <tr>
                <td>
                    <asp:Button ID="btnAddBook" runat="server" Text="Add Books" Width="200px" 
                        onclick="btnAddBook_Click" Height="50px" />
                </td>
                <td>
                    <asp:Button ID="btnEditBook" runat="server" Text="Edit Books" 
                        style="margin-left: 0px" Width="200px" onclick="btnEditBook_Click" Height="50px" 
                       />
                </td>
            </tr>
            <tr>
                <td colspan = 2>
                    <asp:Button ID="btnDelete" runat="server" Text="Delete Books" Width="400px" 
                        onclick="btnDelete_Click" Height="50px" />
                </td>              
            </tr>
        </table>

    </div>
     <div >
    <h1 style = "text-align : center;"> Operations Related With Admins</h1>
        <table style = "margin-left : auto ; margin-right : auto;">
            <tr>
                <td>
                    <asp:Button ID="btnAddAdmins" runat="server" Text="Add Admins" Width="200px" 
                        onclick="btnAddAdmins_Click" Height="51px" />
                </td>
                <td>
                    <asp:Button ID="btnEditAdmins" runat="server" Text="Edit Admins" 
                        Width="201px" onclick="btnEditAdmins_Click" Height="50px" />
                </td>
            </tr>
            <tr>
                <td colspan = 2>
                    <asp:Button ID="btnDeleteAdmins" runat="server" Text="Delete Admins" 
                        Width="401px" onclick="btnDeleteAdmins_Click" Height="51px" />
                </td>              
            </tr>
        </table>

    </div>
    <br />
    <br />
    <div style="text-align:center">
        
        <asp:Button ID="btnBack" runat="server" Text="Back" Height="50px" 
            onclick="btnBack_Click" Width="200px" />
        
    </div>
    </form>
</body>
</html>
