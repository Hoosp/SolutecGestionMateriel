<%@ Page Title="Liste des materiels non consommables" Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="DetailsMatConso.aspx.cs" Inherits="GestMat.DetailsMatConso" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

                    <h1> 
                        <asp:Label id="id_MatConso" runat="server"></asp:Label>
                        :
                        <asp:Label id="Nom_MatConso" runat="server"></asp:Label>
                    </h1>
       
    
           <asp:GridView ID="gvMaterielConsommableDetail" runat="server"  AutoGenerateColumns="False" DataSourceID="odsPlacer" style="float:left;" CellPadding="4" ForeColor="#333333" GridLines="None" Width="90%">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="id_site_de_stockage" HeaderText="ID" SortExpression="id_site_de_stockage" />
            <asp:BoundField DataField="site_de_stockage.nom" HeaderText="Site de stockage" SortExpression="id_site_de_stockage" />
            <asp:BoundField DataField="quantite" HeaderText="quantite" SortExpression="quantite" />
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

        
        <asp:ObjectDataSource ID="odsPlacer" runat="server" SelectMethod ="Get" TypeName="GestMat.dto.DtoPlacer" OldValuesParameterFormatString="original_{0}" >
            <SelectParameters>
                <asp:QueryStringParameter DefaultValue="-1" Name="idMatConso" QueryStringField="idMatConso" Type="Int32" />
            </SelectParameters>
                    </asp:ObjectDataSource>

</asp:Content>
