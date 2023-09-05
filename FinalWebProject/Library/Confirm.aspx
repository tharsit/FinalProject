<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Confirm.aspx.cs" Inherits="FinalWebProject.Library.Confirm" EnableEventValidation="true" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <style>
     .containerClass {
  position: relative;
}

.btnConfirmClass {
  left: -50px;
}

.btnCancelClass {
  right: -500px;
}

        </style>
</head>
<body background="../image/lovepik-books-in-the-sky-background-image_400062995.jpg">

    <form id="form1" runat="server">
   <div style="height: 220px; width: 1038px;">
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
    <div>
        <asp:Label ID="lblconfirm" runat="server" ForeColor="#009933" 
            Text="Check your selected books are correct!"></asp:Label>
        <br />

        <table>
        <tr>
        <td> <asp:Label ID="lblname" runat="server" 
            Text="Name"></asp:Label></td>
            <td><asp:TextBox ID="TextBox2" runat="server" Height="50px" Width="300px" 
                        ></asp:TextBox></td>
        
        </tr>
         <tr>
        <td> <asp:Label ID="Label1" runat="server" 
            Text="Address"></asp:Label></td>
             <td><asp:TextBox ID="TextBox1" runat="server" Height="50px" Width="300px" 
                        ></asp:TextBox></td>
        
        </tr>

         <tr>
        <td> <asp:Label ID="Label2" runat="server" 
            Text="Phone Number"></asp:Label></td>
             <td><asp:TextBox ID="TextBox3" runat="server" Height="50px" Width="300px" 
                        ></asp:TextBox></td>
        
        </tr>

         <tr>
        <td > <asp:Label ID="Label3" runat="server" 
            Text="Total Amount"></asp:Label></td>
            <td>
                <asp:TextBox ID="txtTotal" runat="server" Height="50px" Width="300px" ReadOnly="True" 
                        ></asp:TextBox>
            </td>
        </tr>
        <tr>
        <td><asp:Label ID="Label4" runat="server" ForeColor="#009933"
            Text="Our system is allowed only with cash on delivery" ></asp:Label></td>
        </tr>
        </table>
    </div>
    <br />
    <br />
    <br />
    <br />
    <asp:Label ID="lblMsg" runat="server" ForeColor="#3366FF"></asp:Label>
    
   
    
      <div id="Div1" class="containerClass" runat="server">
    <asp:Button ID="btnConfirm" runat="server" BackColor="#009933"
        onclick="btnConfirm_Click" Text="Confirm" Height="53px"
        CssClass="btnConfirmClass" />
    <asp:Button ID="btnCancel" runat="server" BackColor="#cc0000"
        onclick="btnCancel_Click" Text="Cancel" Height="53px"
        CssClass="btnCancelClass" />
    </div>

    
    </div>
    </form>
</body>
</html>
