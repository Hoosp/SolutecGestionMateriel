<%@ Page Language="C#" MasterPageFile="~/Site.Master"   AutoEventWireup="true" CodeBehind="ListeMaterielConsommable.aspx.cs" Inherits="GestionMat.ListeMaterielConsommable" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>


    <asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
        

           <asp:GridView ID="gvMaterielConsommable" runat="server" AutoGenerateColumns="False" DataSourceID="odsMaterielConsommable" style="float:left;" CellPadding="4" ForeColor="#333333" GridLines="None" Width="90%">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="id_mat_conso" HeaderText="ID Mat. Conso." SortExpression="id_mat_conso" Visible="False" />
            <asp:BoundField DataField="nom" HeaderText="Nom" SortExpression="nom" />
            <asp:BoundField DataField="code_barres" HeaderText="Code barre" SortExpression="code_barres" />

            <asp:TemplateField HeaderText="Nom du site de stockage">
                <ItemTemplate>
                    <asp:Label ID="id_site_de_stockage" runat="server" Text='<%# Eval("id_site_de_stockage.nom") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="">
                <ItemTemplate>
                    <asp:Button ID="btnModifier" runat="server" Text="Modifier"  CommandArgument='<%# Eval("id_mat_conso") %>'></asp:Button>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:ButtonField ButtonType="Button" CommandName="Delete" Text="Supprimer" />
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>

        
        <asp:ObjectDataSource ID="odsMaterielConsommable" runat="server" SelectMethod ="Get" TypeName="GestionMat.dto.DtoMaterielConsommable"></asp:ObjectDataSource>

        

</asp:Content>
