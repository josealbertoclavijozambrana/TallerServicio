<%@ Page Title="" Language="C#" MasterPageFile="~/Cliente.Master" AutoEventWireup="true" CodeBehind="Vehiculo.aspx.cs" Inherits="Taller.Vehiculo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <section class="row">
        <div  class="col-md-6" itemid="u">
  </br></br>
            </br></br> 
            </br></br>
              </br></br>
            </br></br>
                 <asp:Label ID="Label2" runat="server" Text="Matricula"></asp:Label>
<asp:TextBox ID="Documentacion" runat="server"  CssClass="form-control" ></asp:TextBox>
   <asp:Label ID="Label1" runat="server" Text="marca"></asp:Label>
            <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource3" DataTextField="nombre" DataValueField="codigo_id"></asp:DropDownList>
                 <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:SQLServer %>" SelectCommand="SELECT [codigo_id], [nombre] FROM [marca]"></asp:SqlDataSource>
     <asp:Label ID="Label4" runat="server" Text="Color"></asp:Label>   
  
 <asp:TextBox ID="Direccion" runat="server"  CssClass="form-control" ></asp:TextBox>

 <asp:Label ID="Label5" runat="server" Text="Tipo Vehiculo"></asp:Label>   
  
            <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource2" DataTextField="nombre" DataValueField="codigo_id"></asp:DropDownList>

                 <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:SQLServer %>" SelectCommand="SELECT [codigo_id], [nombre] FROM [Tipo_vehiculo]"></asp:SqlDataSource>
                
  

            <br/><br/>
                <asp:Label ID="Label3" runat="server" Text="Cliente"></asp:Label>   
            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Nombre" DataValueField="cliente_id"></asp:DropDownList>
 
                 <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SQLServer %>" SelectCommand="SELECT [Nombre], [cliente_id] FROM [Cliente]"></asp:SqlDataSource>
 
      <div>

  </br></br>

  <asp:Button ID="Button1" runat="server" Text="Registrar Usuario"  OnClick="Button1_Click1"></asp:Button>  
       </div>
      </div>

    </section>
</asp:Content>
