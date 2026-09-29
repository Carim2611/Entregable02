using System;
using webCineStar_WebForms_202620.Controllers;

namespace webCineStar_WebForms_202620.Views
{
    public partial class cine : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string id = Request.QueryString["id"];
            if (id == null) Response.Redirect("index.aspx");

            CinestarController controller = new CinestarController();

            imgCine.ImageUrl = "~/Contents/img/cine/" + id + ".2.jpg";

            rptCine.DataSource = controller.getCine(id);
            rptCine.DataBind();
            rptCineTarifas.DataSource = controller.getCineTarifas(id);
            rptCineTarifas.DataBind();
            rptCinePeliculas.DataSource = controller.getCinePeliculas(id);
            rptCinePeliculas.DataBind();
        }
    }
}