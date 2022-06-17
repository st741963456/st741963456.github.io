using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Web.UI;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

   

    protected void Button3_Click(object sender, EventArgs e)
    {
        DataView dataView = (DataView)SqlDataSource1.Select(DataSourceSelectArguments.Empty);
        if (dataView.Count >= 1)
        {
            Session["id"] = dataView[0][0].ToString();
            Response.Redirect("Member.aspx");
        }
        else ErrorMsg.Visible = true;
    }
}
