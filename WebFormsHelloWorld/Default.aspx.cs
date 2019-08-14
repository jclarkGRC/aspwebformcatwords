using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebFormsHelloWorld
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            // get the selected category
            string category = CategoriesDropDownList.SelectedItem.Text;
            // save the current category in the session
            Session["currentCategory"] = category;
            // redirect to the game page
            Response.Redirect("Game.aspx");
        }
    }
}