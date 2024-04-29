<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="PruebaAsp.Login" %>

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
        <div">
            <asp:Label CssClass="form-label" ID="lbl_usuario" runat="server" Text="Usuario"></asp:Label>
            <asp:TextBox CssClass="form-control" ID="txt_usuario" runat="server"></asp:TextBox>

            <asp:Label CssClass="form-label" ID="lbl_contraseña" runat="server" Text="Contraseña"></asp:Label>
            <asp:TextBox CssClass="form-control" ID="txt_contraseña" runat="server"></asp:TextBox>

            <asp:Button CssClass="btn btn-outline-primary my-2" ID="btn_login" runat="server" Text="Login" OnClick="btn_login_Click" />

            <asp:Button CssClass="btn btn-outline-primary my-2" ID="btn_crear_user" runat="server" Text="Crear Usuario" OnClick="btn_crear_user_Click" />
        </div>
    </form>
        </div>
</body>
</html>
