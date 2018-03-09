using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ShoppingCart
{
    public partial class ShoppingCart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Convert.ToInt32(Session["UserId"]) == 0)
            {
                btnLogin.Visible = true;
                btnLogout.Visible = false;
            }
            else
            {
                btnLogin.Visible = false;
                btnLogout.Visible = true;
            }
            GetAllProducts();
        }
        public void GetAllProducts()
        {

            if (Convert.ToInt32(Session["UserId"]) == 0)
            {
                EmptyCart.Visible = true;
                CartItems.Visible = false;
            }
            else
            {
                EmptyCart.Visible = false;
                CartItems.Visible = true;


                List<CartItem_Result> objList = new List<CartItem_Result>();
                using (var entities = new ShoppingCartEntities())
                {
                    objList = entities.CartItem(Convert.ToInt32(Session["UserId"])).ToList<CartItem_Result>();
                }
                if (objList.Count != 0)
                {
                    EmptyCart.Visible = false;
                    CartItems.Visible = true;

                    cartlist.DataSource = objList;
                    cartlist.DataBind();
                }
                else
                {
                    EmptyCart.Visible = true;
                    CartItems.Visible = false;
                }
            }


        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Session["UserId"] = 0;
            Response.Redirect("Home.aspx");
        }

        protected void btnAddtoCart_Click(object sender, EventArgs e)
        {
            using (var entities = new ShoppingCartEntities())
            {
                entities.Checkout(Convert.ToInt32(Session["UserId"]));
            }
            ClientScript.RegisterStartupScript(this.GetType(), "Message", "alert('Successfully checkout !')", true);
           
        }
    }
}