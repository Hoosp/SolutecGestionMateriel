<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ModifierMatConsoForm.aspx.cs" Inherits="GestMat.ModifierMatConsoForm" %>

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
                    <asp:Label ID="lbl_idMatConso" runat="server" Text="ID"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="tbx_idMatConso" runat="server"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>

                        <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="lbl_NomMatConso" runat="server" Text="Nom"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="tbx_NomMatConso" runat="server"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>

                        <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="lbl_CodeBarreMatConso" runat="server" Text="Code Barre"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                            <asp:TextBox ID="tbx_CodeBarreMatConso" runat="server"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>



            <asp:TableRow>
            <asp:TableCell>
                <asp:Button ID="btn_OKModifierMatConso" runat="server" Text="Valider" OnClick="Btn_OKModifierMatConso_Click" />

                </asp:TableCell>
            <asp:TableCell>
                    
                <asp:Button ID="btn_AnnulerModifierMatConso" runat="server" Text="Annuler" OnClick="Btn_AnnulerModifierMatConso_Click"/>
                </asp:TableCell>
            </asp:TableRow>
  

        </asp:Table>
    </form>
     
</body>
</html>
