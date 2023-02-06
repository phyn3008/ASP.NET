using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab01
{
    public partial class DocBao : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string mr = "<b>Lợi ích của việc đọc báo</b><br/><ul>";
            mr += "<li>Mở rộng kiến thức</li>";
            mr += "<li>Cập nhật thông tin</li>";
            mr += "<li>Rèn luyện trí nhớ</li>";
            mr += "<li>Giải trí ít tốn kém</li>";
            mr += "<li>.....</li>";
            mr += "</ul>";

            //gửi về cho client
            lbDocBao.Text = mr;
        }
    }
}