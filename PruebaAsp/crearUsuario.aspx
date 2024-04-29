<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="crearUsuario.aspx.cs" Inherits="PruebaAsp.crearUsuario" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"/>
    <link href="style.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <div class="container forms">
    <form id="form1" runat="server">
        <div>
            <asp:Label CssClass="form-label" ID="lbl_username" runat="server" Text="Nombre de usuario"></asp:Label>
            <asp:TextBox CssClass="form-control" ID="txt_username" runat="server"></asp:TextBox>

            <asp:Label CssClass="form-label" ID="lbl_email" runat="server" Text="Email"></asp:Label>
            <asp:TextBox CssClass="form-control" ID="txt_email" runat="server"></asp:TextBox>

            <asp:Label CssClass="form-label" ID="lbl_pass" runat="server" Text="Contraseña"></asp:Label>
            <asp:TextBox CssClass="form-control" ID="txt_pass" runat="server"></asp:TextBox>

            <asp:Button CssClass="btn btn-outline-primary my-2" ID="brn_save_user" runat="server" Text="Guardar" OnClick="brn_save_user_Click"/>

            <asp:Label CssClass="form-label" ID="lbl_respuesta" runat="server" Text=""></asp:Label>
        </div>
    </form>
        </div>
</body>
</html>
