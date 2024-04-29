using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PruebaAsp
{
    public partial class Login : System.Web.UI.Page
    {
        Conexion objConexion = new Conexion();
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btn_login_Click(object sender, EventArgs e)
        {
            string usuario = txt_usuario.Text;
            string clave = txt_contraseña.Text;
            string passEncriptada = Convert.ToBase64String(System.Text.Encoding.UTF8.GetBytes(clave));

            DataTable dtDataTable = objConexion.ConsultaUsuarios(usuario, passEncriptada);

            if (dtDataTable.Rows.Count > 0)
            {                
                Session["usuario"] = dtDataTable.Rows[0]["id"].ToString();
                Response.Redirect("vertareas.aspx");
            }
        }

        protected void btn_crear_user_Click(object sender, EventArgs e)
        {
            Response.Redirect("crearUsuario.aspx");
        }
    }
}