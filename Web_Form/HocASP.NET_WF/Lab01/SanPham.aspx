<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SanPham.aspx.cs" Inherits="Lab01.SanPham" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 1000px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table align="center" cellpadding="5" cellspacing="3" class="auto-style1">
                <tr>
                    <td colspan="3">Chọn Các Sản Phẩm Bạn Thích</td>
                    
                </tr>
                <tr>
                    <td>Danh Sách Sản Phẩm</td>
                    <td>Số Lượng</td>
                    <td>Sản Phẩm Được Chọn</td>
                </tr>
                <tr>
                    <td>
                        <asp:CheckBox ID="CheckBox1" runat="server" text="Kẹo Trái Cây Thập Cẩm"/><br />
                        <asp:CheckBox ID="CheckBox2" runat="server" text="Kẹo Nho"/><br />
                        <asp:CheckBox ID="CheckBox3" runat="server" text="Kẹo Táo"/><br />
                        <asp:CheckBox ID="CheckBox4" runat="server" text="Socola Táo"/><br />
                        <asp:CheckBox ID="CheckBox5" runat="server" text="Kẹo Socola Đậu Phộng"/><br />
                        <asp:CheckBox ID="CheckBox6" runat="server" text="Kẹo Coffe Sữa"/><br />
                        <asp:CheckBox ID="CheckBox7" runat="server" text="Socola Thập Cẩm Có Nhân"/><br />
                    </td>
                    <td>
                        <asp:Label ID="lbSLSP" runat="server" Text="0 sản phẩm"></asp:Label>
                    </td>
                    <td>
                        <asp:ListBox ID="ListBox1" runat="server" EnableViewState="False" Width="244px"></asp:ListBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="3">
                        <asp:Button ID="btnChonLai" runat="server" Text="Bắt đầu chọn lại" font-bold="true"/>
                    </td>  
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
