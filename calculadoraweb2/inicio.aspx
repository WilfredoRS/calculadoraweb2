<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="inicio.aspx.cs" Inherits="calculadoraweb2.inicio" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Calculadora</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
        }
        .cuadro-rojo {
            background-color: #ff4d4d; 
            padding: 20px;
            width: 300px;
            border-radius: 8px;
            color: white;
            margin: 40px auto;
        }
        .cuadro-rojo input, .cuadro-rojo select {
            width: 100%;
            margin-bottom: 10px;
            padding: 5px;
            box-sizing: border-box;
        }
        .cuadro-rojo h1 {
            font-size: 20px;
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="cuadro-rojo">
            <h1>CALCULADORA WEB</h1>
            
            <asp:Label ID="Label1" runat="server" Text="Número 1:"></asp:Label><br />
            <asp:TextBox ID="tnum1" runat="server"></asp:TextBox><br />

            <asp:Label ID="Label2" runat="server" Text="Número 2:"></asp:Label><br />
            <asp:TextBox ID="tnum2" runat="server"></asp:TextBox><br />

            <asp:Label ID="Label4" runat="server" Text="Operación:"></asp:Label><br />
            <asp:DropDownList ID="doperacion" runat="server">
                <asp:ListItem Text="Suma (+)" Value="0" />
                <asp:ListItem Text="Resta (-)" Value="1" />
                <asp:ListItem Text="Multiplicación (*)" Value="2" />
                <asp:ListItem Text="División (/)" Value="3" />
                <asp:ListItem Text="Potencia Cuadrado (x²)" Value="4" />
                <asp:ListItem Text="Exponencial (e^x)" Value="5" />
                <asp:ListItem Text="Base 10 (10^x)" Value="6" />
            </asp:DropDownList><br /><br />

            <asp:Button ID="Button1" runat="server" Text="Calcular" OnClick="Button1_Click" /><br /><br />

            <asp:Label ID="Label3" runat="server" Text="Resultado: "></asp:Label>
            <asp:Label ID="lresultado" runat="server" Text="0"></asp:Label>
        </div>
    </form>
</body>
</html>