<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DocBao.aspx.cs" Inherits="Lab01.DocBao" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 500px;
        }
        #img2{
            float:right;
            width: 200px;
            height: 150px;
        }
        #hpl5{
            float:left;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table align="center" cellpadding="5" cellspacing="3" class="auto-style1">
                <tr>
                    <td>
                        <asp:Image ID="img2" ImageUrl="~/images/img_DocBao.jpg" runat="server" />
                        <asp:Label ID="lbDocBao" runat="server" Text="Đọc Báo"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:HyperLink ID="hpl1" NavigateUrl="https://tuoitre.vn" Target="_blank" runat="server">Tuổi Trẻ</asp:HyperLink>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:HyperLink ID="hpl2" NavigateUrl="https://vnexpress.net" Target="_blank" runat="server">Tin Nhanh</asp:HyperLink>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:HyperLink ID="hpl3" NavigateUrl="https://thanhnien.vn" Target="_blank" runat="server">Thanh Niên</asp:HyperLink>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:HyperLink ID="hpl4" NavigateUrl="https://nld.com.vn" Target="_blank" runat="server">Người Lao Động</asp:HyperLink>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
