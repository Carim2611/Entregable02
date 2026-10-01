using System;

namespace webCineStar_WebForms_202620.Views
{
    public partial class pelicula : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string id = Request.QueryString["id"];
            if (id == null) Response.Redirect("index.aspx");

            if (fvPelicula.DataSource == null)
                Response.Redirect("index.aspx");

            fvPelicula.DataSource = new Controllers.CinestarController().getPelicula(id);
            fvPelicula.DataBind();
        }
    }
}