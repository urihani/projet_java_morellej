<%@ page import="com.iut2.projet_java_morellej.Etudiant" %>
<%@ page import="com.iut2.projet_java_morellej.GestionFactory" %><%
    int id = Integer.valueOf(request.getParameter("id"));
    Etudiant etudiant = GestionFactory.getEtudiantById(id);
%><%--
  Created by IntelliJ IDEA.
  User: julienmorelle
  Date: 06/12/2022
  Time: 14:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<h1>Projet - étape 1</h1>

<h2>fiche détaillée d'un étudiant</h2>

<div>Nom : <%=etudiant.getNom()%></div>
<div>Prénom : <%=etudiant.getPrenom()%></div>
<div>Nombre d'absences : <%=GestionFactory.getAbsencesByEtudiantId(id)%></div>

<br>

<a href="index.jsp">Retour à la liste des étudiants</a>

</body>
</html>
