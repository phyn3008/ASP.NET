<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DiaDanhDuLich.aspx.cs" Inherits="Lab01.DiaDanhDuLich" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 700px;
            text-align:center;
            font-weight:bold;
        }
        .auto-style2 {
            width: 178px;
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
                        <asp:ListBox ID="lstDiaDanh" Rows="6" runat="server" Width="237px" SelectionMode="Multiple">               
                        </asp:ListBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Tổng số địa danh</td>
                    <td>
                        <asp:Label ID="lbSoDD" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        <asp:Button ID="btnChon" runat="server" Text="Chọn" OnClick="btnChon_Click"/>
                    </td>
                </tr>
                <tr>
                    
                    <td colspan="2">
                        <asp:Label ID="lbDiaDanh" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
