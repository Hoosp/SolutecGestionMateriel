using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GestMat
{
    public partial class SiteMaster : MasterPage
    {
        // ce dictionnaire comprends des message d'erreur à afficher associés à des clefs permettant de les appeller
        private static Dictionary<string, string> errorDescDict = new Dictionary<string, string>() {
            {" wrongDate", "La date saisie est invalide"},
            {" wrongInput", "La saisie est invalide"},
            { "wrongId", "L'ID passé en paramètre est invalide ou inconnu"},
            { "default", "Une erreur non identifiée est survenue"}
        };
        private static Dictionary<string, string> messageDescDict = new Dictionary<string, string>() {
            {"valMCDem", "Materiel consommable commandé avec succès. En attente de validation."}
        };

        protected void Page_Load(object sender, EventArgs e)
        {
            //Gestion des messages d'erreur
            if (Request.QueryString["errorLog"] != null && Request.QueryString["errorLog"] != "")
            {
                string errorLog = Request.QueryString["errorLog"];
                errorLog = errorDescDict.ContainsKey(errorLog) ? errorLog : "default";
                lblMessage.Text = errorDescDict[errorLog];
                pnlMessage.Visible = true;
                lblMessage.Visible = true;
                pnlMessage.CssClass = "errorzone";
                lblMessage.CssClass = "errorzone";
            }
            else if (Request.QueryString["messageLog"] != null && Request.QueryString["messageLog"] != "")
            {
                string errorLog = Request.QueryString["errorLog"];
                errorLog = errorDescDict.ContainsKey(errorLog) ? errorLog : "default";
                lblMessage.Text = errorDescDict[errorLog];
                pnlMessage.Visible = true;
                lblMessage.Visible = true;
                pnlMessage.CssClass = "messagezone";
                lblMessage.CssClass = "messagezone";
            }
            else
            {
                lblMessage.Text = "";
                lblMessage.Visible = false;
                lblMessage.Visible = false;
            }

        }
    }
}