using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab01
{
    public partial class DiaDanhDuLich : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) /*Kiểm tra trang được nạp lần đầu*/ {
                //Khởi tạo dữ liệu cho lstDiaDanh
            lstDiaDanh.Items.Add("Nha Trang");
            lstDiaDanh.Items.Add("Phú Quốc");
            lstDiaDanh.Items.Add("Vịnh Hạ Long");
            lstDiaDanh.Items.Add("Phong Nha-Kẽ Bàng");
            lstDiaDanh.Items.Add("Vũng Tàu");
                //Thống kê số địa danh có trong lstDiaDanh
                lbSoDD.Text = lstDiaDanh.Items.Count.ToString();
            }
        }

        protected void btnChon_Click(object sender, EventArgs e)
        {
            string kq="Các địa điểm du lịch mà bạn chọn: <ul>";
            //lay cac dia danh ma nguoi dung chon
            foreach(ListItem x in lstDiaDanh.Items)
            {
                if (x.Selected)
                {
                    kq += "<li>" + x.Text + "</li>";
                }
            }
            kq += "</ul>";

            //gửi kết quả về client
            lbDiaDanh.Text = kq;

        }
    }
}