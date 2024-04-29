using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PruebaAsp
{
    public partial class vertareas : System.Web.UI.Page
    {
        Conexion objConexion = new Conexion();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                string usuario = Convert.ToString(Session["usuario"]);

                DataTable dataTable = objConexion.ConsultaTareas(usuario);

                if (dataTable.Rows.Count > 0)
                {
                    gvTareas.DataSource = dataTable;
                    gvTareas.DataBind();
                }
            }            
        }

        protected void btn_agregar_Click(object sender, EventArgs e)
        {
            Response.Redirect("crearTarea.aspx");
        }

        protected void btn_logout_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("Login.aspx");
        }

        protected void btnActualizar_Click(object sender, EventArgs e)
        {
            GridViewRow gvRow = ((Button)sender).Parent.Parent as GridViewRow;
           
            string usuario = Convert.ToString(Session["usuario"]);
            string id = gvRow.Cells[0].Text;
            Session["idTarea"] = id;
            Response.Redirect("actualizarTarea.aspx");
        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            GridViewRow gvRow = ((Button)sender).Parent.Parent as GridViewRow;
            string id = gvRow.Cells[0].Text;
            bool delete = objConexion.EliminarTarea(id);

            if (delete)
            {
                Response.Redirect("vertareas.aspx");
            }
        }

        protected void btn_busqueda_Click(object sender, EventArgs e)
        {
            string titulo = txt_title_bus.Text;
            string descripcion = txt_descri_bus.Text;
            string vencimiento = txt_venci_bus.Text;
            string prioridad = drp_prioridad_bus.SelectedValue;
            string estado = drp_estado_bus.SelectedValue;
            string usuario = Convert.ToString(Session["usuario"]);

            DataTable dataTable = objConexion.buscarTarea(usuario, titulo, descripcion, vencimiento, prioridad, estado);
            if (dataTable.Rows.Count > 0)
            {
                gvTareas.DataSource = dataTable;
                gvTareas.DataBind();
            }
        }
    }
}