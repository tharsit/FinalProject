<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="bookdata.aspx.cs" Inherits="FinalWebProject.Library.bookdata" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        body
        {
            background-color:#F5CBA7;
                }
        table 
        {
            
            border-collapse: collapse;
            width: 100%;
        }

        th, td {
            border: none;
            padding: 8px;
            text-align: center;
        }
        .style1
        {
            width: 631px;
        }
        .style2
        {
            width: 648px;
        }
        .style3
        {
            width: 542px;
        }
        </style>
</head>
<body background="../image/lovepik-books-in-the-sky-background-image_400062995.jpg">
    <form id="form1" runat="server">
    <div>
        <table>

            <tr>
                <td style="text-align: center;"><asp:Label  runat="server" Text="Books Adding" style="font-size: 30pt;"
                Height="50px" Width="500px"></asp:Label></td>
            </tr>
            </table>
            </div>
            <br />
            <br />
            <div>
            <table>
            <tr>
                <td class="style3" style="text-align:right"><asp:Label ID="Label4"  runat="server" style="font-size: 18pt;" Text="BookName"></asp:Label> </td>
                 <td ><asp:TextBox ID="TextBox2" runat="server" style="font-size: 18pt;" Height="50px" Width="300px" 
                         ontextchanged="TextBox2_TextChanged"></asp:TextBox></td>   
            </tr>
             <tr>
                 <td class="style3"style="text-align:right"><asp:Label ID="Label3"  runat="server" style="font-size: 18pt;" Text="Category"></asp:Label></td>
                 <td>
                     <asp:DropDownList ID="DropDownList1" runat="server">
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
                  <td class="style3" style="text-align:right"><asp:Label ID="Label2"  runat="server" style="font-size: 18pt;" Text="Author"></asp:Label></td>
                 <td><asp:TextBox ID="TextBox3" runat="server" Height="50px" Width="300px"></asp:TextBox></td>
             </tr>

              <tr>
                 <td class="style3" style="text-align:right"><asp:Label ID="Label1"  runat="server" style="font-size: 18pt;" Text="Price"></asp:Label></td>
                 <td><asp:TextBox ID="TextBox4" runat="server" Height="50px" Width="300px"></asp:TextBox></td>
             </tr>
             
             </table>
    
    </div>
    <br />
    <br />
    <br />
    <div>
        <table>
        <tr>
            
             <td style="text-align: center;" class="style2">
                <asp:Button ID="Button2" runat="server" BackColor="#33CCFF" 
                    onclick="Button2_Click" Text="Add new Admin" Height="66px" />
            </td>
            <td style="text-align: center;" class="style1">
                <asp:Button ID="Button1" runat="server" BackColor="#33CCFF" 
                    onclick="Button1_Click" Text="Add new books" Height="65px" />
            </td>
             
        </tr>
        </table>
    </div>
   
    </form>
</body>
</html>
