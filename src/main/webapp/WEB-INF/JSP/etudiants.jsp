<%@ page import="com.iut2.projet_java_morellej.GestionFactory" %>
<%@ page import="com.iut2.projet_java_morellej.Etudiant" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<h2 class="text-primary">Liste des étudiants</h2>

<hr class="hr"/>

<ul class="list-group list-group-light">
    <% for (Etudiant etudiant : GestionFactory.getEtudiants()) { %>
    <li class="list-group-item d-flex justify-content-between align-items-center">
        <a href="<%= application.getContextPath()%>/do/details?id=<%=etudiant.getId()%>"><%=etudiant.getPrenom()%> <%=etudiant.getNom()%>
        </a>
        <span class="badge badge-primary"><%=etudiant.getGroupe()%></span>
    </li>
    <% } %>
</ul>
