<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="vertareas.aspx.cs" Inherits="PruebaAsp.vertareas" EnableEventValidation="true" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <div class="container">
        <form id="form1" runat="server">
            <asp:Label CssClass="form-label" ID="lbl_filtrar" runat="server" Text="Filtrar por: "></asp:Label>
            <div class="row">
                <div class="col-2">
                    <asp:Label CssClass="form-label" ID="lbl_title_bus" runat="server" Text="Titulo"></asp:Label>
                    <asp:TextBox CssClass="form-control" ID="txt_title_bus" runat="server"></asp:TextBox>
                </div>
                <div class="col-2">
                    <asp:Label CssClass="form-label" ID="lbl_descri_bus" runat="server" Text="Descripcion"></asp:Label>
                    <asp:TextBox CssClass="form-control" ID="txt_descri_bus" runat="server"></asp:TextBox>
                </div>
                <div class="col-2">
                    <asp:Label CssClass="form-label" ID="lbl_venci_bus" runat="server" Text="Fecha Vencimiento"></asp:Label>
                    <asp:TextBox CssClass="form-control" ID="txt_venci_bus" runat="server"></asp:TextBox>
                </div>
                <div class="col-2">
                    <asp:Label CssClass="form-label" ID="lbl_prioridad_bus" runat="server" Text="Prioridad"></asp:Label>
                    <asp:DropDownList CssClass="btn btn-outline-dark dropdown-toggle form-select" ID="drp_prioridad_bus" runat="server">
                        <asp:ListItem Value=""></asp:ListItem>
                        <asp:ListItem Value="Baja">Baja</asp:ListItem>
                        <asp:ListItem Value="Media">Media</asp:ListItem>
                        <asp:ListItem Value="Alta">Alta</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="col-2">
                    <asp:Label CssClass="form-label" ID="lbl_estado_bus" runat="server" Text="Estado"></asp:Label>
                    <asp:DropDownList CssClass="btn btn-outline-dark dropdown-toggle form-select" ID="drp_estado_bus" runat="server">
                        <asp:ListItem Value=""></asp:ListItem>
                        <asp:ListItem Value="1">Finalizada</asp:ListItem>
                        <asp:ListItem Value="0">Activa</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="col-2">
                    <asp:Button CssClass="btn btn-outline-primary" ID="btn_busqueda" runat="server" Text="Filtrar" OnClick="btn_busqueda_Click" />
                </div>
            </div>

            <div class="my-2">
            <asp:GridView CssClass="table table-hover" ID="gvTareas" runat="server" AutoGenerateColumns="false">
                <Columns>
                    <asp:BoundField DataField="id" HeaderText="Id" />
                    <asp:BoundField DataField="user_id" HeaderText="User id" />
                    <asp:BoundField DataField="title" HeaderText="Titulo" />
                    <asp:BoundField DataField="description" HeaderText="Descripcion" />
                    <asp:BoundField DataField="due_date" HeaderText="Fecha Vencimiento" />
                    <asp:BoundField DataField="priority" HeaderText="Prioridad" />
                    <asp:BoundField DataField="completed" HeaderText="Estado" />
                    <asp:BoundField DataField="created_at" HeaderText="Fecha Creacion" />
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:Button CssClass="btn btn-outline-primary" ID="btnActualizar" Text="Actualizar" runat="server" OnClick="btnActualizar_Click" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:Button CssClass="btn btn-outline-danger" ID="btnEliminar" Text="Eliminar" runat="server" OnClick="btnEliminar_Click" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
            <asp:Button CssClass="btn btn-outline-primary my-2" ID="btn_agregar" runat="server" Text="Agregar Tarea" OnClick="btn_agregar_Click" />
            <asp:Button CssClass="btn btn-outline-warning my-2" ID="btn_logout" runat="server" Text="Cerrar Sesion" OnClick="btn_logout_Click" />
                </div>
        </form>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
</body>
</html>
