<%@ Page Title="Liste des materiels non consommables" Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master"  CodeBehind="DetailsMatConso.aspx.cs" Inherits="GestMat.DetailsMatConso" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
        
 
            

        <div id ="thePage" style="opacity:1;">
                    <h1> 
                        <asp:Label id="id_MatConso" runat="server"></asp:Label>
                        :
                        <asp:Label id="Nom_MatConso" runat="server"></asp:Label>
                    </h1>
       
        <script src="Scripts/ajouterUnSiteDeStockageAMatConso.js"></script>

        <div>
            <a href="javascript:%20showOrHidePopup()" id="ajouterSdSAMatConso">Ajouter un Site de stockage</a>
        </div>

     

            <div id="popup" style="display: none;">
                <!-- Popup Div Starts Here -->
                <div id="ajouterSiteDeStockageForm">
                    <!-- Contact Us Form -->
                    <div  id="form" >
                        <h4>Remplir ces champs : </h4>
                        <hr/>
                        <asp:DropDownList ID="idSdS" runat="server" DataSourceID="odsSdS" DataTextField="nom" DataValueField="id_site_de_stockage">
                        </asp:DropDownList>
                        <hr/>
                        <asp:TextBox ID="qte" placeholder="Quantité" runat="server"></asp:TextBox>
                        <hr/>
                        <asp:Button ID="btnAjouterSdSAMatConso" runat="server" Text="Valider" OnClick="BtnAjouterSdSAMatConso_Click" /> 
                        <!--<a href="javascript:%20check_empty()" id="submit" onclick="BtnAjouterSdSAMatConso_Click">Valider</a>-->
                    </div>
                </div>
                <!-- Popup Div Ends Here -->
            </div>




           <asp:GridView ID="gvMaterielConsommableDetail" runat="server" OnRowCommand="BtnGrid" AutoGenerateColumns="False" DataSourceID="odsPlacer" style="float:left;" CellPadding="4" ForeColor="#333333" GridLines="None" Width="90%">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="id_site_de_stockage" HeaderText="ID" SortExpression="id_site_de_stockage" />
            <asp:BoundField DataField="site_de_stockage.nom" HeaderText="Site de stockage" SortExpression="id_site_de_stockage" />
            <asp:BoundField DataField="quantite" HeaderText="quantite" SortExpression="quantite" />

            <asp:TemplateField HeaderText="">
                <ItemTemplate>
                     <asp:Button ID="btnModifier" runat="server" Text="Modifier" CommandName="ModifierQteMatConso" CommandArgument='<%# Eval("id_site_de_stockage") %>'></asp:Button>
               </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="">
                <ItemTemplate>
                     <asp:Button ID="btnSupprimer" runat="server" Text="Supprimer" CommandName="SupprimerQteMatConso" CommandArgument='<%# Eval("id_site_de_stockage") %>' ></asp:Button>
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

        <asp:ObjectDataSource ID="odsSdS" runat="server" SelectMethod ="Get" TypeName="GestMat.dto.DtoListeSiteDeStockage" OldValuesParameterFormatString="original_{0}" ></asp:ObjectDataSource>
        <asp:ObjectDataSource ID="odsPlacer" runat="server" SelectMethod ="Get" TypeName="GestMat.dto.DtoPlacer" OldValuesParameterFormatString="original_{0}" >
            <SelectParameters>
                <asp:QueryStringParameter DefaultValue="-1" Name="idMatConso" QueryStringField="idMatConso" Type="Int32" />
            </SelectParameters>
                    </asp:ObjectDataSource>
    </div>
 
</asp:Content>
