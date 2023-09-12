using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication3
{
    public partial class Default : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
        

         
            
                
                HttpCookie cookie = new HttpCookie("ASPNET_COOKIE");
                cookie.Values["email"] = email.Value;
                cookie.Values["password"] = password.Value;
                cookie.Expires = DateTime.Now.AddDays(10);
                Response.Cookies.Add(cookie);

           
                Session["IsLoggedIn"] = true;

          
                Response.Redirect("Cinema.aspx");
           
            
        }


    }
}