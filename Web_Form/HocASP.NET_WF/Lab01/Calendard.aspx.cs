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
            //Giờ phút giây thôi ==> sd Today, giờ phú giây ==> sd now
            if (!IsPostBack)
            lbToday.Text = "Hôm nay là ngày: "+ DateTime.Today.ToString("dd/MM/yyyy");
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            DateTime ngaysinhnhat = Calendar1.SelectedDate;
            string KQ = "Ngày sinh nhật của bạn là ngày: " + Calendar1.SelectedDate.ToString("dd/MM/yyyy") +"<br/>";
            if(Calendar1.SelectedDate < DateTime.Today)
            {
                KQ += string.Format("Sinh nhật của bạn đã qua {0} ngày", DateTime.Today.Subtract(ngaysinhnhat).Days);
                //int ngay = int.Parse(DateTime.Now.Day.ToString()) - int.Parse(Calendar1.SelectedDate.Day.ToString()); 
                //KQ += "Sinh nhật của bạn đã qua " + ngay.ToString()+ "ngày";
            }
            else if (Calendar1.SelectedDate > DateTime.Today)
            {
                KQ += string.Format("Còn {0} là đến sinh nhật của bạn", ngaysinhnhat.Subtract(DateTime.Today).Days);
                //int ngay = int.Parse(Calendar1.SelectedDate.Day.ToString()) - int.Parse(DateTime.Now.Day.ToString());                    
                //KQ += "Còn " + ngay.ToString() + " là đến sinh nhật của bạn";
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