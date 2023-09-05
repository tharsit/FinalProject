<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Booktable.aspx.cs" Inherits="FinalWebProject.Library.Booktable" %>

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
            Text="Book-Table" Width="500px" BackColor="Aqua" BorderStyle="Solid"></asp:Label>
    </div>
    <div style="text-align:center">

    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:booktable %>" 
            SelectCommand="SELECT * FROM [Booktable]"></asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            CellPadding="3" DataKeyNames="Book_ID" DataSourceID="SqlDataSource1" 
            ForeColor="Black" GridLines="Vertical" BackColor="White" 
            BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" Width="1514px">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <Columns>
                <asp:BoundField DataField="Book_ID" HeaderText="Book_ID" InsertVisible="False" 
                    ReadOnly="True" SortExpression="Book_ID" />
                <asp:BoundField DataField="BookName" HeaderText="BookName" 
                    SortExpression="BookName" />
                <asp:BoundField DataField="Category" HeaderText="Category" 
                    SortExpression="Category" />
                <asp:BoundField DataField="Author" HeaderText="Author" 
                    SortExpression="Author" />
                <asp:BoundField DataField="Price" HeaderText="Price" 
                    SortExpression="Price" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
    
    </div>
    </form>
</body>
</html>
