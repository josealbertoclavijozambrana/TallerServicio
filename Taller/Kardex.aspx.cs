using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Taller
{
    public partial class Kardex : System.Web.UI.Page
    {
        conn.conexion moConeccion = new conn.conexion("SQLServer");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            CapaDatos.Kardex nu = new CapaDatos.Kardex();
            nu.fk_producto = DropDownList2.SelectedValue;
            nu.cantidad = Convert.ToInt32( cantidad.Text);
            nu.precio = precio.Text;
            nu.total = total.Text;
            nu.fk_transaccion = DropDownList1.SelectedValue;

            moConeccion.InsertarKardex(nu);
        }
    }
}