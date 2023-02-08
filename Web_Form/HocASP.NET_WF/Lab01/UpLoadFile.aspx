<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UpLoadFile.aspx.cs" Inherits="Lab01.UpLoadFile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 600px;
            text-align:center;
        }
        .auto-style2 {
            width: 129px;
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table align="center" cellpadding="5" cellspacing="3" class="auto-style1">
                <tr>
                    <td class="auto-style1" colspan="2" style="color:blue; font-weight:bold" >MINH HỌA UPLOAD FILE</td>
                </tr>
                <tr>
                    <td class="auto-style2" style="color:blue; font-weight:bold">Chọn tập tin:</td>
                    <td>
                        <asp:FileUpload ID="FUpload" runat="server"  />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        <asp:Button ID="btnUpLoad" runat="server" Text="UpLoad" Font-Bold="true" OnClick="btnUpLoad_Click"/>
                    </td>
                </tr>
                <tr>            
                    <td colspan="2">
                        <asp:Label ID="lbthongbao" runat="server" ></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
