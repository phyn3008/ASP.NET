using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab01
{
    public partial class DonDatHang : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnPhai_Click(object sender, EventArgs e)
        {
            //Thêm tên bánh và số lượng:
            //Bị rỗng
            if (txtSL.Text == "")
            {
                lbLoi.Text = "Chưa nhập số lượng";
                txtSL.Text = "";
                return;
            }
            int n;
            if (!int.TryParse(txtSL.Text, out n))
            {
                lbLoi.Text = "Sai font xin nhập lại";
                txtSL.Text = "";
                return;
            }
            int ktra = int.Parse(txtSL.Text);
            if (ktra < 0)
            {
                lbLoi.Text = "Số lượng không thể nhỏ hơn 0";
                txtSL.Text = "";
                return;
            }
            lbLoi.Text = "";

            //XỬ LÝ THÊM NHẬP "-"
            lstBanh.Items.Add(ddlBanh.SelectedItem.Text + "(" + txtSL.Text + ")");
            txtSL.Text = "";
        }

        protected void btnxoa_Click(object sender, ImageClickEventArgs e)
        {
            //duyệt các mục duoc chọn trong lstBanh và xóa
            for(int i = lstBanh.Items.Count - 1; i >= 0; i--)
            {
                if (lstBanh.Items[i].Selected)
                {
                    //Xóa khỏi list
                    lstBanh.Items.RemoveAt(i);
                }
            }

        }
    }
}