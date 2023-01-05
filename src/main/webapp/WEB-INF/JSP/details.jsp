<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="etudiant" class="com.iut2.projet_java_morellej.Etudiant" scope="request"/>
<jsp:useBean id="nbAbsences" type="java.lang.Integer" scope="request"/>
<jsp:useBean id="moyenne" type="java.lang.Integer" scope="request"/>
<jsp:useBean id="nom" class="java.lang.String" scope="request"/>
<jsp:useBean id="prenom" class="java.lang.String" scope="request"/>
<jsp:useBean id="groupe" class="java.lang.String" scope="request"/>

<h2 class="text-primary">Fiche de <%=prenom%> <%=nom%>
</h2>

<hr class="hr"/>

<div class="row d-flex justify-content-center">
    <div class="card" style="width: 18rem;">
        <div class="card-body">
            <h5 class="card-title"><%=prenom%> <%=nom%>
            </h5>
            <span class="badge badge-primary"><%=groupe%></span>
            <div>Nombre d'absences : <%=nbAbsences%>
            </div>
            <div>Moyenne :
                <%=moyenne%>
            </div>
        </div>
    </div>
</div>

<br>

<a href="<%= application.getContextPath()%>/do/index">Retour à la liste des étudiants</a>