using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class HelloFromCSharp : System.Web.UI.Page
{
    protected string var1 = "Hello from C#";
    protected void Page_Load(object sender, EventArgs e)
    {
        Trace.Write("hello from debugging");
    }
}
