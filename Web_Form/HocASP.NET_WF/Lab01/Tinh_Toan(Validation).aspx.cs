using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab01
{
    public partial class Tinh_Toan_Validation_ : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnTong_Click(object sender, EventArgs e)
        {
            //Lấy số 1 và số 2 từ client

            //ĐÂY LÀ VIỆC CỦA CLIENT
            ////bổ sung code kiểm tra hợp lệ
            //string loi = "";
            //if (txt1.Text == "")
            //{
            //    loi += "Chưa nhập số thứ 1";
            //}
            //if (txt2.Text == "")
            //{
            //    loi += "<br>Chưa nhập số thứ 2";
            //}

            //if(loi.Length > 0)
            //{
            //    lbLoi.Text = loi;
            //    return;
            //}

            //lbLoi.Text = "";

            double x = double.Parse(txt1.Text);
            double y = double.Parse(txt2.Text);
            //tính kết quả
            double kq = x + y;
            //gửi kết quả về client
            txtKetQua.Text = kq.ToString();
        }
    }
}