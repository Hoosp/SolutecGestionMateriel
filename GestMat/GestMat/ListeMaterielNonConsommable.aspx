<%@ Page Title="Liste des materiels non consommables" Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="ListeMaterielNonConsommable.aspx.cs" Inherits="GestMat.ListeMaterielNonConsommable" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">


        <h1>Liste des materiels non consommables</h1>


        <div>
            <asp:Label ID="lbl_AjouterMatNonConso" runat="server" Text="Remplir les champs pour ajouter un materiel non consommable : "></asp:Label>
        </div>

        <div>
            
            
            <asp:Table ID="Table1" runat="server" Width="345px">

                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="lbl_NomMatNonConso" runat="server" Text="Nom"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox ID="tbx_Nom" runat="server"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>

               <asp:TableRow>
                    <asp:TableCell>
                       <asp:Label ID="lbl_etat" runat="server" Text="Etat"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:DropDownList ID="ddl_Etat" runat="server">
                        </asp:DropDownList>
                    </asp:TableCell>
                </asp:TableRow>

                <asp:TableRow>
                    <asp:TableCell>
                       <asp:Label ID="lbl_Salle" runat="server" Text="Salle"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:DropDownList ID="ddl_Salle" runat="server" DataSourceID="odsSalle" DataTextField="nom" DataValueField="id_salle"/>
                    </asp:TableCell>
                </asp:TableRow>

            </asp:Table>

        </div>

        <div>
            <asp:Button ID="btnAjouterMatNonConso" runat="server" Text="Ajouter un nouveau materiel non consommable" OnClick="BtnAjouterMatNonConso_Click" />   
        </div>
        
       

        

           <asp:GridView ID="gvMaterielNonConsommable" runat="server" OnRowCommand="BtnGrid" AutoGenerateColumns="False" DataSourceID="odsMaterielNonConsommable" style="float:left;" CellPadding="4" ForeColor="#333333" GridLines="None" Width="90%">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="id_mat_non_conso" HeaderText="ID" SortExpression="id_mat_non_conso" />
            <asp:BoundField DataField="nom" HeaderText="Nom" SortExpression="nom" />


           <asp:TemplateField HeaderText="Nom de la salle">
                <ItemTemplate>
                    <asp:Label ID="id_salle" runat="server" Text='<%# Eval("salle.nom") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField> 

            <asp:TemplateField HeaderText="Disponibilité">
                <ItemTemplate>
                    <asp:Label ID="etat" runat="server" Text='<%# Eval("etat") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField> 

            <asp:TemplateField HeaderText="">
                <ItemTemplate>
                     <asp:Button ID="btnModifier" runat="server" Text="Modifier" CommandName="ModifierMatNonConso" CommandArgument='<%# Eval("id_mat_non_conso") %>'></asp:Button>
               </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="">
                <ItemTemplate>
                     <asp:Button ID="btnSupprimer" runat="server" Text="Supprimer" CommandName="SupprimerMatNonConso" CommandArgument='<%# Eval("id_mat_non_conso") %>' ></asp:Button>
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

        
        <asp:ObjectDataSource ID="odsMaterielNonConsommable" runat="server" SelectMethod ="Get" TypeName="GestMat.dto.DtoListeMaterielNonConsommable" OldValuesParameterFormatString="original_{0}" ></asp:ObjectDataSource>
        <asp:ObjectDataSource ID="odsSalle" runat="server" SelectMethod ="Get" TypeName="GestMat.dto.DtoListeSalle" OldValuesParameterFormatString="original_{0}" ></asp:ObjectDataSource>

</asp:Content>
