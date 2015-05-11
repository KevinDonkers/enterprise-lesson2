using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace comp2007lesson2
{
    public partial class _default : System.Web.UI.Page
    {

        public int x;

        protected void Page_Load(object sender, EventArgs e)
        {
            //onlyincrement x if the page is not being reloaded
            if(!IsPostBack) {
                x = 1;
                lblx.Text = x.ToString();
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            //get the current count of x from the label
            x = Convert.ToInt32(lblx.Text);
            x++;

            //increment the label value by 1
            lblx.Text = x.ToString();

            //copy value from textbox to the label
            lblFirstName.Text = txtFirstName.Text;

            //remove the text from the text box
            txtFirstName.Text = "";
        }

        protected void btnSelections_Click(object sender, EventArgs e)
        {
            //show the selected country in the literal control
            ltlFirstName.Text = ddlCountry.SelectedValue + " " + ddlCountry.SelectedItem.Text;
        
            //clear the literal
            ltlToppings.Text = "";

            //loop through the toppings and print out the selected topping list
            foreach (ListItem item in cblToppings.Items)
            {
                if (item.Selected)
                {
                    ltlToppings.Text += item.Text + " ";
                }
            }
        
        }
    }
}