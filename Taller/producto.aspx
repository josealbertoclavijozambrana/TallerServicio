<%@ Page Title="" Language="C#" MasterPageFile="~/Cliente.Master" AutoEventWireup="true" CodeBehind="producto.aspx.cs" Inherits="Taller.producto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="row">
        <div  class="col-md-6" itemid="u">
      <di>

<asp:Label ID="Label1" runat="server" Text="nombre"></asp:Label>
    </di>
    <div>
        <asp:TextBox ID="nombre" runat="server"></asp:TextBox>
    </div>

        <di>

<asp:Label ID="Label2" runat="server" Text="precio"></asp:Label>
    </di>
    <div>
        <asp:TextBox ID="precio" runat="server"></asp:TextBox>
    </div>

       <di>

<asp:Label ID="Label3" runat="server" Text="descripcion"></asp:Label>
    </di>
    <div>
        <asp:TextBox ID="observacion" runat="server"></asp:TextBox>
    </div>

        <di>

<asp:Label ID="Label4" runat="server" Text="stock"></asp:Label>
    </di>
    <div>
        <asp:TextBox ID="stock" runat="server"></asp:TextBox>
    </div>

           <di>

 <asp:Label ID="Label5" runat="server" Text=" estado"></asp:Label>   
               <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource2" DataTextField="nombre" DataValueField="ncodigo">
                    
               

                </asp:DropDownList>
           
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:SQLServer %>" SelectCommand="SELECT [nombre], [ncodigo] FROM [estado]"></asp:SqlDataSource>
           
    <div>
        
<asp:Label ID="Label6" runat="server" Text="unidad de medida"></asp:Label>
    </div>
    <div>
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="nombre" DataValueField="numero_id"></asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SQLServer %>" SelectCommand="SELECT [numero_id], [nombre] FROM [unidadmedida]"></asp:SqlDataSource>
    </div>


    <asp:Button ID="Button1" runat="server" Text="Registrar" OnClick="Button1_Click" />
   </div>

    </section>
</asp:Content>
