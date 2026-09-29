using System;

namespace webCineStar_WebForms_202620.Views
{
    public partial class cines : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            rptCines.DataSource = new Controllers.CinestarController().getCines();
            rptCines.DataBind();

            if (rptCines.DataSource == null)
                Response.Redirect("index.aspx");
        }
    }
}