using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab01
{
    public partial class Calendard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lbToday.Text = "Hôm nay là ngày: "+ DateTime.Now.ToString("dd/MM/yyyy");
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            string KQ = "Ngày sinh nhật của bạn là ngày: " + Calendar1.SelectedDate.ToString("dd/MM/yyyy") +"<br/>";
            if(Calendar1.SelectedDate < DateTime.Now)
            {
                int ngay = int.Parse(DateTime.Now.Day.ToString()) - int.Parse(Calendar1.SelectedDate.Day.ToString()); 
                KQ += "Sinh nhật của bạn đã qua " + ngay.ToString()+ "ngày";
            }
            else if (Calendar1.SelectedDate > DateTime.Now)
            {
                int ngay = int.Parse(Calendar1.SelectedDate.Day.ToString()) - int.Parse(DateTime.Now.Day.ToString());
                    
                KQ += "Còn " + ngay.ToString() + " là đến sinh nhật của bạn";
            }
            else if (Calendar1.SelectedDate == DateTime.Now)
            {
                KQ += "Chúc mừng sinh nhật của bạn";
            }
            //gửi về client
            lbThongBao.Text = KQ;
        }
    }
}