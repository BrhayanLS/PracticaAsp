using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PruebaAsp
{
    public partial class crearTarea : System.Web.UI.Page
    {
        Conexion objConexion = new Conexion();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_save_tarea_Click(object sender, EventArgs e)
        {
            string usuario = Convert.ToString(Session["usuario"]);
            string titulo = txt_title.Text;
            string descripcion = txt_descripcion.Text;
            string vencimiento = txt_vencimiento.Text;
            string prioridad = drp_prioridad.SelectedValue;

            bool insert = objConexion.CrearTarea(usuario, titulo, descripcion, vencimiento, prioridad);

            if (insert)
            {
                Response.Redirect("vertareas.aspx");
            }
        }
    }
}