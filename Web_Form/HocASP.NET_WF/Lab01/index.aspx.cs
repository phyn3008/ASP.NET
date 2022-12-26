using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab01
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string str = "Hôm nay là ngày: " + DateTime.Today.ToString("dd/MM/yyyy");

            //Gửi về client
            lbThongBao.Text = str;
        }
    }
}