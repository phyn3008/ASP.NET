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
            if (ktra <= 0)
            {
                lbLoi.Text = "Số lượng không thể nhỏ hơn 0";
                txtSL.Text = "";
                return;
            }
            lbLoi.Text = "";

            //XỬ LÝ THÊM NHẬP "-"
            //if (!IsPostBack)
            //{
            //    lstBanh.Items.Add(ddlBanh.SelectedItem.Text + "(" + txtSL.Text + ")");
            //}
            //foreach (ListItem x in lstBanh.Items)
            //{
            //    string[] u = x.Text.Split('(');
            //    if (u[0] == ddlBanh.SelectedItem.Text)
            //    {
            //        int ct = int.Parse(txtSL.Text) + int.Parse(u[1]);
            //        lstBanh.Items.Remove(x);
            //        lstBanh.Items.Add(ddlBanh.SelectedItem.Text + "(" + ct + ")");
            //        return;    
            //    }
                
            //}


            //Tìm kiếm để kiểm tra tồn taih
            int findIndex = Timkiem(ddlBanh.SelectedItem.Text);
            //Thêm tên bánh và số lượng đặt vào lstbanh
            if(findIndex ==-1) //Bánh cần thêm không tồn tại trong lstBanh\
            {
                lstBanh.Items.Add(ddlBanh.SelectedItem.Text + "(" + txtSL.Text + ")");
            }
            else
            {
                //cat chuoi
                string[] sttArr = lstBanh.Items[findIndex].Text.Split(new char[] { '(', ')' });
                // Cộng dồn
                int ct = int.Parse(txtSL.Text) + int.Parse(sttArr[1]);
                // Gán lại
                lstBanh.Items[findIndex].Text= ddlBanh.SelectedItem.Text + "(" + txtSL.Text + ")";
            }
            txtSL.Text = "";
        }

        private int Timkiem(string tenbanh)
        {
            int chiso = -1; //chi so tim kiem
            //duyệt các phân tử trong lstBanh
            for(int i=0; i < lstBanh.Items.Count; i++)
            {
                if (lstBanh.Items[i].Text.StartsWith(tenbanh))
                chiso = i;
            }
            return chiso;
        }

        protected void btnxoa_Click(object sender, ImageClickEventArgs e)
        {
            //duyệt các mục duoc chọn trong lstBanh và xóa(duyệt từ dưới lên)
            for(int i = lstBanh.Items.Count - 1; i >= 0; i--)
            {
                if (lstBanh.Items[i].Selected)
                {
                    //Xóa khỏi list
                    lstBanh.Items.RemoveAt(i);
                }
            }

        }

        protected void btnIn_Click(object sender, EventArgs e)
        {
            string HD="<p>HÓA ĐƠN ĐẶT HÀNG</p>";
            HD += "Khách Hàng: <i> " + txtKhachHang.Text + "/<i><br/>";
            HD += "Địa Chỉ:<i> " + txtDiaChi.Text + "</i><br/>";
            HD += "Mã Số Thuế:<i> " + txtMST.Text + "</i><br/>";
            HD += "Đặt các loại bánh sau: <br/>";
            HD += "<table border=1 width=100% align=center>" ;
            foreach(ListItem x in lstBanh.Items)
            {
                string Banh;
                Banh =  x.Text ;
                string[] mangchuoi = Banh.Split('(',')');
                HD += "<tr>";
                //foreach (string chuoidatach in mangchuoi)
                //{
                //    HD += "<td width=100px>" + chuoidatach + "</td>";
                //}
                HD += string.Format("<td>" + mangchuoi[0] + "</td>");
                HD += string.Format("<td>" + mangchuoi[1] + "</td>");
                HD += "<tr>";
            }
            HD += "</table>";
            // gửi về client
            lbThongTin.Text = HD;
        }
    }
}