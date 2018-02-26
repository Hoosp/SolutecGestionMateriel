<%@ Page Title="Liste des materiels non consommables" Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="DetailsMatConso.aspx.cs" Inherits="GestMat.DetailsMatConso" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

                    <h1> 
                        <asp:Label ID="idMatConso" runat="server"></asp:Label>
                        :
                        <asp:Label ID="NomMatConso" runat="server"></asp:Label>


                    </h1>
       
    
           <asp:GridView ID="gvMaterielConsommableDetail" runat="server"  AutoGenerateColumns="False" DataSourceID="odsPlacer" style="float:left;" CellPadding="4" ForeColor="#333333" GridLines="None" Width="90%">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>

           <asp:TemplateField HeaderText="Nom du stite de stockage">
                <ItemTemplate>
                    <asp:Label ID="id_salle" runat="server" Text='<%# Eval("placer.id_site_de_stockage") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField> 

            <asp:TemplateField HeaderText="Quantité disponible">
                <ItemTemplate>
                    <asp:Label ID="etat" runat="server" Text='<%# Eval("placer.quantite") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField> 


            <asp:TemplateField HeaderText="">
                <ItemTemplate>
                     <asp:Button ID="btnModifier" runat="server" Text="Modifier" CommandName="ModifierMatConso" CommandArgument='<%# Eval("id_site_de_stockage") %>'></asp:Button>
               </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="">
                <ItemTemplate>
                     <asp:Button ID="btnSupprimer" runat="server" Text="Supprimer" CommandName="SupprimerMatConso" CommandArgument='<%# Eval("id_site_de_stockage") %>' ></asp:Button>
               </ItemTemplate>
            </asp:TemplateField>


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

        
        <asp:ObjectDataSource ID="odsPlacer" runat="server" SelectMethod ="Get(id_mat_conso)" TypeName="GestMat.dto.DtoPlacer" OldValuesParameterFormatString="original_{0}" ></asp:ObjectDataSource>

</asp:Content>
