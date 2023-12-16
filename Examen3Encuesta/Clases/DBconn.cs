using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Examen3Encuesta.Clases
{
    public class DBconn
    {
        public static SqlConnection obtenerConeccion()
        {
            string s = System.Configuration.ConfigurationManager.ConnectionStrings["Conexion"].ConnectionString;
            SqlConnection Conexion = new SqlConnection(s);
            Conexion.Open();
            return Conexion;
        }
    }
}