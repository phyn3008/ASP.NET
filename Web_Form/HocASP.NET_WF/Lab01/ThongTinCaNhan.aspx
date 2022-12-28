<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ThongTinCaNhan.aspx.cs" Inherits="Lab01.ThongTinCaNhan" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 800px;
        }
        .auto-style2 {
            width: 219px;
        }
        .auto-style3 {
            width: 219px;
            height: 31px;
        }
        .auto-style4 {
            height: 31px;
        }
        .auto-style5 {
            width: 219px;
            height: 38px;
        }
        .auto-style6 {
            height: 38px;
        }
        .auto-style7 {
            height: 32px;
            text-align:center;
            font-weight:bold;
            font-size:50px;
            border-bottom: 2px solid black;
        }
        .auto-style8 {
            width: 219px;
            height: 32px;
        }
        .auto-style9 {
            height: 32px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table align="center" cellpadding="5" cellspacing="0" class="auto-style1">
            <tr >
                <td colspan="2" class="auto-style7">Thông Tin Cá Nhân</td>
            </tr>
            <tr>
                <td class="auto-style2">Họ Tên</td>
                <td>
                    <asp:TextBox ID="txtTen" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Giới Tính</td>
                <td class="auto-style4">
                    <asp:RadioButton ID="rdtNam" runat="server" Text="Nam" GroupName="gt" Checked="True" />
                    <asp:RadioButton ID="rdtNu" runat="server" Text="Nữ" GroupName="gt"/>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Ngoại Ngữ</td>
                <td>
                    <asp:CheckBoxList ID="chkl" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem>Anh Văn</asp:ListItem>
                        <asp:ListItem>Pháp Văn</asp:ListItem>
                        <asp:ListItem>Trung Văn</asp:ListItem>
                        <asp:ListItem>Nhật Văn</asp:ListItem>
                        <asp:ListItem>Hàn Văn</asp:ListItem>
                    </asp:CheckBoxList>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">Thu Nhập</td>
                <td class="auto-style9">
                    <asp:RadioButton ID="rdt10trieu" runat="server" Text="Dưới 10 triệu" GroupName="tn" Checked="True" />
                    <asp:RadioButton ID="rdt5_10trieu" runat="server" Text="5 đến 10 triệu" GroupName="tn"/>
                    <asp:RadioButton ID="rdttren10trieu" runat="server" Text="Trên 10 triệu" GroupName="tn"/>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">Trình độ</td>
                <td class="auto-style6">
                    <asp:RadioButtonList ID="RdtlTrinhDo" runat="server" RepeatDirection="Horizontal"> 
                        <asp:ListItem>Sau Đại Học</asp:ListItem>
                        <asp:ListItem>Đại Học</asp:ListItem>
                        <asp:ListItem Selected="True">Cao Đẳng</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Đăng Ký</td>
                <td>
                    <asp:Button ID="btnDangKy" runat="server" Text="Đăng Ký" Width="204px" OnClick="btnDangKy_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    <asp:Label ID="LbThongTin" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
