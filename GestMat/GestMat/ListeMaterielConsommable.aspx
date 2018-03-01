<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ListeMaterielConsommable.aspx.cs" Inherits="GestMat._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <h1>Liste des materiels consommables</h1>
        <div>
            <asp:Label ID="lbl_AjouterMatConso" runat="server" Text="Remplir les champs pour ajouter un materiel consommable : "></asp:Label>
        </div>

    
            <asp:Table ID="Table1" runat="server" Width="345px">

                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="lbl_NomMatConso" runat="server" Text="Nom"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox ID="tbx_Nom" runat="server"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>

                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="lbl_CodeBarre" runat="server" Text="Code barre"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox ID="tbx_CodeBarre" runat="server"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>

            </asp:Table>
      

        <div>
            <asp:Button ID="btnAjouterMatConso" runat="server" Text="Ajouter un nouveau materiel consommable" OnClick="BtnAjouterMatConso_Click" />   
        </div>
        
       

        

           <asp:GridView ID="gvMaterielConsommable" runat="server" OnRowCommand="BtnGrid" AutoGenerateColumns="False" DataSourceID="odsMaterielConsommable" style="float:left;" CellPadding="4" ForeColor="#333333" GridLines="None" Width="90%">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            
            <asp:HyperLinkField DataNavigateUrlFields="id_mat_conso" DataNavigateUrlFormatString="DetailsMatConso.aspx?idMatConso={0}" DataTextField="id_mat_conso" HeaderText="ID" />
            <asp:BoundField DataField="nom" HeaderText="Nom" SortExpression="nom" />
            <asp:BoundField DataField="code_barres" HeaderText="Code barre" SortExpression="code_barres" />



            <asp:TemplateField HeaderText="">
                <ItemTemplate>
                     <asp:Button ID="btnModifier" runat="server" Text="Modifier" CommandName="ModifierMatConso" CommandArgument='<%# Eval("id_mat_conso") %>'></asp:Button>
               </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="">
                <ItemTemplate>
                     <asp:Button ID="btnSupprimer" runat="server" Text="Supprimer" CommandName="SupprimerMatConso" CommandArgument='<%# Eval("id_mat_conso") %>' ></asp:Button>
               </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="">
                <ItemTemplate>
                     <asp:Button ID="btnDemander" runat="server" Text="Demander" CommandName="DemanderMatConso" CommandArgument='<%# Eval("id_mat_conso") %>' ></asp:Button>
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

        
        <asp:ObjectDataSource ID="odsMaterielConsommable" runat="server" SelectMethod ="Get" TypeName="GestMat.dto.DtoListeMaterielConsommable" OldValuesParameterFormatString="original_{0}" ></asp:ObjectDataSource>
       




   <%-- <div class="jumbotron">
        <h1>ASP.NET</h1>
        <p class="lead">ASP.NET is a free web framework for building great Web sites and Web applications using HTML, CSS, and JavaScript.</p>
        <p><a href="http://www.asp.net" class="btn btn-primary btn-lg">Learn more &raquo;</a></p>
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2>Getting started</h2>
            <p>
                ASP.NET Web Forms lets you build dynamic websites using a familiar drag-and-drop, event-driven model.
            A design surface and hundreds of controls and components let you rapidly build sophisticated, powerful UI-driven sites with data access.
            </p>
            <p>
                <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301948">Learn more &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Get more libraries</h2>
            <p>
                NuGet is a free Visual Studio extension that makes it easy to add, remove, and update libraries and tools in Visual Studio projects.
            </p>
            <p>
                <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301949">Learn more &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Web Hosting</h2>
            <p>
                You can easily find a web hosting company that offers the right mix of features and price for your applications.
            </p>
            <p>
                <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301950">Learn more &raquo;</a>
            </p>
        </div>
    </div>--%>

</asp:Content>
