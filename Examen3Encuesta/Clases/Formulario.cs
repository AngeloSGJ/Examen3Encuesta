using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;

namespace Examen3Encuesta.Clases
{
    public class Formulario
    {
        public static int num { get; set; }

        public static string nombre { get; set; }

        public static int edad { get; set; }

        public static string correo { get; set; }

        public static string partido { get; set; }
        public object ClientScript { get; private set; }

        public Formulario(int NUM, string Nombre, int Edad, string Correo, string Partido)
        {
            num = NUM;
            nombre = Nombre;
            edad = Edad;
            correo = Correo;
            partido = Partido;
        }
  

        public static int Agregar(string nombre, int edad, string correo, string partido)
        {
            int retorno = 0;

            SqlConnection Conn = new SqlConnection();
            try
            {
                using (Conn = DBconn.obtenerConeccion())
                {
                    SqlCommand cmd = new SqlCommand("AGREGARFORMULARIO", Conn)
                    {
                        CommandType = CommandType.StoredProcedure
                    };
                    cmd.Parameters.Add(new SqlParameter("@NOMBRE", nombre));
                    cmd.Parameters.Add(new SqlParameter("@EDAD", edad));
                    cmd.Parameters.Add(new SqlParameter("@CORREO", correo));
                    cmd.Parameters.Add(new SqlParameter("@PARTIDO", partido));


                    retorno = cmd.ExecuteNonQuery();
                    }
                
            }
            catch (System.Data.SqlClient.SqlException ex)
            {
                retorno = -1;
            }
            finally
            {
                Conn.Close();
            }

            return retorno;

        }
    }
}