using System.Data;

namespace webCineStar_WebForms_202620.Controllers
{
    public class CinestarController
    {
        Db db = new Db("cnCinestar");

        internal object getCine(string id)
        {
            db.Sentencia("sp_getCine " + id);
            return db.getDataTable();
        }

        internal object getCineTarifas(string id)
        {
            db.Sentencia("sp_getCineTarifas " + id);
            return db.getDataTable();
        }

        internal object getCinePeliculas(string id)
        {
            db.Sentencia("sp_getCinePeliculas " + id);
            return db.getDataTable();
        }

        internal DataTable getCines()
        {
            db.Sentencia("sp_getCines");
            return db.getDataTable();
        }

        internal object getPelicula(string id)
        {
            db.Sentencia("sp_getPelicula " + id);
            return db.getDataTable();
        }

        internal DataTable getPeliculas(string id)
        {
            db.Sentencia("sp_getPeliculas " + id);
            return db.getDataTable();
        }
    }
}