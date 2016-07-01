<%@ Page Title="" Language="C#" MasterPageFile="~/Usuarios.Master" AutoEventWireup="true" CodeBehind="Usuario.aspx.cs" Inherits="Taller.Usuario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <section class="row">
        <div  class="col-md-6" itemid="u">

                 <asp:Label ID="Label2" runat="server" Text="Usuario"></asp:Label>
<asp:TextBox ID="TextBox1" runat="server"  CssClass="form-control" ></asp:TextBox>
   <asp:Label ID="Label1" runat="server" Text="Contraseña"></asp:Label>
<asp:TextBox ID="TextBox2" runat="server"   CssClass="form-control" TextMode="Password"></asp:TextBox>  
     <asp:Label ID="Label4" runat="server" Text="Nombre Completo"></asp:Label>   
  
 <asp:TextBox ID="TextBox3" runat="server"  CssClass="form-control" ></asp:TextBox>
      
  <asp:Button ID="Button1" runat="server" Text="Registrar Usuario"  OnClick="Button1_Click1"></asp:Button>  
   </div>

    </section>
</asp:Content>
