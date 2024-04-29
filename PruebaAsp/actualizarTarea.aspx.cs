using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PruebaAsp
{
    public partial class actualizarTarea : System.Web.UI.Page
    {
        Conexion objConexion = new Conexion();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                string usuario = Convert.ToString(Session["usuario"]);
                string idTarea = Convert.ToString(Session["idTarea"]);
                DataTable dataTable = objConexion.ConsultaTareasId(usuario, idTarea);

                if (dataTable.Rows.Count > 0)
                {
                    txt_title.Text = dataTable.Rows[0]["title"].ToString();
                    txt_descripcion.Text = dataTable.Rows[0]["description"].ToString();
                    txt_vencimiento.Text = dataTable.Rows[0]["due_date"].ToString();
                    drp_prioridad.Text = dataTable.Rows[0]["priority"].ToString();
                    drp_estado.Text = dataTable.Rows[0]["completed"].ToString();
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string idTarea = Convert.ToString(Session["idTarea"]);
            string titulo = txt_title.Text;
            string descripcion = txt_descripcion.Text;
            string vencimiento = txt_vencimiento.Text;
            string prioridad = drp_prioridad.SelectedValue;
            string estado = drp_estado.SelectedValue;

            bool update = objConexion.ActualizarTarea(idTarea, titulo, descripcion, vencimiento, prioridad, estado);
            if (update)
            {
                Response.Redirect("vertareas.aspx");
            }
        }
    }
}