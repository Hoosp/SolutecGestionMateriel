// Validating Empty Field
function check_empty() {



    
    if (document.getElementById('idSdS').textContent == "" || document.getElementById('qte').textContent == "") {
        alert("Fill All Fields !");
    } else {
        //document.getElementById('form').submit();
        alert("Form Submitted Successfully...");
    }
}
//Function To Display Popup
function div_show() {
    document.getElementById('popup').style.display = "block";
}
//Function to Hide Popup
function div_hide() {
    document.getElementById('popup').style.display = "none";
}



function showOrHidePopup() {

    if (document.getElementById('popup').style.display == "inline-block") {
        document.getElementById('popup').style.display = "none";
    } else {
        document.getElementById('popup').style.display = "inline-block";
    }


}

function PopupCentrer(page, largeur, hauteur, options) {

    document.getElementById('thePage').style.opacity = 0.6;
    //document.getElementById('thepage').style.color = "blue";

    newwindow = window.open(page, 'name', 'height=200,width=150');

    var top = (screen.height - hauteur) / 2;
    var left = (screen.width - largeur) / 2;
    window.open(page, "", "top=" + top + ",left=" + left + ",width=" + largeur + ",height=" + hauteur + "," + options);
    page.focus();
}
