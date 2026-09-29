using System;

namespace webCineStar_WebForms_202620.Views
{
    public partial class peliculas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string id = Request.QueryString["id"];
            if (id == null) Response.Redirect("index.aspx");

            if (id == "cartelera" || id == "estrenos")
            {
                id = id == "cartelera" ? "1" : "2";
                rptPeliculas.DataSource = new Controllers.CinestarController().getPeliculas(id);
                rptPeliculas.DataBind();
                if (rptPeliculas.DataSource == null)
                    Response.Redirect("index.aspx");
            }
            else Response.Redirect("index.aspx");
        }
    }
}