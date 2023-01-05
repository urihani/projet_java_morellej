<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="url" class="java.lang.String" scope="request"/>

<nav class="navbar navbar-expand-lg bg-light mb-4">
    <div class="container-fluid">
        <a class="navbar-brand text-secondary" href="#">Gestion des étudiants</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link<%= url.equals("index") ? " active" : "" %>" aria-current="page"
                       href="<%=application.getContextPath()%>/do/index">Accueil</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link<%= url.equals("etudiants") ? " active" : "" %>"
                       href="<%=application.getContextPath()%>/do/etudiants">Etudiants</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link<%= url.equals("notes") ? " active" : "" %>" href="#">Notes</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link<%= url.equals("absences") ? " active" : "" %>">Absences</a>
                </li>
            </ul>
        </div>
    </div>
</nav>
