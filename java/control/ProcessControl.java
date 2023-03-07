/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package control;

import dao.DAO;
import entity.Cart;
import entity.ItemCart;
import entity.Product;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;

/**
 *
 * @author duytr
 */
@WebServlet(name="ProcessControl", urlPatterns={"/process"})
public class ProcessControl extends HttpServlet {
   
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ProcessControl</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ProcessControl at " + request.getContextPath () + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    } 

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        DAO d=new DAO();
        List<Product> list=d.getAllProduct();
        Cookie[] arr=request.getCookies();
        String txt="";
        if(arr!=null){
            for(Cookie o:arr){
                if(o.getName().equals("cart")){
                    txt+=o.getValue();
                    o.setMaxAge(0);
                    response.addCookie(o);
                }
            }
        }
        Cart cart=new Cart(txt, list);
        String num_raw=request.getParameter("num");
        String id_raw=request.getParameter("id");
        int id,num=0;
        try{
            id=Integer.parseInt(id_raw);
            Product p=d.getProductById2(id);
            int numStore=p.getQuantity();
            num=Integer.parseInt(num_raw);
            if(num==-1&&(cart.getQuantityById(id)<=1)){
                cart.removeItem(id);
            }else{
                if((num==1) && cart.getQuantityById(id)>=numStore){
                    num=0;
                }
                int price=p.getPrice()*2;
                ItemCart t=new ItemCart(p, num, price);
                cart.addItem(t);
            }
        }catch(NumberFormatException e){
            
        }
        List<ItemCart> items=cart.getItems();
        txt="";
        if(items.size()>0){
            txt=items.get(0).getProduct().getId()+":"+
                    items.get(0).getQuantity();
            for (int i = 1; i < items.size(); i++) {
                txt+="/"+items.get(i).getProduct().getId()+":"+
                    items.get(i).getQuantity();
            }
        }
        Cookie c=new Cookie("cart", txt);
        c.setMaxAge(2*24*60*60);
        response.addCookie(c);
        request.setAttribute("cart", cart);
        response.sendRedirect("show");
//        request.getRequestDispatcher("show").forward(request, response);
        
    }

    /** 
     * Handles the HTTP <code>POST</code> method.
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
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
