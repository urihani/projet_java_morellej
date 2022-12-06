<%@ page import="com.iut2.projet_java_morellej.GestionFactory" %>
<%@ page import="com.iut2.projet_java_morellej.Etudiant" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title><%= application.getInitParameter("title")%></title>
</head>
<body>

<h1>Projet - étape 2</h1>
<h2>Liste des étudiants</h2>

<% for(Etudiant etudiant : GestionFactory.getEtudiants()) { %>
<div>
    <a href="ServletTraitementDetails?id=<%=etudiant.getId()%>"><%=etudiant.getPrenom()%> <%=etudiant.getNom()%></a>
</div>
<% } %>

</body>
</html>