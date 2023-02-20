<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Lab04_QLNV_Lam_viec_voi_DataBase_.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>
        Trang chủ
    </title>
    <style>
        .tieude{
            text-align:center;
            font-size:30px;
            font-weight:bold;
        }
        .cn{
           padding:20px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="tieude">
            DEMO QUẢN LÝ NHÂN VIÊN
        </div>
        <hr />
        <div class="cn">
            <asp:Panel ID="Panel1" GroupingText="Chức Năng" Width="50%" runat="server">
                <asp:Image ID="Image1"  ImageUrl ="~/images/NhanVien.jpg" Width="50px" runat="server" />
                <asp:HyperLink ID="hplNhanVien" NavigateUrl="~/qlNhanVien.aspx" runat="server">Quản Lý Nhân Viên</asp:HyperLink>
                <br />
                <asp:Image ID="Image2" ImageUrl="~/images/PhongBan.png"  Width="50px" runat="server" />
                <asp:HyperLink ID="hplPhongBan" NavigateUrl="~/qlPhongBan.aspx" runat="server">Quản Lý Phòng Ban</asp:HyperLink>
            </asp:Panel>
        </div>
    </form>
</body>
</html>
