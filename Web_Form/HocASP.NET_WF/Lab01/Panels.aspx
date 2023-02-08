<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Panels.aspx.cs" Inherits="Lab01.Panels" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .auto-style1 {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Panel ID="Panel1" runat="server" Height="200px" Width="1332px" GroupingText="Sở Thích và Nghề Nghiệp">
                <table align="center" cellpadding="5" cellspacing="3" class="auto-style1">
                    <tr>
                        <td style="width: 50%">
                            <asp:Panel ID="plST" runat="server" GroupingText="Sở Thích" Width="100%">
                                <asp:CheckBox ID="chk1" runat="server" Text="Xem Phim"/> <br />
                                <asp:CheckBox ID="chk2" runat="server" Text="Đá Bóng"/><br />
                                <asp:CheckBox ID="chk3" runat="server" Text="Kinh Doanh"/>
                            </asp:Panel>
                        </td>
                        <td>
                            <asp:Panel ID="plNN" height="200px" ScrollBars="Vertical" runat="server" GroupingText="Nghề Nghiệp">
                                <asp:BulletedList ID="blNgheNghiep" runat="server"></asp:BulletedList>
                            </asp:Panel>
                        </td>
                    </tr>
                </table>
                <asp:Panel ID="Panel4" runat="server">
                            <asp:CheckBox ID="chkST" AutoPostBack="true" Checked="true" runat="server" text="Hiển thị sở thích"/><br />
                            <asp:CheckBox ID="chkNN" AutoPostBack="true" Checked="true" runat="server" text="Hiển thị nghề nghiệp"/>
                </asp:Panel>
            </asp:Panel>
        </div>
    </form>
</body>
</html>
