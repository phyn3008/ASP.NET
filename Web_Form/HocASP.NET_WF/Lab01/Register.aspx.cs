using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab01
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void btnDangKy_Click(object sender, EventArgs e)
        {
            string thongtin = "<ul>";
            thongtin += "<li>Tên Đăng Nhập</li>" + txtTenDangNhap.Text;
            thongtin += "<li>Mật Khẩu</li>" + txtMatKhau.Text;
            thongtin += "<li>Mật Khẩu nhập lại</li>" + txtMatKhauNhapLai.Text;
            thongtin += "<li>Tuổi</li>" + txtTuoi.Text;
            thongtin += "<li>Email:</li>" + txtEmail.Text;
            thongtin += "<li>SĐT:</li>" + txtSĐT.Text;
            thongtin += "</ul>";

            lblThongTin.Text = thongtin;
        }
    }
}