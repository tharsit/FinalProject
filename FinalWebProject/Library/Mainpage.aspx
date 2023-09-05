<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Mainpage.aspx.cs" Inherits="FinalWebProject.Library.Mainpage"
    EnableEventValidation="true" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <style>
        body
        {
            margin-left: auto;
            margin-right: auto;
            background-color: white;
        }
        
        
        
        table
        {   
            margin-left: auto;
            margin-right: auto;
            border-collapse: collapse;
            height: 94px;
            margin-top: 0px;
            width: 1178px;
        }
        
        th, td
        {
            border: 2px solid #dddddd;
            padding: 8px;
            text-align: left;
        }
        
        th
        {
            background-color: #33E9FF;
        }
        .style4
        {
            margin-left: auto;
            margin-right: auto;
            width: 1186px;
        }
        .style5
        {
            margin-left: auto;
            margin-right: auto;
            width: 546px;
        }
        .style6
        {
            margin-left: auto;
            margin-right: auto;
            width: 619px;
        }
        .style8
        {
            margin-left: auto;
            margin-right: auto;
            width: 616px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" clientidmode="Inherit">
    
    <table style="text-align: center;">
    <tr>
    <td><img src="..\image\images.png" style="width: 157px; height: 178px" /></td>
    <td style="text-align:center"><asp:Label ID="Label5" runat="server" ForeColor="#0066FF" Text="M.C.H Book Shop"
            Style="font-size: 50pt;"></asp:Label></td>
    <td><img src="..\image\images.png" style="width: 157px; height: 178px" /></td>
    </tr>
    </table>
        
        
        <hr />
       
       
            <table>
                <tr>
                    <td style="text-align: center" class="style4">
                      <h1>  <asp:Label ID="Label1" runat="server" ForeColor="Black" Text="Top Three Books in Myanmar"
                            Style="font-size: 20pt; text-align: center"></asp:Label></h1>
                    </td>
                </tr>
            </table>
            
            <table>
                <tr>
                    <td class="style8" style="text-align: center">
                      <h2>  <asp:Label ID="Label2" runat="server" ForeColor="Black" Text="Top 1" Style="text-align: center"></asp:Label></h2>
                    </td>
                    <td class="style6" style="text-align: center">
                       <h2>    <asp:Label ID="Label3" runat="server" ForeColor="Black" Text="Top 2" Style="text-align: center"></asp:Label></h2>
                    </td>
                    <td class="style5" style="text-align: center">
                     <h2>      <asp:Label ID="Label4" runat="server" ForeColor="Black" Text="Top 3" Style="text-align: center"></asp:Label></h2>
                    </td>
                </tr>
                <tr>
                    <td class="style8" style="text-align: center">
                        <img src="..\image\download.jpg" style="height: 195px; width: 134px" />
                    </td>
                    <td class="style6" style="text-align: center">
                        <img src="..\image\download (1).jpg" style="width: 131px; height: 181px" />
                    </td>
                    <td class="style5" style="text-align: center">
                        <img src="..\image\COB9676.jpg" style="width: 111px; height: 178px" />
                    </td>
                </tr>
            </table>
        
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
     
       
        
            <div style="text-align:center">
                <asp:TextBox ID="TextBox1" runat="server" Height="52px" OnTextChanged="TextBox1_TextChanged"
                Placeholder="Enter Book Name or Author Name to search" Style="text-align: center;
                margin-left: auto; margin-right: auto;" Width="861px" AutoPostBack="True"></asp:TextBox>
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Search" Width="309px" Style="text-align: center; font-size:20pt"
                Height="52px" />
        </div>
        <asp:GridView ID="GridView1" runat="server" DataKeyNames="Book_ID" AutoGenerateSelectButton="True"
            OnRowCommand="GridView1_RowCommand" SelectionMode="Single" Width="1184px" CellPadding="4"
            ForeColor="#333333" GridLines="None" EnablePersistedSelection="True">
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:booktable %>"
            SelectCommand="SELECT * FROM [Booktable]" OnSelecting="SqlDataSource1_Selecting">
        </asp:SqlDataSource>
        <div  style="text-align:center">
            <asp:Label ID="lblMessage" runat="server" style="font-size:20pt" ForeColor="Red"></asp:Label>
        </div>
        <table>
            <tr>
                <td style="text-align: left">
                    <asp:Button ID="btncart" runat="server" OnClick="btncart_Click" Text="Cart" Style="text-align: center; font-size:20pt"
                        Height="50px" Width="204px" />
                </td>
                <td style="text-align: right">
                    <asp:Button ID="Button1" runat="server" Height="50px" Text="Admin" Style="text-align: center; font-size:20pt"
                        Width="210px" OnClick="Button1_Click" />
                </td>
            </tr>
        </table>
     
   
    
    </form>
</body>
</html>
