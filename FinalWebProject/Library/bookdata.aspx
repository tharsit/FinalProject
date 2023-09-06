<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="bookdata.aspx.cs" Inherits="FinalWebProject.Library.bookdata" %>

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

        th, td {
            border: none;
            padding: 8px;
            text-align: center;
        }
        .style1
        {
            margin-left: auto;
            margin-right: auto;
            width: 631px;
        }
        .style3
        {
            margin-left: auto;
            margin-right: auto;
            width: 542px;
        }
        .style4
        {
            margin-left: auto;
            margin-right: auto;
            width: 542px;
            height: 56px;
        }
        .style5
        {
            margin-left: auto;
            margin-right: auto;
            height: 56px;
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
            <table>
            <tr>
                <td class="style3" style="text-align:center"><asp:Label ID="Label4"  runat="server" style="font-size: 18pt;" Text="BookName"></asp:Label> </td>
                 <td ><asp:TextBox ID="TextBox2" runat="server" style="font-size: 18pt;" Height="50px" Width="300px" 
                         ontextchanged="TextBox2_TextChanged"></asp:TextBox></td>   
            </tr>
             <tr>
                 <td class="style4"style="text-align:center"><asp:Label ID="Label3"  runat="server" style="font-size: 18pt;" Text="Category"></asp:Label></td>
                 <td class="style5">
                     <asp:DropDownList ID="DropDownList1" style="font-size:15pt" runat="server" 
                         Width="292px">
                         <asp:ListItem Value="Fantascy">Fantascy</asp:ListItem>
                         <asp:ListItem Value="Fiction">Fiction</asp:ListItem>
                         <asp:ListItem Value="Non-Fiction">Non-Fiction</asp:ListItem>
                         <asp:ListItem Value="Novel">Novel</asp:ListItem>
                         <asp:ListItem Value="Story">Story</asp:ListItem>
                         <asp:ListItem Value="Poem">Poem</asp:ListItem>
                         <asp:ListItem Value="History">History</asp:ListItem>
                         <asp:ListItem Value="Romance">Romance</asp:ListItem>
                         <asp:ListItem Value="Biography">Biography</asp:ListItem>
                         <asp:ListItem Value="Documentory">Documentory</asp:ListItem>
                         <asp:ListItem Value="Honor">Honor</asp:ListItem>
                         <asp:ListItem Value="History">History</asp:ListItem>
                         <asp:ListItem Value="Fairy-Tale">Fairy-Tale</asp:ListItem>
                         <asp:ListItem Value="Mathematics">Mathematics</asp:ListItem>
                         <asp:ListItem Value="Science">Science</asp:ListItem>
                         <asp:ListItem Value="Comedy">Comedy</asp:ListItem>
                         <asp:ListItem>Translate</asp:ListItem>
                         <asp:ListItem>Cartoon</asp:ListItem>
                         <asp:ListItem>Business</asp:ListItem>
                         <asp:ListItem>Knowledge</asp:ListItem>
                     </asp:DropDownList>
                 </td>
             </tr>
              <tr>
                  <td class="style3" style="text-align:center"><asp:Label ID="Label2"  runat="server" style="font-size: 18pt;" Text="Author"></asp:Label></td>
                 <td><asp:TextBox ID="TextBox3" runat="server" Height="50px" Width="300px"></asp:TextBox></td>
             </tr>

              <tr>
                 <td class="style3" style="text-align:center"><asp:Label ID="Label1"  runat="server" style="font-size: 18pt;" Text="Price"></asp:Label></td>
                 <td><asp:TextBox ID="TextBox4" runat="server" Height="50px" Width="300px"></asp:TextBox></td>
             </tr>
             
             </table>
    
    </div>
    <br />
    <br />
    <br />
    <div>
        <table style="text-align: center;">
        <tr>
            
             
            <td style="text-align: center;">
                <asp:Button ID="Button1" runat="server" 
                    onclick="Button1_Click" Text="Add new books" Height="65px" />
            </td>
             
        </tr>
        </table>
    </div>
   
    </form>
</body>
</html>
