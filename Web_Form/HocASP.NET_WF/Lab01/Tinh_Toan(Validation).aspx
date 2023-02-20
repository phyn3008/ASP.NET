<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Tinh_Toan(Validation).aspx.cs" Inherits="Lab01.Tinh_Toan_Validation_" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 38px;
            width: 130px;
        }
        .auto-style2 {
            width: 366px;
        }
        .auto-style3 {
            height: 38px;
            width: 366px;
        }
        .auto-style4 {
            width: 575px;
        }
        .auto-style5 {
            width: 130px;
        }
        .auto-style6 {
            width: 130px;
            height: 43px;
        }
        .auto-style7 {
            width: 366px;
            height: 43px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table align="center" cellpadding="5" cellspacing="3" class="auto-style4">
                <tr>
                    <td colspan="2" >TÍNH TOÁN ĐƠN GIẢN</td>
                </tr>
                <tr>
                    <td class="auto-style6">Nhập số thứ 1:</td>
                    <td class="auto-style7">
                        <asp:TextBox ID="txt1" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rsvNum1" runat="server" ControlToValidate="txt1" ErrorMessage="Bạn chưa nhập số thứ 1" ForeColor="#CC0000">(*)</asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="cvNum1" runat="server" ControlToValidate="txt1" ErrorMessage="Số thứ 1 phải là kiểu số" ForeColor="Maroon" Operator="DataTypeCheck" Type="Double">(*)</asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Nhập số thứ 2:</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txt2" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rscNum2" runat="server" ControlToValidate="txt2" ErrorMessage="Bạn chưa nhập số thứ 2" ForeColor="#CC0000">(*)</asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="cvNum2" runat="server" ControlToValidate="txt2" ErrorMessage="Số thứ 2 phải là kiểu số" ForeColor="Maroon" Operator="DataTypeCheck" Type="Double">(*)</asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style2">
                        <asp:Button ID="btnTong" runat="server" Text="Tổng" OnClick="btnTong_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">Kết quả:</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtKetQua" ReadOnly="true" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style2">
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Maroon" ShowMessageBox="True" ShowSummary="False" />
                        <asp:Label ID="lbLoi" runat="server" Text="" ForeColor="Red"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
