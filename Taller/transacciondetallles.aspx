<%@ Page Title="" Language="C#" MasterPageFile="~/Cliente.Master" AutoEventWireup="true" CodeBehind="transacciondetallles.aspx.cs" Inherits="Taller.transacciondetallles" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <br /><br />
        <br /><br />
        <br /><br />
        <asp:Label ID="Label1" runat="server" Text="transaccion"></asp:Label>

    </div>
    
    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Matricula" DataValueField="Ntransaccion"></asp:DropDownList>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SQLServer %>" SelectCommand="SELECT [Matricula], [Ntransaccion] FROM [Transaccion]"></asp:SqlDataSource>

    <div>

            <asp:Label ID="Label2" runat="server" Text="servicio"></asp:Label>
    </div>

    <div>
          <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource2" DataTextField="nombre" DataValueField="nro_servicio"></asp:DropDownList>

          <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:SQLServer %>" SelectCommand="SELECT [nro_servicio], [nombre] FROM [Servicio]"></asp:SqlDataSource>

    </div>
    <div>
        <asp:Label ID="Label3" runat="server" Text="total"></asp:Label>

    </div>

    <asp:TextBox ID="total" runat="server"></asp:TextBox>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" 
        
        BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource4" ShowFooter="True" OnRowDataBound="GridView_RowDataBound">
        <Columns>                                        
            <asp:TemplateField HeaderText="Transaccion" ItemStyle-Width="200px"  ItemStyle-HorizontalAlign="Left">
               <ItemTemplate>
                     <div><%# DataBinder.Eval(Container.DataItem, "fk_transaccion").ToString().Trim() %></div>
               </ItemTemplate>
               <FooterStyle HorizontalAlign="Right" />
              <ItemStyle HorizontalAlign="Left" Width="200px" />
             </asp:TemplateField>
            <asp:TemplateField HeaderText="Total" ItemStyle-Width="200px" ItemStyle-HorizontalAlign="Left">
               <ItemTemplate>
                     <div><%# DataBinder.Eval(Container.DataItem, "Total").ToString().Trim() %></div>
               </ItemTemplate>
               <FooterTemplate>
                  <asp:Label ID="LbTotal" runat="server" Text="0.00"></asp:Label>
               </FooterTemplate>
               <FooterStyle HorizontalAlign="Right" />
              <ItemStyle HorizontalAlign="Left" Width="200px" />
             </asp:TemplateField>
            <asp:TemplateField HeaderText="Servicio" ItemStyle-Width="200px" FooterText="TOTALES:" FooterStyle-HorizontalAlign="Right" ItemStyle-HorizontalAlign="Left">
               <ItemTemplate>
                     <div><%# DataBinder.Eval(Container.DataItem, "fk_servicio").ToString().Trim() %></div>
               </ItemTemplate>
               <FooterStyle HorizontalAlign="Right" />
              <ItemStyle HorizontalAlign="Left" Width="200px" />
             </asp:TemplateField>                        
        </Columns>
        <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
        <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
        <RowStyle BackColor="White" ForeColor="#330099" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
        <SortedAscendingCellStyle BackColor="#FEFCEB" />
        <SortedAscendingHeaderStyle BackColor="#AF0101" />
        <SortedDescendingCellStyle BackColor="#F6F0C0" />
        <SortedDescendingHeaderStyle BackColor="#7E0000" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:SQLServer %>" SelectCommand="SELECT [fk_transaccion], [total], [fk_servicio] FROM [TransaccionDetalle]"></asp:SqlDataSource>
    <div>

        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />

    </div>

</asp:Content>
