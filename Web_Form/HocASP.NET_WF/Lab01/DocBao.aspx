<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DocBao.aspx.cs" Inherits="BaiTapLab_webform.DocBao" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 500px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table align="center" cellpadding="5" cellspacing="3" class="auto-style1">
                <tr>
                    <td>
                        <asp:HyperLink ID="HyperLink5" runat="server">Đọc Báo</asp:HyperLink>
                        <asp:Image ID="Image2" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:HyperLink ID="hpl1" runat="server">Tuổi Trẻ</asp:HyperLink>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:HyperLink ID="hpl2" runat="server">Tin Nhanh</asp:HyperLink>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:HyperLink ID="hpl3" runat="server">Thanh Niên</asp:HyperLink>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:HyperLink ID="HyperLink4" runat="server">Người Lao Động</asp:HyperLink>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
