<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="etudiant" class="com.iut2.projet_java_morellej.Etudiant" scope="request"/>
<jsp:useBean id="nbAbsences" type="java.lang.Integer" scope="request"/>
<html>
<head>
    <title><%= application.getInitParameter("title")%></title>
</head>
<body>

<jsp:include page='<%= application.getInitParameter("header")%>'/>

<h1>Projet - étape 2</h1>
<h2>fiche détaillée d'un étudiant</h2>

<div>Nom : <jsp:getProperty name="etudiant" property="nom"/></div>
<div>Prénom : <jsp:getProperty name="etudiant" property="prenom"/></div>
<div>Nombre d'absences : <%=nbAbsences%></div>

<br>

<a href="index.jsp">Retour à la liste des étudiants</a>

<jsp:include page='<%= application.getInitParameter("footer")%>'/>

</body>
</html>
