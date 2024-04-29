<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="crearTarea.aspx.cs" Inherits="PruebaAsp.crearTarea" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
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
                    <asp:ListItem>Baja</asp:ListItem>
                    <asp:ListItem>Media</asp:ListItem>
                    <asp:ListItem>Alta</asp:ListItem>
                </asp:DropDownList>

                <asp:Label CssClass="form-label" ID="lbl_archivo" runat="server" Text="Cargar Archivo"></asp:Label>
                <asp:FileUpload CssClass="form-control" ID="fl_archivo" runat="server" />

                <asp:Button CssClass="btn btn-outline-primary my-2" ID="btn_save_tarea" runat="server" Text="Guardar" OnClick="btn_save_tarea_Click" />
            </div>
        </form>
    </div>
</body>
</html>
