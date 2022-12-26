<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TinhToan.aspx.cs" Inherits="Lab01.TinhToan" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 500px;
        }
        .auto-style2 {
            width: 183px;
        }
        .auto-style3 {
            width: 203px;
            font-size: x-large;
        }
    </style>
</head>
<body>
    <%--Muốn chạy mặc định trên file nào vào file đó chuột phải chọn Set as Start Page--%>
    <form id="form1" runat="server">
        <div>

            <table align="center" cellpadding="5" cellspacing="0" class="auto-style1">
                <tr>
                    <td class="auto-style3" colspan="2" style="text-align:center"><strong>MINH HỌA TÍNH TOÁN ĐƠN GIẢN</strong> </td>
                </tr>
                <tr>
                    <td class="auto-style1">Nhập số thứ 1</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txt1" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Nhập số thứ 2</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txt2" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="btCong" runat="server" Text="Cộng" Height="26px" OnClick="btCong_Click" />
                        <asp:Button ID="btTru" runat="server" Text="Trừ" OnClick="btTru_Click" />
                    </td>
                    <td class="auto-style3">
                        <asp:Button ID="btNhan" runat="server" Text="Nhân" OnClick="btNhan_Click" />
                        <asp:Button ID="btChia" runat="server" Text="Chia" OnClick="btChia_Click" />
                        <asp:Button ID="btnClear" runat="server" Text="Clear" OnClick="btnClear_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Kết quả</td>
                    <td>
                        <asp:TextBox ID="TxtKQ" runat="server" ReadOnly="true"></asp:TextBox>
                    </td>
                </tr>
            </table>

        </div>
    </form>
</body>
</html>
