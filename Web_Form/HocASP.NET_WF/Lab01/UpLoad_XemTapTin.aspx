<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UpLoad_XemTapTin.aspx.cs" Inherits="Lab01.UpLoad_XemTapTin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:MultiView ID="MultiView1" runat="server">
                <asp:View ID="View1" runat="server">
                    <asp:LinkButton ID="lkbUpLoad" runat="server">LinkButton</asp:LinkButton>
                    <asp:LinkButton ID="lkbXemTapTin" runat="server">LinkButton</asp:LinkButton>
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                    <asp:Button ID="btn" runat="server" Text="UpLoad" Font-Bold="true" />
                </asp:View>
                <asp:View ID="View2" runat="server">
                    <asp:ListBox ID="lstTapTin" runat="server"></asp:ListBox>
                </asp:View>
            </asp:MultiView>
        </div>
    </form>
</body>
</html>
