<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TrangCauChao.aspx.cs" Inherits="Lab01.TrangCauChao" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 700px;
        }
        .auto-style2 {
            width: 316px;
        }
        .auto-style3 {
            width: 145px;
        }
        .auto-style4 {
            height: 50px;
            text-align:center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table align="center" cellpadding="5" cellspacing="7" class="auto-style1">
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label2" runat="server">Nhập Họ Và Tên</asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txt1" runat="server" Width="245px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:LinkButton ID="LinkButton1" OnClientClick="return confirm('Bạn có muốn thay đổi không')" runat="server" OnClick="LinkButton1_Click" >Thay đổi câu chào</asp:LinkButton>
                    </td>
                </tr>
                <tr>
                    <td colspan="3" class="auto-style4" >
                        <asp:Label ID="lbl3" runat="server" Text="Chào Bạn"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
