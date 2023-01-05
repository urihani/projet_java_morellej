<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="etudiant" class="com.iut2.projet_java_morellej.Etudiant" scope="request"/>
<jsp:useBean id="nbAbsences" type="java.lang.Integer" scope="request"/>

<h2>Fiche de <jsp:getProperty name="etudiant" property="prenom"/> <jsp:getProperty name="etudiant" property="nom"/></h2>

<hr class="hr" />

<span class="badge badge-primary"><jsp:getProperty name="etudiant" property="groupe"/></span>
<div>Nom :
    <jsp:getProperty name="etudiant" property="nom"/>
</div>
<div>Prénom :
    <jsp:getProperty name="etudiant" property="prenom"/>
</div>
<div>Nombre d'absences : <%=nbAbsences%>
</div>

<br>

<a href="<%= application.getContextPath()%>/do/index">Retour à la liste des étudiants</a>