<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Lab01.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 666px;
        }
        .auto-style2 {
            height: 42px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table align="center" cellpadding="5" cellspacing="3" class="auto-style1">
                <tr>
                    <td colspan="2">Đăng Ký Thành Viên</td>
                </tr>
                <tr>
                    <td>Tên Đăng Nhập:</td>
                    <td>
                        <asp:TextBox ID="txtTenDangNhap" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rsvTenDangNhap" runat="server" ErrorMessage="Tên đăng nhập phải có" Text="(*)" ControlToValidate="txtDangNhap" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Mật Khẩu:</td>

                    <td>
                        <asp:TextBox ID="txtMatKhau" TextMode="Password" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rsvMatKhau" runat="server" ErrorMessage="Chưa Mật Khẩu" Text="(*)" ControlToValidate="txtMatKhau" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Mât Khẩu nhập lại:</td>
                    <td>
                        <asp:TextBox ID="txtMatKhauNhapLai" TextMode="Password" runat="server"></asp:TextBox>
                        <asp:CompareValidator ID="cvMKNL" runat="server" ErrorMessage="Mật khẩu và mật khẩu xác nhận ko trùng khớp" Text="(*)" ForeColor="Red" ControlToValidate="txtMatKhauNhapLai" ControlToCompare="txtMatKhau"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td>Tuổi: &gt;18tui</td>
                    <td>
                        <asp:TextBox ID="txtTuoi" runat="server"></asp:TextBox>
                        <asp:CompareValidator ID="cvTuoi" runat="server" ErrorMessage="Bạn chưa đủ 18 tủi" Text="(*)" ForeColor="Red" Operator="GreaterThanEqual" Type="Integer" ValueToCompare="18"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td>Tuổi: từ 18 đến 70</td>
                    <td>
                        <asp:TextBox ID="txtTuoiRANGE" runat="server"></asp:TextBox>
                        <asp:RangeValidator ID="rvTuoi" runat="server" ErrorMessage="Tuổi chỉ nằm trong khoảng từ 18 đến 70" ForeColor="Maroon" MaximumValue="70" MinimumValue="18" Type="Integer">(*)</asp:RangeValidator>
                        </td>
                </tr>
                <tr>
                    <td>Email:</td>
                    <td>
                        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email không hợp lệ" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        </td>
                </tr>
                <tr>
                    <td>SĐT:</td>
                    <td>
                        <asp:TextBox ID="txtSĐT" runat="server" Width="264px"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="revSĐT" runat="server" ControlToValidate="txtSĐT" ErrorMessage="SĐT không hợp lệ" ValidationExpression="0\d{9}">(*)</asp:RegularExpressionValidator>
                        </td>
                </tr>
                <tr>
                    <td class="auto-style2"></td>
                    <td class="auto-style2">
                        <asp:Button ID="btnDangKy" runat="server" Text="Đăng Ký" OnClick="btnDangKy_Click" />
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Label ID="lblThongTin" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
