<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admindaya.aspx.cs" Inherits="FinalWebProject.Library.Admindaya" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
     body
        {
            background-color:#96B6C5;

                }
        table 
        {
            margin-left: auto;
            margin-right: auto;
           
        }
        </style>
</head>
<body bgcolor=white>
  
    <form id="form2" runat="server">
    
   <table style="text-align: center;">
    <tr>
    <td><img src="..\image\images.png" style="width: 157px; height: 178px" /></td>
    <td style="text-align:center"><asp:Label ID="Label5" runat="server" ForeColor="#0066FF" Text="M.C.H Book Shop"
            Style="font-size: 50pt;"></asp:Label></td>
    <td><img src="..\image\images.png" style="width: 157px; height: 178px" /></td>
    </tr>
    </table>
        
        
        <hr />

    <div style="text-align:center" >
        <h2> 
            <asp:Label ID="Label4" runat="server" ForeColor="Black" Height="76px"
            Text="This is Admin Informatons" Width="500px" ></asp:Label></h2> 
    </div>
    <div style="text-align:center">
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:booktable %>" 
            SelectCommand="SELECT * FROM [admindata]" 
            onselecting="SqlDataSource1_Selecting"></asp:SqlDataSource>
    
    </div>
     <div style="text-align:center">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        CellPadding="4" DataKeyNames="Gmail" DataSourceID="SqlDataSource1" 
        ForeColor="#333333" Width="1579px" GridLines="None">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="Admin_ID" HeaderText="Admin_ID" InsertVisible="False" 
                ReadOnly="True" SortExpression="Admin_ID" />
            <asp:BoundField DataField="UserName" HeaderText="UserName" 
                SortExpression="UserName" />
            <asp:BoundField DataField="Gmail" HeaderText="Gmail" SortExpression="Gmail" 
                ReadOnly="True" />
            <asp:BoundField DataField="Password" HeaderText="Password" 
                SortExpression="Password" />
            <asp:BoundField DataField="Confirmpassword" HeaderText="Confirmpassword" 
                SortExpression="Confirmpassword" />
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" 
            HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" ForeColor="#333333" Font-Bold="True" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>
    </div>
    <div style="text-align:right" >
    <asp:Button ID="Button1" runat="server" Height="50px" Text="Back" 
                 Width="200px" BackColor="#99CCFF" ForeColor="Black" 
            onclick="Button1_Click"  />
    </div>
    </form>
</body>
</html>
