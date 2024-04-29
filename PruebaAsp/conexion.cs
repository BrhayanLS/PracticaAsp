using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace PruebaAsp
{
    public class Conexion
    {
        private string cadenaConexion;

        public Conexion()
        {
            this.cadenaConexion = "Password=Desarrollo-21;Persist Security Info=True;User ID=sa;Initial Catalog=PruebaAsp;Data Source=BRHAYANLS\\SQLEXPRESS";
        }

        public SqlConnection AbrirConexion()
        {
            try
            {
                SqlConnection conexion = new SqlConnection(cadenaConexion);
                conexion.Open();
                Console.WriteLine("Conexión establecida correctamente.");
                return conexion;
            }
            catch (Exception ex)
            {
                Console.WriteLine("Error al establecer la conexión: " + ex.Message);
                return null;
            }
        }

        public void CerrarConexion(SqlConnection conexion)
        {
            try
            {
                conexion.Close();
                Console.WriteLine("Conexión cerrada correctamente.");
            }
            catch (Exception ex)
            {
                Console.WriteLine("Error al cerrar la conexión: " + ex.Message);
            }
        }

        public DataTable ConsultaUsuarios(string usuario, string clave)
        {
            string consulta = "select * from users where username = '" + usuario + "' AND password = '" + clave + "'";
            return SelectSql(consulta);
        }

        public DataTable ConsultaTareas(string usuario)
        {
            string consulta = "select * from tasks where user_id = '" + usuario + "'";
            return SelectSql(consulta);
        }

        public DataTable ConsultaTareasId(string usuario, string idTarea)
        {
            string consulta = "select * from tasks where user_id = '" + usuario + "' AND id = '" + idTarea + "'";
            return SelectSql(consulta);
        }

        public Boolean CrearUsuario(string username, string email, string pass)
        {
            string consulta = "insert into users (username, email, password) values ('" + username + "','" + email + "','" + pass + "')";
            return InsertarActualizar(consulta);
        }

        public Boolean CrearTarea(string usuario, string titulo, string descripcion, string vencimiento, string prioridad)
        {
            string consulta = "insert into tasks (user_id, title, description, due_date, priority) " +
                "values ('" + usuario  +"','" + titulo + "','" + descripcion + "','" + vencimiento + "','" + prioridad + "')";
            return InsertarActualizar(consulta);
        }

        public Boolean ActualizarTarea(string id, string titulo, string descripcion, string vencimiento, string prioridad, string estado)
        {
            string consulta = "update tasks set title = '" + titulo + "', description = '" + descripcion + "', due_date = '" + vencimiento + "', " +
                "priority = '" + prioridad + "', completed = '" + estado + "' where id = '" + id + "'";
            return InsertarActualizar(consulta);
        }

        public DataTable buscarTarea(string usuario, string titulo, string descripcion, string vencimiento, string prioridad, string estado)
        {
            string consulta = "select * from tasks where user_id = '" + usuario + "'";
            if (titulo != null && titulo != "")
            {
                consulta = consulta + " and title like '%" + titulo + "%'";
            }
            if (descripcion != null && descripcion != "")
            {
                consulta = consulta + " and description like '%" + descripcion + "%'";
            }
            if (vencimiento != null && vencimiento != "")
            {
                consulta = consulta + " and due_date like '%" + vencimiento + "%'";
            }
            if (prioridad != null && prioridad != "")
            {
                consulta = consulta + " and priority like '%" + prioridad + "%'";
            }
            if (estado != null && estado != "")
            {
                consulta = consulta + " and completed like '%" + estado + "%'";
            }
            return SelectSql(consulta);
        }

        public Boolean EliminarTarea(string id)
        {
            string consulta = "delete from tasks where id = '" + id + "'";
            return InsertarActualizar(consulta);
        }

        public DataTable SelectSql(string select)
        {
            string consulta = select;
            try
            {
                // Abrir la conexión
                SqlConnection conexion = AbrirConexion();

                // Crear un SqlDataAdapter y un DataTable para almacenar los resultados de la consulta
                SqlDataAdapter adaptador = new SqlDataAdapter(consulta, conexion);
                DataTable tabla = new DataTable();

                // Llenar el DataTable con los resultados de la consulta
                adaptador.Fill(tabla);

                // Cerrar la conexión
                CerrarConexion(conexion);

                // Retornar el DataTable con los resultados
                return tabla;
            }
            catch (Exception ex)
            {
                Console.WriteLine("Error al ejecutar la consulta: " + ex.Message);
                return null;
            }
        }

        public bool InsertarActualizar(string consulta)
        {
            try
            {
                // Abrir la conexión
                SqlConnection conexion = AbrirConexion();

                // Crear un objeto SqlCommand para ejecutar la consulta INSERT
                SqlCommand comando = new SqlCommand(consulta, conexion);

                // Ejecutar la consulta INSERT
                int filasAfectadas = comando.ExecuteNonQuery();

                // Cerrar la conexión
                CerrarConexion(conexion);

                // Retornar verdadero si la inserción fue exitosa
                return filasAfectadas > 0;
            }
            catch (Exception ex)
            {
                Console.WriteLine("Error al ejecutar la consulta INSERT: " + ex.Message);
                return false;
            }
        }
    }
}