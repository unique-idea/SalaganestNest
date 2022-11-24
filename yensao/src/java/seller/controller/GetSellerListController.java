package seller.controller;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import seller.dto.Seller;
import seller.dto.SellerDAO;

/**
 *
 * @author lequa
 */
@WebServlet(name = "GetSellerListController", urlPatterns = {"/GetSellerListController"})
public class GetSellerListController extends HttpServlet {

    private static final String ERROR = "error.jsp";
    private static final String SUCCESS = "sellerList.jsp";

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        String url = ERROR;
        try {
            ArrayList<Seller> sel = SellerDAO.getSellerList();
            ArrayList<Seller> normalSel = new ArrayList<>();
            ArrayList<Seller> banSel = new ArrayList<>();
            if (sel != null) {
                for (int i = 0; i < sel.size(); i++) {
                    if (sel.get(i).getStatus() == 1) {
                        normalSel.add(sel.get(i));
                    } else if (sel.get(i).getStatus() == 2) {
                        banSel.add(sel.get(i));
                    }
                }
                request.setAttribute("LIST_NORMAL_SELLER", normalSel);
                request.setAttribute("LIST_BAN_SELLER", banSel);
                url = SUCCESS;
            }
        } catch (Exception e) {
            log("Error at GetSellerListController: " + e.toString());
        } finally {
            request.getRequestDispatcher(url).forward(request, response);
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
