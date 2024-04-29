<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="actualizarTarea.aspx.cs" Inherits="PruebaAsp.actualizarTarea" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" />
<link href="style.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <div class="container forms">
    <form id="form1" runat="server">
        <div>
            <asp:Label CssClass="form-label" ID="lbl_title" runat="server" Text="Titulo"></asp:Label>
            <asp:TextBox CssClass="form-control" ID="txt_title" runat="server"></asp:TextBox>

            <asp:Label CssClass="form-label" ID="lbl_descripcion" runat="server" Text="Descripcion"></asp:Label>
            <asp:TextBox CssClass="form-control" ID="txt_descripcion" runat="server"></asp:TextBox>

            <asp:Label CssClass="form-label" ID="lbl_vencimiento" runat="server" Text="Fecha Vencimiento Ejm: 2024-04-28"></asp:Label>
            <asp:TextBox CssClass="form-control" ID="txt_vencimiento" runat="server"></asp:TextBox>

            <asp:Label CssClass="form-label" ID="lbl_prioridad" runat="server" Text="Prioridad"></asp:Label>
            <asp:DropDownList CssClass="btn btn-outline-dark dropdown-toggle form-select" ID="drp_prioridad" runat="server">
                <asp:ListItem Value="Baja">Baja</asp:ListItem>
                <asp:ListItem Value="Media">Media</asp:ListItem>
                <asp:ListItem Value="Alta">Alta</asp:ListItem>
            </asp:DropDownList>

            <asp:Label CssClass="form-label" ID="lbl_estado" runat="server" Text="Estado"></asp:Label>
            <asp:DropDownList CssClass="btn btn-outline-dark dropdown-toggle form-select" ID="drp_estado" runat="server">
                <asp:ListItem Value="1">Sin Finalizar</asp:ListItem>
                <asp:ListItem Value="0">Finalizada</asp:ListItem>
            </asp:DropDownList>

            <asp:Button CssClass="btn btn-outline-primary my-2" ID="Button1" runat="server" Text="Actualizar" OnClick="Button1_Click" />
        </div>
    </form>
        </div>
</body>
</html>
