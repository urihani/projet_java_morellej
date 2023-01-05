<%@ page import="com.iut2.projet_java_morellej.GestionFactory" %>
<%@ page import="com.iut2.projet_java_morellej.Etudiant" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<h2>Liste des étudiants</h2>

<hr class="hr" />

<% for (Etudiant etudiant : GestionFactory.getEtudiants()) { %>
<div>
  <a href="<%= application.getContextPath()%>/do/details?id=<%=etudiant.getId()%>"><%=etudiant.getPrenom()%> <%=etudiant.getNom()%>
  </a>
</div>
<% } %>