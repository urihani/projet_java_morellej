<%--
  Created by IntelliJ IDEA.
  User: julienmorelle
  Date: 06/12/2022
  Time: 16:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<nav class="navbar navbar-expand-lg bg-light mb-4">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">Gestion des absences</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="<%=application.getContextPath()%>/do/index">Accueil</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="<%=application.getContextPath()%>/do/etudiants">Etudiants</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Notes</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link">Absences</a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<%--TODO--%>
<%--On active ou désactive les liens du menu--%>
<script>
    $(document).ready(function () {
        var url = window.location;
        $('a[href="' + url + '"]').addClass('active');
    });
</script>
