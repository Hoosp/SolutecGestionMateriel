<%@ Page Title="Formaulaire de demandes de Consommables" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FormulairDemandesConsommables.aspx.cs" Inherits="GestMat.FormulairDemandesConsommables" %>

<asp:Content ID="bodyContent" ContentPlaceHolderID="MainContent" runat="server">
    
    <h1><asp:Label id="lblTitre" runat="server" Text="Commande de "></asp:Label></h1>
    <asp:Panel id="pnlFormContent" runat="server">
        <asp:Label id="lblSiteStockage" runat="server" Text="Selctionnez votre site:"></asp:Label><br />
        <asp:DropDownList id="ddlSiteStrockage" runat="server"></asp:DropDownList><br />
        <asp:Label id="lblDateUtilisation" runat="server" Text="Selctionnez la date de votre besoin:"></asp:Label><br />
        <asp:TextBox id="tbDateUtilisation" runat="server" TextMode="Date"></asp:TextBox><br />
        <asp:Label id="lblQuantite" runat="server" Text="Saisissez la quantité désirée:"></asp:Label><br />
        <asp:TextBox id="tbQuantite" runat="server" TextMode="Number"></asp:TextBox><br /><br />
        <asp:Button id="btnValider" runat="server" Text="Valider" OnClick="btnValider_Click" />
        <asp:Button id="btnAnnuler" runat="server" Text="Annuler" />
    </asp:Panel>
</asp:Content>

<%-- TODO gerer :
    - site de stockage (ddl)
    - date utilisation
    - quantite
--%>