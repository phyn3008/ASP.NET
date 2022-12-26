<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Lab01.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Chào Mừng Bạn Đến Với Khóa Học ASP.NET</h2>

           <%-- <%--yeu cau vao server--%>
            <%
                //string str = "Hôm nay là ngày: " + DateTime.Today.ToString("dd/MM/yyyy");
            %>

            <%--Xuat code ra khỏi server--%>
           <%-- <%= str %>--%>

            <asp:Label ID="lbThongBao" runat="server" Text=""></asp:Label>
        </div>
    </form>
</body>
</html>
