using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BaiTapLab_webform
{
    public partial class TrangCauChao : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {

            string qt = "<p>Chào bạn <b>" + txt1.Text + " </b></p>";
            qt += "Chào mừng bạn đến với ";
            txt1.Text = "";
            txt1.Focus();
            //trả về cho client
            lbl3.Text = qt;
        }
    }
}