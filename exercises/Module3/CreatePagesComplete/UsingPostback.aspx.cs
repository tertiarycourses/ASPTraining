using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UsingPostback : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            fnameLabel.Text = fnameInput.Text;
            lnameLabel.Text = lnameInput.Text;
            dobLabel.Text = dobInput.Text;
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
    }
}
