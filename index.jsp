<%-- 
    Document   : index
    Created on : 4 de out de 2020, 11:27:33
    Author     : Isadora
--%>

<%@page import="br.edu.fatecpg.poo.p1.Disciplina"  %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
Disciplina pessoa = new Disciplina("Matérias","ementa", 4, 10);
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Prova - POO - P1</title>
    </head>
    <body>
        
        <h1>P1: Programação Orientada a Objetos</h1>
          <%@include file="WEB-INF/menu.jspf"%>
        <h2>Nome: Isadora Alves de Souza</h2>
        <h2>RA: 1290481912041</h2>
        <h2>Disciplinas Matriculadas: 7</h2>
       
    </body>
</html>
