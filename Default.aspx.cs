using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    int count;
    int corr;
    protected void Page_Load(object sender, EventArgs e)
    {
        if(IsPostBack)
        {
           Session["count"] = 0;
            Session["corr"] = 0;

        }
    }

    protected void CBF110013_Btn2_Click(object sender, EventArgs e)
    {

    }

    protected void CBF110013_txtBox1_TextChanged(object sender, EventArgs e)
    {

    }
}