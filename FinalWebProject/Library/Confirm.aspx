<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Confirm.aspx.cs" Inherits="FinalWebProject.Library.Confirm" EnableEventValidation="true" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <style>
         table
         {
              margin-left: auto;
            margin-right: auto;
             }
     



        </style>
</head>
<body bgcolor=#96B6C5>

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


       
   <div style="text-align:center">
   
        
   
        <asp:GridView ID="GridView2" runat="server" CellPadding="4" ForeColor="#333333" 
            GridLines="None" Width="1032px">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
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
    </div>
    <br />
    <br />
    <div style="text-align:center">
        <asp:Label ID="lblconfirm" runat="server"  Style="font-size:15pt"
            Text="Check your selected books are correct!"></asp:Label>
            </div>
             <div style="text-align:center">
            <asp:Label ID="Label4" runat="server"  Style="font-size:15pt"
            Text="Our system is allowed only with cash on delivery" ></asp:Label>
            </div>
    
        <br />
        
         

        <table>
        <tr>
        <td> <asp:Label ID="lblname" runat="server"  Style=" font-size:15pt"
            Text="Name"></asp:Label></td>
            <td><asp:TextBox ID="TextBox2" runat="server" Height="50px" Width="300px"  Style=" font-size:15pt"
                        ></asp:TextBox></td>
        
        </tr>
         <tr>
        <td> <asp:Label ID="Label1" runat="server"  Style=" font-size:15pt"
            Text="Address"></asp:Label></td>
             <td ><asp:TextBox ID="TextBox1" runat="server" Height="50px" Width="300px"  Style=" font-size:15pt"
                        ></asp:TextBox></td>
        
        </tr>

         <tr>
        <td> <asp:Label ID="Label2" runat="server"  Style=" font-size:15pt"
            Text="Phone Number"></asp:Label>&nbsp;,</td>
             <td><asp:TextBox ID="TextBox3" runat="server" Height="50px" Width="300px"  Style=" font-size:15pt"
                        ></asp:TextBox></td>
        
        </tr>

         <tr>
        <td > <asp:Label ID="Label3" runat="server"  Style=" font-size:15pt"
            Text="Total Amount"></asp:Label></td>
            <td>
                <asp:TextBox ID="txtTotal" runat="server" Height="62px" Width="300px" 
                    ReadOnly="True"  Style=" font-size:15pt"
                        ></asp:TextBox>
            </td>
        </tr>
        </table>
        
    
        <br />
             <div style="text-align:center">
                <asp:Label ID="lblMsg" runat="server" Style="font-size:18pt" ForeColor="Black"></asp:Label>
            </div>
              
              <br />
            <table>
            <tr>
                <td style="text-align:left">
                <asp:Button ID="btnConfirm" runat="server"  Style=" font-size:15pt"
        onclick="btnConfirm_Click" Text="Confirm" Height="53px"  />
        </td>
                <td style="text-align:right"> 
                    <asp:Button ID="btnCancel" runat="server"  Style=" font-size:15pt"
        onclick="btnCancel_Click" Text="Cancel" Height="53px" ForeColor="Red"
         /></td>
            </tr>
            </table>  
    </form>
</body>
</html>
