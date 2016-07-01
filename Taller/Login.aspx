<%@ Page Title="" Language="C#" MasterPageFile="~/Cliente.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Taller.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />
    <br />
    <br />
    <!--- Sign in start  -->
    <div class="container">
        <div class="form-horizontal">
            <h2>Iniciar Sesion</h2>
            <hr />
            <div class="form-group">
                <asp:Label ID="Label1" runat="server" CssClass="col-md-2 control-label" Text="Nombre De Usuario"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="UserName" CssClass="form-control" runat="server"></asp:TextBox>

                </div>
            </div>
            <div class="form-group">
                <asp:Label ID="Label2" runat="server" CssClass="col-md-2 control-label" Text="Contraseña"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="Password" CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox>

                </div>
            </div>
            <div class="form-group">
                <div class="col-md-2"></div>
                <div class="col-md-6">
                    <asp:CheckBox ID="CheckBox1" runat="server" />
                    <asp:Label ID="Label3" runat="server" CssClass="control-label" Text="Mantener la sesión iniciada?"></asp:Label>
                </div>
            </div>
            <div class="form-group">
                <div class="col-md-2"></div>
                <div class="col-md-6">
                    <asp:Button ID="Button1" runat="server" Text="Ingresar" CssClass="btn btn-default" OnClick="Button1_Click" />
                    <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/Inicio.aspx">Registrarse</asp:LinkButton>
                </div>
            </div>
            <div class="form-group">
                <div class="col-md-2"></div>
                <div class="col-md-6">
                    <asp:Label ID="lblError" runat="server" CssClass="text-danger"></asp:Label>
                </div>
            </div>
        </div>
    </div>
    <!--- Sign in end  -->
</asp:Content>
