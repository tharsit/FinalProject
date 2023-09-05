<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admindaya.aspx.cs" Inherits="FinalWebProject.Library.Admindaya" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body bgcolor="#ffcc99" 
    background="../image/lovepik-books-in-the-sky-background-image_400062995.jpg">
    <form id="form1" runat="server">
    <div style="text-align:center" >
          <asp:Label ID="Label4" runat="server" ForeColor="Black" Height="76px" style="font-size: 30pt;"
            Text="Data of MCH Admins" Width="500px" BackColor="Aqua" BorderStyle="Solid"></asp:Label>
    </div>
    <div style="text-align:center">
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:booktable %>" 
            SelectCommand="SELECT * FROM [admindata]" 
            onselecting="SqlDataSource1_Selecting"></asp:SqlDataSource>
    
    </div>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        BackColor="#CCCCCC" BorderColor="#999999" BorderWidth="3px" 
        CellPadding="4" DataKeyNames="Gmail" DataSourceID="SqlDataSource1" 
        ForeColor="Black" Width="1579px" BorderStyle="Solid" CellSpacing="2">
        <Columns>
            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" 
                ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="UserName" HeaderText="UserName" 
                SortExpression="UserName" />
            <asp:BoundField DataField="Gmail" HeaderText="Gmail" SortExpression="Gmail" 
                ReadOnly="True" />
            <asp:BoundField DataField="Password" HeaderText="Password" 
                SortExpression="Password" />
            <asp:BoundField DataField="Confirmpassword" HeaderText="Confirmpassword" 
                SortExpression="Confirmpassword" />
        </Columns>
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" 
            HorizontalAlign="Left" />
        <RowStyle BackColor="White" />
        <SelectedRowStyle BackColor="#000099" ForeColor="White" Font-Bold="True" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#808080" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
    </asp:GridView>
    <div style="text-align:right" >
    <asp:Button ID="Button1" runat="server" Height="50px" Text="Admin Login" 
                 Width="200px" BackColor="#99CCFF" ForeColor="Black" 
            onclick="Button1_Click"  />
    </div>
    </form>
</body>
</html>
