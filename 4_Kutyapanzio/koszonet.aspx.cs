using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _4_Kutyapanzio
{
    public partial class koszonet : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            l_valasz.Text = "Kedves ";
            string valasz="";
            lock (Session)
            {
                if (Session["Nev"]!=null)
                {
                    valasz += (String)Session["Nev"] + " köszönjük rendelését. <br> Ön a következőket választotta: " + (String)Session["Etkezes"];
                }
                if (Session["Extra"]!=null)
                {
                    valasz += "<br> Extra: <br>" + (String)Session["Extra"];
                }
                if (Session["Osszeg"]!=null)
                {
                    valasz += "<br> a fizetendő összeg " + Session["Napok"] + " napra : " + Session["Osszeg"];
                }
                if (valasz!=null)
                {
                    l_valasz.Text += l_valasz.Text + valasz;
                }
                else
                {
                    l_valasz.Text = "Nem rendelt semmit";
                }

            }
            l_valasz.Text = valasz;
        }
    }
}