<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="etudiant" class="com.iut2.projet_java_morellej.Etudiant" scope="request"/>
<jsp:useBean id="nbAbsences" type="java.lang.Integer" scope="request"/>
<jsp:useBean id="nom" class="java.lang.String" scope="request"/>
<jsp:useBean id="prenom" class="java.lang.String" scope="request"/>
<jsp:useBean id="groupe" class="java.lang.String" scope="request"/>

<h2>Fiche de <%=prenom%> <%=nom%></h2>

<hr class="hr" />

<span class="badge badge-primary"><%=groupe%></span>
<div>Nom :
    <%=nom%>
</div>
<div>Prénom :
    <%=prenom%>
</div>
<div>Nombre d'absences : <%=nbAbsences%>
</div>

<br>

<a href="<%= application.getContextPath()%>/do/index">Retour à la liste des étudiants</a>