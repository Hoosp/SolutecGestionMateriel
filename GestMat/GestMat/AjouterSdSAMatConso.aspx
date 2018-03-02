<%@ Page Language="C#" AutoEventWireup="true"  MasterPageFile="~/Site.Master" CodeBehind="AjouterSdSAMatConso.aspx.cs" Inherits="GestMat.AjouterSdSAMatConso" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

       
        <script src="Scripts/ajouterUnSiteDeStockageAMatConso.js"></script>

        <div>
            <a href="javascript:%20showOrHidePopup()" id="ajouterSdSAMatConso">Ajouter un Site de stockage</a>
        </div>

            <div id="popup" >
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
                        <a href="javascript:%20check_empty()" id="submit">Send</a>
                    </div>
                </div>
                <!-- Popup Div Ends Here -->
            </div>

        <asp:ObjectDataSource ID="odsSdS" runat="server" SelectMethod ="Get" TypeName="GestMat.dto.DtoListeSiteDeStockage" OldValuesParameterFormatString="original_{0}" ></asp:ObjectDataSource>


</asp:Content>
