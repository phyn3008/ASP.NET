using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab01
{
    public partial class UpLoadFile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnUpLoad_Click(object sender, EventArgs e)
        {
            //bổ sung code xử lý upload tập tin
            //Kiểm tra coi có chọn file ko
            if(FUpload.HasFile) //Ngừi dùng có chọn tập tin cần upload
            {
                // Khai báo đg dẫn ( dấu "~" là về file gôc giá trị tuyệt đối)
                string path = Server.MapPath("~/UpLoad/") + FUpload.FileName;
                //Thực hiện upload
                FUpload.SaveAs(path);
                lbthongbao.Text = "Đã UpLoad thành công";
            }
            else
            {
                lbthongbao.Text = "Đã UpLoad Thất bại. Bạn cần chọn tập tin";
            }
        }
    }
}