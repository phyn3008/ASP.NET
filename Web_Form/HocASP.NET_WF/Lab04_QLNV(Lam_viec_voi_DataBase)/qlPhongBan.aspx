<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="qlPhongBan.aspx.cs" Inherits="Lab04_QLNV_Lam_viec_voi_DataBase_.qlPhongBan" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2> QUẢN LÝ PHÒNG BAN</h2>
            <hr />
            <div>
                <asp:Panel ID="Panel1" GroupingText="Phòng Ban"  runat="server">
                    <div>
                        <asp:DropDownList ID="ddlPhong" AutoPostBack="true" runat="server"></asp:DropDownList>
                    </div>
                </asp:Panel>
            </div>
        </div>

    <asp:SqlDataSource runat="server" ID="dsphong" ConnectionString="<%$ ConnectionStrings:QLNhanVienConnectionString %>"
        SelectCommand="SELECT * FROM [PhongBan]"></asp:SqlDataSource>
       
        <asp:GridView ID="gvNhanVien" runat="server" Width="100%" DataSourceID="dsnvtheoPhong" AutoGenerateColumns="False" DataKeyNames="manv" CellPadding="4" ForeColor="#333333" GridLines="None" AllowPaging="True" PageSize="5"><%-- tự sản sinh cột: lấy field lm tên cột lun--%>
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField HeaderText="Mã Nhân Viên" DataField="MaNV" ReadOnly="true"/>
                        <asp:BoundField HeaderText="Họ Nhân Viên" DataField="HoNV" />
                        <asp:BoundField HeaderText="Tên Nhân Viên" DataField="TenNV" />
                        <asp:CheckBoxField HeaderText="Phái" DataField="Phai" />
                        <asp:BoundField HeaderText="Ngày Sinh" DataField="NgaySinh" DataFormatString="{0:dd/MM/yyyy}"/>
                        <asp:BoundField HeaderText="Nơi Sinh" DataField="NoiSinh" />
                        <asp:BoundField HeaderText="Mã Phòng" DataField="MaPhong" />
                        <asp:CommandField ShowDeleteButton="true" ButtonType="Image" />
                    </Columns>
            <EmptyDataTemplate>
                <h2>Không có nhân viên</h2>
            </EmptyDataTemplate>
                <EditRowStyle BackColor="#7C6F57" />
                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#E3EAEB" />
                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                <SortedAscendingHeaderStyle BackColor="#246B61" />
                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                <SortedDescendingHeaderStyle BackColor="#15524A" />
            </asp:GridView>
        <asp:SqlDataSource ID="dsnvtheoPhong" runat="server" ConnectionString="<%$ ConnectionStrings:QLNhanVienConnectionString %>" DeleteCommand="DELETE FROM [NhanVien] WHERE [MaNV] = @MaNV" InsertCommand="INSERT INTO [NhanVien] ([HoNV], [TenNV], [Phai], [NgaySinh], [NoiSinh], [MaPhong]) VALUES (@HoNV, @TenNV, @Phai, @NgaySinh, @NoiSinh, @MaPhong)" SelectCommand="SELECT * FROM [NhanVien] WHERE ([MaPhong] = @MaPhong)" UpdateCommand="UPDATE [NhanVien] SET [HoNV] = @HoNV, [TenNV] = @TenNV, [Phai] = @Phai, [NgaySinh] = @NgaySinh, [NoiSinh] = @NoiSinh, [MaPhong] = @MaPhong WHERE [MaNV] = @MaNV">
           <DeleteParameters>
               <asp:Parameter Name="MaNV" Type="Int32" />
           </DeleteParameters>
           <InsertParameters>
               <asp:Parameter Name="HoNV" Type="String" />
               <asp:Parameter Name="TenNV" Type="String" />
               <asp:Parameter Name="Phai" Type="Boolean" />
               <asp:Parameter DbType="Date" Name="NgaySinh" />
               <asp:Parameter Name="NoiSinh" Type="String" />
               <asp:Parameter Name="MaPhong" Type="Int32" />
           </InsertParameters>
           <SelectParameters>
               <asp:ControlParameter ControlID="ddlPhong" Name="MaPhong" PropertyName="SelectedValue" Type="Int32" />
           </SelectParameters>
           <UpdateParameters>
               <asp:Parameter Name="HoNV" Type="String" />
               <asp:Parameter Name="TenNV" Type="String" />
               <asp:Parameter Name="Phai" Type="Boolean" />
               <asp:Parameter DbType="Date" Name="NgaySinh" />
               <asp:Parameter Name="NoiSinh" Type="String" />
               <asp:Parameter Name="MaPhong" Type="Int32" />
               <asp:Parameter Name="MaNV" Type="Int32" />
           </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
