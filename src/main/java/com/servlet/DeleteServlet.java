package com.servlet;

import com.dao.DBConnect;
import com.dao.StudentDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
 
@WebServlet("/delete")
public class DeleteServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));

        StudentDao dao  = new StudentDao(DBConnect.getConn());
        boolean f = dao.deleteStudent(id);

        HttpSession session=req.getSession();
        if(f){
            session.setAttribute("succmsg","Student  Deleted Record Successfully...");
            resp.sendRedirect("index.jsp");
            // System.out.println("inserted");
        }else {
            session.setAttribute("error","Something Wrong Not Deleted Decord...");
            resp.sendRedirect("index.jsp");
            //System.out.println("not inrsetd");
        }

    }
}
