using CapaDatos;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Taller
{
    public partial class Transaccion : System.Web.UI.Page
    {
        conn.conexion moConeccion = new conn.conexion("SQLServer");
        protected void Page_Load(object sender, EventArgs e)
        {
             
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            transaccion tra = new transaccion();

            txtFecha.Text = tra.fecha;
            Vehiculo.SelectedValue = tra.matricula;

            moConeccion.InsertarTransaccion(tra);
            

        }
    }
}