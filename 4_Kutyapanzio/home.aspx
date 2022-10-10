<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="_4_Kutyapanzio.home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="Styles/KutyaStyleSheet.css" rel="stylesheet" />
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 630px;
        }
        .auto-style2 {
            width: 169px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Kutyapanzió</h1>
            <p>
                <strong>Kedves Látogató!</strong>
            </p>
            <p>
                Amíg Ön nyaral mi vigyázunk kedvencére.&nbsp;&nbsp;
                <asp:Image ID="Image1" runat="server" Height="130px" ImageAlign="TextTop" ImageUrl="~/Images/Kutyapanzio_logo.gif" Width="160px" />
&nbsp;&nbsp; Vegye igénybe szolgáltatásainkat, nem fog csalódni.</p>
            <table style="width:100%; margin:30px;">
                <tr>
                    <td class="auto-style1">Elhelyezés kezdete:</td>
                    <td>Elhelyezés vége:</td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:TextBox ID="tb_kezdoDatum" runat="server" TextMode="Date"></asp:TextBox>
&nbsp;
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tb_kezdoDatum" ErrorMessage="Adjon meg kezdő dátumot" Display="Dynamic"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                        <asp:TextBox ID="tb_datumVege" runat="server" TextMode="Date"></asp:TextBox>
&nbsp;
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="tb_datumVege" ErrorMessage="Adjon meg vég dátumot" Display="Dynamic"></asp:RequiredFieldValidator>
                    &nbsp;
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="tb_kezdoDatum" ControlToValidate="tb_datumVege" Display="Dynamic" ErrorMessage="A kezdő dátum nem lehet nagyobb" Operator="GreaterThan" Type="Date"></asp:CompareValidator>
                    </td>
                </tr>
            </table>
        </div>
    <p style="margin-left:30px;">
        <strong>Étkezés:</strong>
        <asp:RadioButtonList ID="rbList_etkezes" runat="server" RepeatDirection="Horizontal"> 
            <asp:ListItem Value="300">Étkezés biztosítása</asp:ListItem>
            <asp:ListItem Value="0">Hoz ételt</asp:ListItem>
        </asp:RadioButtonList>
    </p>
        <p style="margin-left:30px;">
            <strong>
                Válasszon az extra szolgáltatások közül
            </strong>
        </p>
        <p style="margin-left:30px;">
            <asp:CheckBoxList ID="cblist_extra" runat="server">
                <asp:ListItem Text="Pórázon sétáltatás" Value="300" ></asp:ListItem>
                <asp:ListItem Text="Diéta" Value="400" ></asp:ListItem>
                <asp:ListItem Text="Kozmetika" Value="600" ></asp:ListItem>
                <asp:ListItem Text="Műtét utáni ápolás" Value="800" ></asp:ListItem>
                <asp:ListItem Text="Szállítás " Value="400" ></asp:ListItem>
            </asp:CheckBoxList>
            </p>
        <p style="margin-left:30px;">
            Napi felügyeleti díj: 1500Ft</p>
        <p style="margin-left:30px;">
            <table style="width:100%;">
                <tr>
                    <td class="auto-style2"><strong>Igénylő adatai:</strong></td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">Név:</td>
                    <td>
                        <asp:TextBox runat="server" ID="tb_nev" />&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Adja meg a nevét" ControlToValidate="tb_nev" Display="Dynamic"></asp:RequiredFieldValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">E-mail cím:</td>
                    <td>
                        <asp:TextBox runat="server" ID="tb_email"/>&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Adja meg az email cimet" ControlToValidate="tb_email" Display="Dynamic"></asp:RequiredFieldValidator>
                    &nbsp;
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="tb_email" Display="Dynamic" ErrorMessage="Rossz email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </p>
        <p style="margin-left:30px;">
            <asp:Button Text="Submit" runat="server" OnClick="Unnamed1_Click" />&nbsp; 
            <asp:Button Text="Mégsem" runat="server" />
        </p>
            
    </form>
    </body>
</html>
