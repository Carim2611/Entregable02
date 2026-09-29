<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Cinestar.Master" AutoEventWireup="true" CodeBehind="cine.aspx.cs" Inherits="webCineStar_WebForms_202620.Views.cine" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
	<div class="cine-info">
		<div class="cine-info datos">
			<asp:Repeater ID="rptCine" runat="server">
				<ItemTemplate>
					<h2><%#Eval("RazonSocial")%></h2>
					<p><%#Eval("Direccion")%> - <%#Eval("Detalle")%></p>
					<p>Teléfono: <%#Eval("Telefonos")%></p>
				</ItemTemplate>
			</asp:Repeater>
			<br/>
			<div class="tabla">
				<asp:Repeater ID="rptCineTarifas" runat="server">
					<ItemTemplate>
						<div class="<%#Container.ItemIndex % 2 == 0 ? "fila" : "fila impar"%>">
							<div class="celda-titulo"><%#Eval("DiasSemana")%></div>
							<div class="celda"><%#Eval("Precio")%></div>
						</div>	
					</ItemTemplate>
				</asp:Repeater>
			</div>
			<div class="aviso">
				<p>A partir del 1ro de julio de 2016, Cinestar Multicines realizará el cobro de la comisión de S/. 1.00 adicional al tarifario vigente, a los usuarios que compren sus entradas por el aplicativo de Cine Papaya para Cine Star Comas, Excelsior, Las Américas, Benavides, Breña, San Juan, UNI, Aviación, Sur, Porteño, Tumbes y Tacna.</p>
			</div>
		</div>
		<asp:Image Id="imgCine" runat="server"/>
		<br/><br/><h4>Los horarios de cada función están sujetos a cambios sin previo aviso.</h4><br/>
		<div class="cine-info peliculas">
			<div class="tabla">
				<div class="fila">
					<div class="celda-cabecera">Películas</div>
					<div class="celda-cabecera">Horarios</div>
				</div>
				<asp:Repeater ID ="rptCinePeliculas" runat="server">
					<ItemTemplate>
						<div class="<%#Container.ItemIndex % 2 == 0 ? "fila" : "fila impar"%>">
							<div class="celda-titulo"><%#Eval("Titulo")%></div>
							<div class="celda"><%#Eval("Horarios")%></div>
						</div>
					</ItemTemplate>
				</asp:Repeater>
			</div>
		</div>
	</div>
	<div>
		<img style="float:left;" src="../Contents/img/cine/1.3.jpg" alt="Imagen del cine"/>
		<span class="tx_gris">Precios de los juegos: desde S/1.00 en todos los Cine Star.<br/>
			Horario de atención de juegos es de 12:00 m hasta las 10:30 pm. 
			<br/><br/>
			Visitános y diviértete con nosotros. 
			<br/><br/>
			<b>CINESTAR</b>, siempre pensando en tí. 
		</span>		
	</div>
</asp:Content>