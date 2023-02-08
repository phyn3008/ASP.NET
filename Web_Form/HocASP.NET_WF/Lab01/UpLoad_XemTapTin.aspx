<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UpLoad_XemTapTin.aspx.cs" Inherits="Lab01.UpLoad_XemTapTin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="margin: 0 auto ; width: 700px";  >
            <div style="text-align:center">
                <asp:LinkButton ID="lbtUpLoad" runat="server" OnClick="lbtUpLoad_Click">UpLoad Tập Tin</asp:LinkButton> &nbsp &nbsp
                    <asp:LinkButton ID="lbtXemTapTin" runat="server" OnClick="lbtXemTapTin_Click">Xem Các Tin UpLoad</asp:LinkButton> <br />
                    
            </div>
            
            <asp:MultiView ID="mtvXemTapTin_Load" runat="server">
                <asp:View ID="mvUpLoad" runat="server">
                    <div style="text-align:center; padding: 20px">
                      Chọn tập tin:  <asp:FileUpload ID="FileUpload1" runat="server" /> <br />
                    <asp:Button ID="btn" runat="server" Text="UpLoad" Font-Bold="true" OnClick="btn_Click" /> <br />
                     <asp:Label ID="lbThongBao" runat="server"></asp:Label>
                    </div>
                </asp:View>
                <asp:View ID="mvXemTapTin" runat="server">
                    <div style="padding:10px">
                        <asp:ListBox ID="lstTapTin" runat="server" Width="673px"></asp:ListBox>
                    </div>
                </asp:View>
            </asp:MultiView>
        </div>
    </form>
</body>
</html>
