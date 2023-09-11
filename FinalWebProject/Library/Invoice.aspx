<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Invoice.aspx.cs" Inherits="FinalWebProject.Library.Invoice" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    
    <style type = "text/css">
        .html2canvas-container { 
    width: 3000px; 
    height: 3000px; 
}
    </style>
</head>
<body bgcolor="#96B6C5">
    <form id="form1" runat="server">
        <table style="text-align: center; margin-left: auto; margin-right: auto">
            <tr>
                <td>
                    <img src="..\image\images.png" style="width: 157px; height: 178px" />
                </td>
                <td style="text-align: center">
                    <asp:Label ID="Label5" runat="server" ForeColor="#0066FF" Text="M.C.H Book Shop"
                        Style="font-size: 50pt;"></asp:Label>
                </td>
                <td>
                    <img src="..\image\images.png" style="width: 157px; height: 178px" />
                </td>
            </tr>
        </table>
        <hr />
        <div style="text-align: center;">
            <table style="margin-left: auto; margin-right: auto;">
                <tr>
                    <td>
                        <asp:GridView ID="GridView1" runat="server">
                        </asp:GridView>
                        &nbsp;
                    </td>
                </tr>
            </table>
        </div>
        <div id="invoice" runat="server">
            <!-- Invoice content goes here -->
        </div>
        </input>
    &nbsp;</form>
</body>
</html>
