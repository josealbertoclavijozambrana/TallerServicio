using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Taller
{
    
    public partial class transacciondetallles : System.Web.UI.Page
    {
        private Decimal total_1;
        conn.conexion moConeccion = new conn.conexion("SQLServer");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            CapaDatos.transacciondetalle jo = new CapaDatos.transacciondetalle();
            jo.fk_transaccion = Convert.ToInt32(DropDownList1.SelectedValue.ToString());
            jo.fk_servicio = Convert.ToInt32(DropDownList2.SelectedValue.ToString());
            jo.total = Convert.ToInt32(total.Text);
            moConeccion.Insertardetatransaccion(jo);


        }
        protected void GridView_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                var rowDebe = Convert.ToDecimal(DataBinder.Eval(e.Row.DataItem, "total"));
                total_1 = total_1 + rowDebe;
            }
            if (e.Row.RowType != DataControlRowType.Footer)
            {
                return;
            }
            var lbl1 = (Label)e.Row.FindControl("LbTotal");
            lbl1.Text = total_1.ToString("##########0.00");
        }


    }
}