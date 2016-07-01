﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Taller
{
    public partial class Clientes : System.Web.UI.Page
    {
        conn.conexion moConeccion = new conn.conexion("SQLServer");
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }
        protected void Button1_Click1(object sender, EventArgs e)
        {
          CapaDatos.Cliente persona = new CapaDatos.Cliente();
            int? id = 0;

          
            persona.documentacion = Documentacion.Text;
            persona.nombre = Nombre.Text;
            persona.direccion = Direccion.Text;
            persona.telefono = Telefono.Text;
            moConeccion.InsertarCliente(persona);
            Documentacion.Text = "";
            Nombre.Text = "";
            Direccion.Text = "";
            Telefono.Text = "";

            //persona.usuario = TextBox1;
            //persona.contrasena = TextBox2;
            //persona.nombre = TextBox3.Text;

            //usuarioes.usuario = TextBox1.Text 

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("ListaCliente.aspx");
        }
    }
}