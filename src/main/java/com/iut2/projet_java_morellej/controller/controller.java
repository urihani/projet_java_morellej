package com.iut2.projet_java_morellej.controller;

import com.iut2.projet_java_morellej.Etudiant;
import com.iut2.projet_java_morellej.GestionFactory;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

public class controller extends HttpServlet {
    // URL
    private String urlIndex;
    private String urlDetails;

    // INIT
    public void init() throws ServletException {
        urlIndex = getInitParameter("urlIndex");
        urlDetails = getInitParameter("urlDetails");
    }

    // POST
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws IOException, ServletException {
        // on passe la main au GET
        doGet(request, response);
    }

    // GET
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws IOException, ServletException {


        // On récupère la méthode d'envoi de la requête
        String methode = request.getMethod().toLowerCase();

        // On récupère l'action à exécuter
        String action = request.getPathInfo();
        getServletContext().log("Gestion Absences - Action demandée : " + action);

        if (action == null) {
            action = "/index";
            getServletContext().log("Gestion Absences - Action par défaut : " + action);
        }

        // Exécution action
        if (methode.equals("get") && action.equals("/index")) {
            doIndex(request, response);

        } else if (methode.equals("get") && action.equals("/details")) {
            doDetails(request, response);

        } else {
            // Autres cas
            doIndex(request, response);
        }
    }

    //
    private void doIndex(HttpServletRequest request,
                       HttpServletResponse response) throws ServletException, IOException {
        loadJSP(urlIndex, request, response);
    }

    //
    private void doDetails(HttpServletRequest request,
                            HttpServletResponse response) throws ServletException, IOException {
        // Récupérer l'id
        int id = Integer.valueOf(request.getParameter("id"));

        // Récupérer les détails
        Etudiant etudiant = GestionFactory.getEtudiantById(id);
        Integer nbAbsences = GestionFactory.getAbsencesByEtudiantId(id);

        // Mettre les détails dans la requête
        request.setAttribute("etudiant", etudiant);
        request.setAttribute("nbAbsences", nbAbsences);

        // Forward vers details.jsp
        loadJSP(urlDetails, request, response);
    }

    /**
     * Charge la JSP indiquée en paramètre
     *
     * @param url
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
    public void loadJSP(String url, HttpServletRequest request,
                        HttpServletResponse response) throws ServletException, IOException {

//		L'interface RequestDispatcher permet de transférer le contrôle à une autre servlet
//		Deux méthodes possibles :
//		- forward() : donne le contrôle à une autre servlet. Annule le flux de sortie de la servlet courante
//		- include() : inclus dynamiquement une autre servlet
//			+ le contrôle est donné à une autre servlet puis revient à la servlet courante (sorte d'appel de fonction).
//			+ Le flux de sortie n'est pas supprimé et les deux se cumulent

        ServletContext sc = getServletContext();
        RequestDispatcher rd = sc.getRequestDispatcher(url);
        rd.forward(request, response);
    }
}
