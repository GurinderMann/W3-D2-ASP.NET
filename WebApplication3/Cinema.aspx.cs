using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication3
{
    public partial class Cinema : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["IsLoggedIn"] == null || !(bool)Session["IsLoggedIn"])
            {
                Response.Redirect("Default.aspx");
            }

           
            if (Session["numberOfBookingsNord"] == null)
            {
                Session["numberOfBookingsNord"] = 0;
            }
            if (Session["numberOfBookingsSud"] == null)
            {
                Session["numberOfBookingsSud"] = 0;
            }
            if (Session["numberOfBookingsEst"] == null)
            {
                Session["numberOfBookingsEst"] = 0;
            }
            if (Session["reduceNord"] == null)
            {
                Session["reduceNord"] = 0;
            }
            if (Session["reduceSud"] == null) 
            {
                Session["reduceSud"]= 0;
            }
            if (Session["reduceEst"] == null) 
            {
                Session["reduceEst"] = 0;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string selectedValue = DropDownList1.SelectedItem.Value;
            bool checkbox = CheckBox1.Checked;

            if (selectedValue == "SalaNord")
            {
                int numberOfBookingsNord = (int)Session["numberOfBookingsNord"];
                int reduceNord = (int)Session["reduceNord"];

               

                if (checkbox)
                {
                    reduceNord++;
                }

                numberOfBookingsNord++;

                Session["numberOfBookingsNord"] = numberOfBookingsNord;
                Session["reduceNord"] = reduceNord;
            }
            else if (selectedValue == "SalaSud")
            {
                int numberOfBookingsSud = (int)Session["numberOfBookingsSud"];
                int reduceSud = (int)Session["reduceSud"];
                numberOfBookingsSud++;

                if (checkbox)
                {
                    reduceSud++;
                }
                Session["reduceSud"] = reduceSud; 
                Session["numberOfBookingsSud"] = numberOfBookingsSud;
            }
            else if (selectedValue == "SalaEst")
            {
                int numberOfBookingsEst = (int)Session["numberOfBookingsEst"];
                int reduceEst = (int)Session["reduceEst"];
                numberOfBookingsEst++;
                if (checkbox)
                {
                    reduceEst++;
                }

                Session["reduceEst"] = reduceEst;
                Session["numberOfBookingsEst"] = numberOfBookingsEst;
            }

            Label1.Text = $"Prenotazioni in sala nord: {(int)Session["numberOfBookingsNord"]}, di cui ridotti: {(int)Session["reduceNord"]}";
            Label2.Text = $"Prenotazioni in sala sud: {(int)Session["numberOfBookingsSud"]}, di cui ridotti. {(int)Session["reduceSud"]}";
            Label3.Text = $"Prenotazioni in sala est: {(int)Session["numberOfBookingsEst"]}, di cui ridotti. {(int)Session["reduceEst"]}";
        }
        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}
