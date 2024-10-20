using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Smart_RestRoom.ViewPage
{
    public partial class Usagemonitor : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
           
                if (Session["UserUsername"] != null)
                {
        
                    System.Diagnostics.Debug.WriteLine("Session UserUsername is: " + Session["UserUsername"]);
                }
                else
                {
 
                    System.Diagnostics.Debug.WriteLine("No session found. Redirecting to Login.aspx.");
                    Response.Redirect("~/Login.aspx");
                }
            }
        }


    }
}