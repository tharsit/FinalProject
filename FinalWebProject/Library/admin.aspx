<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="FinalWebProject.Library.admin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <style >
        body
        {
            background-color:#E0FFFF;

                }
        table 
        {
            
            border-collapse: collapse;
            width: 100%;
        }

        th, td {
            border: none;
            padding: 8px;
            text-align: center;
        }
    </style>
</head>
<body background="../image/lovepik-books-in-the-sky-background-image_400062995.jpg">

    <form id="form1" runat="server">
    
    <div style="text-align: center">
    
         <div style="text-align: center;">
                    <asp:Label ID="Label11" runat="server" ForeColor="#0066FF" Text="M.C.H Book Shop" style="font-size: 50pt;"></asp:Label>

                    <br />
    
    </div>
    <br />
    <br />
    <br />

    <div style="text-align: center">
        <table>
        

        <tr>
        <td><asp:Label ID="lblgmail" runat="server" Text="G-mail"></asp:Label></td>
        <td><asp:TextBox gmail="txtgmail" runat="server" Height="50px" Width="300px" 
                placeholder="Enter your G-mail" ID="txtgmail"></asp:TextBox></td>
        </tr>

        <tr>
        <td><asp:Label ID="lblpassword" runat="server" Text="Password"></asp:Label></td>
        <td><asp:TextBox password="txtpassword" runat="server" Height="50px" Width="300px" 
                TextMode="Password" ID="txtpassword"></asp:TextBox></td>
        </tr>
        </table>
    </div>
    <asp:Label ID="lblMsg" runat="server"></asp:Label>
    <br />
    <br />
    <br />
    <div style="text-align: center">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:bookdata %>" 
            SelectCommand="SELECT * FROM [admindata]" 
            onselecting="SqlDataSource1_Selecting" 
            ProviderName="<%$ ConnectionStrings:bookdata.ProviderName %>"></asp:SqlDataSource>
        <asp:Button ID="btnconfirm" runat="server" Text="Confirm" 
            OnClick="btnconfirm_Click" ForeColor="#0099FF" Height="50px" Width="200px" />
    </div>
    <br />
    <br />

        <div style="text-align: center">
            
            <asp:HyperLink ID="HyperLink1" runat="server" BackColor="#FF9999" 
                NavigateUrl="~/Library/Signup.aspx">Forget Password?</asp:HyperLink>
            
        </div>
    
    </form>
</body>
</html>

