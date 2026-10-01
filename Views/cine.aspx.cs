using System;

namespace webCineStar_WebForms_202620.Views
{
    public partial class cine : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int id;
            string idCine = Request.QueryString["idCine"];
            if (idCine != null && int.TryParse(idCine, out id))
            {
                fvCine.DataSource = new Controllers.CinestarController().getCine(idCine);
                if (fvCine.DataSource == null)
                    Response.Redirect("index.aspx");

                imgCine.ImageUrl = "~/Contents/img/cine/" + id + ".2.jpg";
                rptCineTarifas.DataSource = new Controllers.CinestarController().getCineTarifas(idCine);
                rptCinePeliculas.DataSource = new Controllers.CinestarController().getCinePeliculas(idCine);
                DataBind();
            }
        }
    }
}