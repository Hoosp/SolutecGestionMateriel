<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ModifierMatNonConsoForm.aspx.cs" Inherits="GestMat.ModifierMatNonConsoForm" %>

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
                    <asp:Label ID="lbl_idMatNonConso" runat="server" Text="ID"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="tbx_idMatNonConso" runat="server"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>

                        <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="lbl_NomMatNonConso" runat="server" Text="Nom"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="tbx_NomMatNonConso" runat="server"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>

                         <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="lbl_SalleMatNonConso" runat="server" Text="Salle"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                     <asp:DropDownList ID="ddl_SalleMatNonConso" runat="server" DataSourceID="odsSalle" DataTextField="nom" DataValueField="id_salle"/>
                </asp:TableCell>
            </asp:TableRow>

                        <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="lbl_EtatMatNonConso" runat="server" Text="Etat"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                            <asp:DropDownList ID="ddl_Etat" runat="server"/>
                </asp:TableCell>
            </asp:TableRow>



            <asp:TableRow>
            <asp:TableCell>
                <asp:Button ID="btn_OKModifierMatNonConso" runat="server" Text="Valider" OnClick="Btn_OKModifierMatNonConso_Click" />

                </asp:TableCell>
            <asp:TableCell>
                    
                <asp:Button ID="btn_AnnulerModifierMatNonConso" runat="server" Text="Annuler" OnClick="Btn_AnnulerModifierMatNonConso_Click"/>
                </asp:TableCell>
            </asp:TableRow>
  

        </asp:Table>
    </form>
             <asp:ObjectDataSource ID="odsSalle" runat="server" SelectMethod ="Get" TypeName="GestMat.dto.DtoListeSalle" OldValuesParameterFormatString="original_{0}" ></asp:ObjectDataSource>

</body>
</html>
