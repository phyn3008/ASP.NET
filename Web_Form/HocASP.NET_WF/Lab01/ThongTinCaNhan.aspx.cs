using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab01
{
    public partial class ThongTinCaNhan : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnDangKy_Click(object sender, EventArgs e)
        {
            string kq = "";
            kq += "<h3>Thông tin về bạn</h3>";
            kq += "<ul>";
            //lấy thông tin từ client
            kq += "<li>Họ tên: " + txtTen.Text + "</li>";
            kq += rdtNam.Checked ? "<li>Giới Tính: Nam</li>" : "<li>Giới Tính: Nữ</li>";
            //tương tự cho các thuộc tính còn lại
            kq += "<li>Ngôn Ngữ: ";
            for(int i=0; i<chkl.Items.Count;i++)
            { 
                if (chkl.Items[i].Selected)
                {
                    kq+= chkl.Items[i].Text +", " ;
                }
            }
            kq += "</li>";
            //kq += "<li>Ngôn Ngữ: " + chkl.SelectedItem.Text + "</li>";
            if (rdt10trieu.Checked)
            {
                kq += "<li>Thu Nhập: Dưới 10 triệu</li>";
            }
            else if(rdt5_10trieu.Checked)
            {
                kq += "<li>Thu Nhập: Từ 5 đến 10 triệu</li>";
            }
            else
            {
                kq += "<li>Thu Nhập: Trên 10 triệu</li>";
            }


            //Lấy thông tin trình độ
            kq += "<li>Trình độ: " + RdtlTrinhDo.SelectedItem.Text + "</li>";
            kq += "</ul>";
            //gửi thông tin kết quả về client
            LbThongTin.Text = kq;
            
        }
    }
}