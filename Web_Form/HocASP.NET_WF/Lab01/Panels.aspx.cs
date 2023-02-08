using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab01
{
    public partial class Panels : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                for(int i=1; i <= 50; i++)
                {
                    blNgheNghiep.Items.Add("Nghề Nghiệp Thứ " + i);
                }
            }
            else { //Khi trang đc load lại (PostBack)
            //Xử lí hiện thị ẩn/ hiện plSoThich, plNgheNghiep theo trạng thái của chkSoThich, chkNgheNghiep
                plST.Visible = chkST.Checked;
                plNN.Visible = chkNN.Checked;
            }

        }
    }
}