<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ModifierDetailsMatConsoForm.aspx.cs" Inherits="GestMat.ModifierDetailsMatConsoForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server" >

   
        <asp:Table ID="Table1" runat="server" Width="345px">

            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="lbl_idMatConso" runat="server" Text="ID Mat Conso"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="tbx_idMatConso" runat="server"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>

                        <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="lbl_NomMatConso" runat="server" Text="Nom Mat Conso"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="tbx_NomMatConso" runat="server"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            
                        <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="lbl_SdS" runat="server" Text="Site de stockage"></asp:Label>
                    
                   
                </asp:TableCell>
                <asp:TableCell>
                            <asp:DropDownList ID="ddl_nomSdS" runat="server" DataSourceID="odsSdS" DataTextField="nom" DataValueField="id_site_de_stockage">
                        </asp:DropDownList>
                </asp:TableCell>
            </asp:TableRow>
            
                                    <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="lbl_Qte" runat="server" Text="Quantité"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                            <asp:TextBox ID="tbx_Qte" runat="server"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            
             

            <asp:TableRow>
            <asp:TableCell>
                <asp:Button ID="btn_OKModifierDetailsMatConso" runat="server" Text="Valider" OnClick="Btn_OKModifierDetailsMatConso_Click" />

                </asp:TableCell>
            <asp:TableCell>
                    
                <asp:Button ID="btn_AnnulerModifierDetailsMatConso" runat="server" Text="Annuler" OnClick="Btn_AnnulerModifierDetailsMatConso_Click"/>
                </asp:TableCell>
            </asp:TableRow>
  

        </asp:Table>
    </form>
             <asp:ObjectDataSource ID="odsSdS" runat="server" SelectMethod ="Get" TypeName="GestMat.dto.DtoListeSiteDeStockage" OldValuesParameterFormatString="original_{0}" ></asp:ObjectDataSource>

</body>
</html>
