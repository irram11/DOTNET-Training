using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ShoppingCart
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        

        protected void Button1_Click(object sender, EventArgs e)
        {
            List<Authentication_Result> objList = new List<Authentication_Result>();
            using (var entities = new ShoppingCartEntities())
            {
                objList = entities.Authentication(TextUserName.Text.Trim(), TextPassword.Text.Trim()).ToList<Authentication_Result>();
            }

            if (objList.Count == 0)
            {
                Session["UserId"] = 0;
             //   lblStatus.Text = "Invalid username or password";
              //  lblStatus.ForeColor = System.Drawing.Color.White;
            }
            else
            {
                Session["UserId"] = objList[0].Userid;
                Response.Redirect("Home.aspx");
            }

        }
    }
}




