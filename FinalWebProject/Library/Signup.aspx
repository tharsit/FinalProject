<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="FinalWebProject.Library.Signup" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
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
<body >
    <form id="form1" runat="server">
   
           <table style="text-align: center;">
    <tr>
    <td><img src="..\image\images.png" style="width: 157px; height: 178px" /></td>
    <td style="text-align:center"><asp:Label ID="Label4" runat="server" ForeColor="#0066FF" Text="M.C.H Book Shop"
            Style="font-size: 50pt;"></asp:Label></td>
    <td><img src="..\image\images.png" style="width: 157px; height: 178px" /></td>
    </tr>
    </table>
        
        
        <hr />

    <div>
    <table>
           
        <tr>
        <td><asp:Label ID="Label1"  runat="server" Text="Username"></asp:Label></td>
        <td><asp:TextBox ID="TextBox1" runat="server" Height="50px" Width="300px" placeholder="Enter your name"></asp:TextBox></td>
        </tr>

        <tr>

        <td><asp:Label ID="Label2" runat="server" Text="G-mail"></asp:Label></td>

        <td><asp:TextBox ID="TextBox2"  runat="server" Height="50px" Width="300px" placeholder="Enter your G-mail"></asp:TextBox></td>
        </tr>

        <tr>
        <td><asp:Label ID="Label3"  runat="server" Text="Password"></asp:Label></td>
       <td><asp:TextBox ID="TextBoxpw" runat="server" Height="50px" Width="300px" TextMode="Password"></asp:TextBox></td>

        </tr>

        <tr>
        <td><asp:Label ID="Label5" password="lblpassword" runat="server" Text="Confirm Password"></asp:Label></td>
        <td><asp:TextBox ID="TextBoxcpw" password="txtpassword" runat="server" 
                Height="50px" Width="300px" TextMode="Password"></asp:TextBox>
            </td>
        </tr>

      


        </table>
        <div style="text-align:center">
        <asp:CompareValidator ID="CompareValidator1" runat="server" 
            ErrorMessage="Passwords do not match" ControlToCompare="TextBoxpw" 
            ControlToValidate="TextBoxcpw" ForeColor="Red"></asp:CompareValidator>
            
         </div>
          <br />
          <div style="text-align:center">
        <asp:Label ID="lblMsg" runat="server"></asp:Label>
          </div>
        <br />
        
        <div style="text-align: center">
        <asp:Button ID="Button1"  runat="server" Text="Sign up" 
            OnClick="btnconfirm_Click" ForeColor="Black" Height="50px" Width="200px" 
                BackColor="#3399FF" />
    </div>
    
    </div>
    </form>
</body>
</html>
