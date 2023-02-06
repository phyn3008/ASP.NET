<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DiaDanhDuLich.aspx.cs" Inherits="BaiTapLab_webform.DiaDanhDuLich" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 700px;
            text-align:center;
        }
        .auto-style2 {
            width: 139px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table align="center" cellpadding="5" cellspacing="3" class="auto-style1">
                <tr>
                    <td class="auto-style1" colspan="2" >ĐỊA DANH DU LỊCH</td>
                </tr>
                <tr>
                    <td class="auto-style2">Địa danh du lịch</td>
                    <td>
                        <asp:ListBox ID="lstdiaDanh" runat="server" Width="237px"></asp:ListBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Tổng số địa danh</td>
                    <td>
                        <asp:Label ID="Label1" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        <asp:Button ID="btnChon" runat="server" Text="Button" />
                    </td>
                </tr>
                <tr>
                    
                    <td colspan="2">
                        <asp:Label ID="Label2" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
