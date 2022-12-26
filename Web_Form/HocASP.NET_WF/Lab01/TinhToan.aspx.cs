using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab01
{
    public partial class TinhToan : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btCong_Click(object sender, EventArgs e)
        {
            //Lấy giá trị số thứ 1 và số thứ 2 từ client chuyển sang số
            double x = double.Parse(txt1.Text);
            double y = double.Parse(txt2.Text);
            //Tính tổng 2 số
            double Kq = x + y;
            //Gửi kết quả về client
            TxtKQ.Text = "Tổng hai số =" + Kq.ToString();
        }

        protected void btTru_Click(object sender, EventArgs e)
        {
            //Lấy giá trị số thứ 1 và số thứ 2 từ client chuyển sang số
            double x = double.Parse(txt1.Text);
            double y = double.Parse(txt2.Text);
            //Tính hiệu 2 số
            double Kq = x - y;
            //Gửi kết quả về client
            TxtKQ.Text = "Hiệu hai số =" + Kq.ToString();
        }

        protected void btNhan_Click(object sender, EventArgs e)
        {
            //Lấy giá trị số thứ 1 và số thứ 2 từ client chuyển sang số
            double x = double.Parse(txt1.Text);
            double y = double.Parse(txt2.Text);
            //Tính tích 2 số
            double Kq = x * y;
            //Gửi kết quả về client
            TxtKQ.Text = "Tích hai số =" + Kq.ToString();
        }

        protected void btChia_Click(object sender, EventArgs e)
        {
            //Lấy giá trị số thứ 1 và số thứ 2 từ client chuyển sang số
            double x = double.Parse(txt1.Text);
            double y = double.Parse(txt2.Text);
            //Tính thương 2 số
            double Kq = x / y;
            //Gửi kết quả về client
            TxtKQ.Text = "Thương hai số =" + Kq.ToString();
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            txt1.Text = "";
            txt2.Text = "";
            TxtKQ.Text = "";
            txt1.Focus();
        }
    }
}