<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListeTheme.aspx.cs" Inherits="GestionMat.ListeTheme" %>



<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Button ID="btnCreerFormation" runat="server" Text="Créer une nouvelle formation" OnClick="btnCreerFormation_Click" />
    <asp:GridView ID="gvFormations" runat="server" AutoGenerateColumns="False" DataSourceID="odsFormation" style="float:left;" CellPadding="4" ForeColor="#333333" GridLines="None" Width="90%">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>





            <asp:BoundField DataField="id_mat_conso" HeaderText="ID Mat. Conso." SortExpression="id_mat_conso" Visible="False" />
            <asp:BoundField DataField="nom" HeaderText="Nom" SortExpression="nom" />
            <asp:BoundField DataField="code_barres" HeaderText="Code barre" SortExpression="code_barres" />
            <asp:BoundField DataField="id_site_de_stockage" HeaderText="ID du site de stockage" SortExpression="id_site_de_stockage" />
            <asp:HyperLinkField DataNavigateUrlFields="id_formation" DataNavigateUrlFormatString="ListeSessionsFormation.aspx?idFormation={0}" DataTextField="intitule" DataTextFormatString="Sessions de {0}" HeaderText="Sessions" />
            <asp:TemplateField HeaderText="Thème">
                <ItemTemplate>
                    <asp:Label ID="themeName" runat="server" Text='<%# Eval("theme.nom") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="">
                <ItemTemplate>
                    <asp:Button ID="btnModifier" runat="server" Text="Modifier" OnCommand="ModifierFormation_Command" CommandArgument='<%# Eval("id_formation") %>'></asp:Button>
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
    <asp:ObjectDataSource ID="odsFormation" runat="server" SelectMethod="Get" TypeName="gestion_formation_web.dto.DtoFormation"></asp:ObjectDataSource>
</asp:Content>
