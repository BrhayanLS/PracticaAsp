using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PruebaAsp
{
    
    public partial class crearUsuario : System.Web.UI.Page
    {
        Conexion objConexion = new Conexion();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void brn_save_user_Click(object sender, EventArgs e)
        {
            string username = txt_username.Text;
            string email = txt_email.Text;
            string pass = txt_pass.Text;
            string passEncriptada = Convert.ToBase64String(System.Text.Encoding.UTF8.GetBytes(pass));


            Boolean insert = objConexion.CrearUsuario(username, email, passEncriptada);
            if (insert)
            {
                lbl_respuesta.Text = "Usuario creado correctamente!";
                Response.Redirect("Login.aspx");
            }
        }
    }
}