<%@ page import="com.iut2.projet_java_morellej.GestionFactory" %>
<%@ page import="com.iut2.projet_java_morellej.Etudiant" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>

<h1>Projet - étape 1</h1>

<h2>Liste des étudiants</h2>

<% for(Etudiant etudiant : GestionFactory.getEtudiants()) { %>
<div>
    <a href="details.jsp?id=<%=etudiant.getId()%>"><%=etudiant.getPrenom()%> <%=etudiant.getNom()%></a>
</div>
<% } %>

</body>
</html>