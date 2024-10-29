using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Security;

namespace Smart_RestRoom
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
              
                if (User.Identity.IsAuthenticated)
                {
                   
                    FormsAuthentication.SignOut();
                    Response.Redirect("~/Dashboard.aspx", true);
                    return;
                }

                
                if (Session["UserUsername"] != null)
                {
                    System.Diagnostics.Debug.WriteLine("Session UserUsername is: " + Session["UserUsername"]);
                }
                else
                {
                    System.Diagnostics.Debug.WriteLine("No session found.");
                }
            }
        }


        protected void BtnLogin_Click(object sender, EventArgs e)
        {
            string username = usernameTextBox.Text.Trim();
            string password = passwordTextBox.Text.Trim();

            if (IsValidUser(username, password))
            {
                
                Session["UserUsername"] = username;

              
                FormsAuthentication.SetAuthCookie(username, false);

                
                string returnUrl = Request.QueryString["ReturnUrl"];
                if (!String.IsNullOrEmpty(returnUrl))
                {
                    Response.Redirect(returnUrl);
                }
                else
                {
                   
                    Response.Redirect("~/Home/Usagemonitor.aspx");
                }
            }
            else
            {
                errorMessage.Text = "Invalid username or password";
            }
        }

        private bool IsValidUser(string username, string password)
        {
            
            string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["smart_restroom"].ConnectionString;

            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                conn.Open();
                string query = "SELECT COUNT(1) FROM janitor WHERE username = @Username AND password = @Password";

                SqlCommand cmd = new SqlCommand(query, conn);
                cmd.Parameters.AddWithValue("@Username", username);
                cmd.Parameters.AddWithValue("@Password", password);

                int count = Convert.ToInt32(cmd.ExecuteScalar());

                return count == 1;
            }
        }
    }
}