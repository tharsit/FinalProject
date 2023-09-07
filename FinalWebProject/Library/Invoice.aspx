<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Invoice.aspx.cs" Inherits="FinalWebProject.Library.Invoice" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/2.5.1/jspdf.umd.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/html2canvas/1.4.1/html2canvas.min.js"></script>
    <script>
        window.jsPDF = window.jspdf.jsPDF;
        function generatePDF() {
            html2canvas(document.getElementById('invoice')).then(function (canvas) {
                var imageData = canvas.toDataURL("image/png");
                var doc = new jsPDF( 'cm','px','a4');
                var width = doc.internal.pageSize.getWidth();
                var height = doc.internal.pageSize.getHeight();

                // Get the current date
                var currentDate = new Date();
                var day = String(currentDate.getDate()).padStart(2, "0");
                var month = String(currentDate.getMonth() + 1).padStart(2, "0");
                var year = String(currentDate.getFullYear()).slice(-2);
                var formattedDate = day + "/" + month + "/" + year;

                // Get the current time
                var hours = String(currentDate.getHours()).padStart(2, "0");
                var minutes = String(currentDate.getMinutes()).padStart(2, "0");
                var seconds = String(currentDate.getSeconds()).padStart(2, "0");
                var formattedTime = hours + ":" + minutes + ":" + seconds;
                var modifiedFilename = "Invoice-" + formattedDate + "-" + formattedTime + ".pdf";

                doc.addImage(imageData, "PNG", 0, 0, width + 500, height);
                doc.save(modifiedFilename);
            });
        }
    </script>
    <style type = "text/css">
        .html2canvas-container { 
    width: 3000px; 
    height: 3000px; 
}
    </style>
</head>
<body bgcolor="#96B6C5">
    <form id="form1" runat="server">
        <table style="text-align: center; margin-left: auto; margin-right: auto">
            <tr>
                <td>
                    <img src="..\image\images.png" style="width: 157px; height: 178px" />
                </td>
                <td style="text-align: center">
                    <asp:Label ID="Label5" runat="server" ForeColor="#0066FF" Text="M.C.H Book Shop"
                        Style="font-size: 50pt;"></asp:Label>
                </td>
                <td>
                    <img src="..\image\images.png" style="width: 157px; height: 178px" />
                </td>
            </tr>
        </table>
        <hr />
        <div style="text-align: center;">
            <table style="margin-left: auto; margin-right: auto;">
                <tr>
                    <td>
                        &nbsp;
                    </td>
                </tr>
            </table>
        </div>
        <div id="invoice" runat="server">
            <!-- Invoice content goes here -->
        </div>
        <input type="button" value="Create PDF" onclick="generatePDF()"></input>
    </form>
</body>
</html>
