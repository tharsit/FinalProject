<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="FinalWebProject.Library.admin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <style >
        body
        {
            background-color:white;

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

    
        <table style="text-align: center;">
        

        <tr>
        <td style="text-align:right"><asp:Label ID="lblgmail" Style=" font-size:15pt" runat="server" Text="G-mail"></asp:Label></td>
        <td style="text-align:left"><asp:TextBox gmail="txtgmail" runat="server" Height="50px" Width="300px" Style=" font-size:15pt" 
                placeholder="Enter your G-mail" ID="txtgmail"></asp:TextBox></td>
        </tr>

        <tr>
        <td style="text-align:right"><asp:Label ID="lblpassword" Style=" font-size:15pt" runat="server" Text="Password"></asp:Label></td>
        <td style="text-align:left"><asp:TextBox password="txtpassword" runat="server" Height="50px" Width="300px" Style=" font-size:15pt" 
                TextMode="Password" ID="txtpassword"></asp:TextBox></td>
        </tr>
        </table>
    <div style="text-align: center">
    <asp:Label ID="lblMsg" Style=" font-size:15pt" runat="server"></asp:Label>
    </div>
    
    <div style="text-align: center">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:bookdata %>" 
            SelectCommand="SELECT * FROM [admindata]" 
            onselecting="SqlDataSource1_Selecting" 
            ProviderName="<%$ ConnectionStrings:bookdata.ProviderName %>"></asp:SqlDataSource>
        <asp:Button ID="btnconfirm" runat="server" Text="Confirm" Style=" font-size:15pt"
            OnClick="btnconfirm_Click" ForeColor="#0099FF" Height="50px" Width="200px" />
    </div>
    <br />
    <br />

        <div style="text-align: center">
            
            <asp:HyperLink ID="HyperLink1" runat="server" BackColor="#FF9999" Style=" font-size:15pt"
                NavigateUrl="~/Library/Signup.aspx">Forget Password?</asp:HyperLink>
            
        </div>
    
    </form>
</body>
</html>

