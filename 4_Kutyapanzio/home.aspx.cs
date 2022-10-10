using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _4_Kutyapanzio
{
    public partial class home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                DateTime kezdet, veg;
                int sum = 0, napidij = 1500, napokSzama;
                kezdet =DateTime.Parse(tb_kezdoDatum.Text);
                veg = DateTime.Parse(tb_datumVege.Text);
                napokSzama = veg.Subtract(kezdet).Days;
                if (rbList_etkezes.SelectedIndex>=0)
                {
                    sum += int.Parse(rbList_etkezes.SelectedItem.Value);
                }
                lock (Session)
                {
                    Session["Nev"] = tb_nev.Text;
                    Session["Etkezes"] = rbList_etkezes.SelectedItem.Text;
                    foreach (ListItem item in cblist_extra.Items)
                    {
                        if (item.Selected && item.Text!="Szállítás")
                        {
                            Session["Extra"] += item.Text+", ";
                            sum += int.Parse(item.Value)*napokSzama;
                        }
                        else if (item.Selected && item.Text=="Szállítás")
                        {
                            Session["Extra"] += item.Text + " ";
                            sum += int.Parse(item.Value);
                        }
                    }
                    Session["Napok"] = napokSzama.ToString();
                    Session["Osszeg"] =( sum + (napidij*napokSzama)).ToString();
                }
                Response.Redirect("koszonet.aspx");
            }
        }
    }
}