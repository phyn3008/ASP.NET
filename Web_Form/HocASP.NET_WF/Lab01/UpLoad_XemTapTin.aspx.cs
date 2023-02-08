using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace Lab01
{
    public partial class UpLoad_XemTapTin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void lbtUpLoad_Click(object sender, EventArgs e)
        {
            mtvXemTapTin_Load.ActiveViewIndex = 0;
        }

        protected void lbtXemTapTin_Click(object sender, EventArgs e)
        {
            mtvXemTapTin_Load.ActiveViewIndex = 1;
        }

        protected void btn_Click(object sender, EventArgs e)
        {
            //bổ sung code xử lý upload tập tin
            //Kiểm tra coi có chọn file ko
            if (FileUpload1.HasFile) //Ngừi dùng có chọn tập tin cần upload
            {
                ///Lấy dg dẫn để lưu tập tin trên Server
                string path = Server.MapPath("~/UpLoad/") + FileUpload1.FileName;
                //Thực hiện upload
                FileUpload1.SaveAs(path);
                lbThongBao.Text = "Đã UpLoad thành công";
                //b2: Xuất ra tất cả các tập tin đã upload ra điều khiển lstFile trong View2
                //Tạo đối tượng thư mục với đường dẫn chỉ đinhj
                DirectoryInfo dir = new DirectoryInfo(Server.MapPath("~/UpLoad/"));
                //lấy danh sách các tập tin trong thư mục
                FileInfo[] fis = dir.GetFiles();
                //Xóa tất cả các mục trong list file
                lstTapTin.Items.Clear();
                //duyệt qua các tập tin và thêm vào các điều khiển list File trong view 2
                foreach (FileInfo f in fis)
                {
                    lstTapTin.Items.Add(f.Name);
                }
            }
            else
            {
                lbThongBao.Text = "Đã UpLoad Thất bại. Bạn cần chọn tập tin";
            }
        }
    }
}