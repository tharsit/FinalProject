<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="pwrecover.aspx.cs" Inherits="FinalWebProject.Library.pwrecover" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <style>
        body {
            background-color: #96B6C5;
        }

        table 
        {
             margin-left: auto;
            margin-right: auto;
           
        }

        th,
        td {
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
        <div style="text-align: center">
            <table>
                <tr>
                    <td>
                        <asp:Label ID="lgmail" runat="server" Text="Gmail"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtgmail" runat="server" Height="50px" Width="300px" placeholder="Enter your Gmail"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblnewpw" runat="server" Text="New Password"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox runat="server" Height="50px" Width="300px" TextMode="Password" placeholder="Enter your New Password" ID="newpw"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblcnewpw" runat="server" Text="Confirm New Password"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox runat="server" Height="50px" Width="300px" TextMode="Password" placeholder="Confirm your New Password" ID="cnewpw"></asp:TextBox>
                    </td>
                </tr>
            </table>
        </div>
        <div style="text-align:center">
            <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Passwords do not match" ControlToCompare="newpw" ControlToValidate="cnewpw" ForeColor="Red"></asp:CompareValidator>
        </div>
        <p>
            
        <div style="text-align:center">
        <asp:Label ID="lblMessage" runat="server" style = "text-align:center"></asp:Label>
        <br />
            <asp:Button ID="btnconfirm" runat="server" Text="Confirm" ForeColor="#0099FF" Height="50px" Width="200px" OnClick="btnconfirm_Click" />
        </div>
        </p>
    </form>
</body>
</html>
