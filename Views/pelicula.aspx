<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Cinestar.Master" AutoEventWireup="true" CodeBehind="pelicula.aspx.cs" Inherits="webCineStar_WebForms_202620.Views.pelicula" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <br/><h1>Cartelera</h1><br/>
	<asp:Repeater ID="rptPelicula" runat="server">
		<ItemTemplate>
			<div class="contenido-pelicula">
				<div class="datos-pelicula">
					<h2><%#Eval("Titulo")%></h2>
					<p><%#Eval("Sinopsis")%></p>
					<br/>
					<div class="tabla">
						<div class="fila">
							<div class="celda-titulo">Título Original :</div>
							<div class="celda"><%#Eval("Titulo")%></div>
						</div>
						<div class="fila">
							<div class="celda-titulo">Estreno :</div>
							<div class="celda"><%#Eval("FechaEstreno")%></div>
						</div>
						<div class="fila">
							<div class="celda-titulo">Género :</div>
							<div class="celda"><%#Eval("Geneross")%></div>
						</div>
						<div class="fila">
							<div class="celda-titulo">Director :</div>
							<div class="celda"><%#Eval("Director")%></div>
						</div>
						<div class="fila">
							<div class="celda-titulo">Reparto :</div>
							<div class="celda"><%#Eval("Reparto")%></div>
						</div>
					</div>
				</div>
				<img src="../Contents/img/pelicula/<%#Eval("id")%>.jpg" width="160" height="226"><br/><br/>
			</div>
			<div class="pelicula-video">
				<embed src="https://www.youtube.com/v/<%#Eval("Link")%>" type="application/x-shockwave-flash" allowscriptaccess="always" allowfullscreen="true" width="580" height="400">
			</div>
		</ItemTemplate>
	</asp:Repeater>
</asp:Content>