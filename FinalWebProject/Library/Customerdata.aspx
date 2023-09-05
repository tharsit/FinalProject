<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Customerdata.aspx.cs" Inherits="FinalWebProject.Library.Customerdata" %>

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

        th, td {
            border: none;
            padding: 8px;
            text-align: center;
        }
    </style>
</head>
<body  bgcolor=white>
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
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        CellPadding="4" DataKeyNames="ID" DataSourceID="SqlDataSource1" 
        ForeColor="#333333" GridLines="None" Width="1111px">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" 
                SortExpression="ID" />
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="Address" HeaderText="Address" 
                SortExpression="Address" />
            <asp:BoundField DataField="Phone_Number" HeaderText="Phone_Number" 
                SortExpression="Phone_Number" />
            <asp:BoundField DataField="Book_ID" HeaderText="Book_ID" 
                SortExpression="Book_ID" />
            <asp:BoundField DataField="Quantity" HeaderText="Quantity" 
                SortExpression="Quantity" />
            <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
            <asp:BoundField DataField="Order_ID" HeaderText="Order_ID" 
                SortExpression="Order_ID" />
        </Columns>
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:booktable %>" 
        SelectCommand="SELECT * FROM [CustomerData]"></asp:SqlDataSource>
    </form>
</body>
</html>
