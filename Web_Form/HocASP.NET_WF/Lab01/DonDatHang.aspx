<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DonDatHang.aspx.cs" Inherits="Lab01.DonDatHang" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 600px;
        }
        .auto-style2 {
            width: 261px;
            color:cadetblue;
        }
        .auto-style3 {
            width: 293px;
            height: 37px;
        }
        .auto-style4 {
            height: 37px;
        }
        .bor{
            border: 3px solid green;
        }
        .auto-style5 {
            text-align: center;
            font-weight:bold;
            font-size:30px;
            background-color: aquamarine;

        }
        .auto-style6 {
            height: 48px;
        }
        .auto-style7 {
            width: 293px;
            color: cadetblue;
        }
        #ddlBanh{
            margin-left: 30px;
        }
        #btnPhai{
            margin-left:100px;
            background-color:white;
            border:5px inherit blue;
        }
        #btnIn{
            margin-left:225px;
            background-color:aquamarine;
            border: 3px solid green;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table align="center" cellpadding="6" cellspacing="0" class="auto-style1">
                <tr>
                    <td class="auto-style5 bor" colspan="2">ĐƠN ĐẶT HÀNG&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">Khách hàng</td>
                    <td class="auto-style6">
                        <asp:TextBox ID="txtKhachHang" runat="server" Width="286px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Địa chỉ</td>
                    <td>
                        <asp:TextBox ID="txtDiaChi" runat="server" Width="286px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3" >Mã Số Thuế</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="txtMST" runat="server" Width="286px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7 bor" style="vertical-align:top">Chọn các loại bánh sau:<br /><br />
                        <asp:DropDownList ID="ddlBanh" runat="server" Height="35px" Width="224px">
                            <asp:ListItem>Hambuger</asp:ListItem>
                            <asp:ListItem>Bánh bò nướng</asp:ListItem>
                            <asp:ListItem>Patés chauds</asp:ListItem>
                            <asp:ListItem>Bánh Croissant bơ</asp:ListItem>
                        </asp:DropDownList>
                        <br /><br />
                        Số lượng:
                        <asp:TextBox ID="txtSL" runat="server" Width="91px"></asp:TextBox>
                &nbsp;(cái)<br /><br />
                        <asp:Label ID="lbLoi" runat="server"></asp:Label>
                        <br />
                        <asp:Button ID="btnPhai" runat="server" Text=">" Width="79px" OnClick="btnPhai_Click" />
                    </td>
                    <td class="auto-style2 bor">Danh sách bánh được đặt:<br />
                        <asp:ListBox ID="lstBanh" runat="server" Width="88%" Height="150px" SelectionMode="Multiple"></asp:ListBox> <%--selection Mode=multiple : đa chọn--%>
                        <asp:ImageButton ImageUrl="~/images/icon_thungrac.jpg" Width="20px" ID="btnxoa" runat="server" OnClick="btnxoa_Click" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Button ID="btnIn" runat="server" Text="IN HÓA ĐƠN" Width="150px" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Label ID="lbThongTin" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
