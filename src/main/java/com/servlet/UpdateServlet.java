package com.servlet;

import com.dao.DBConnect;
import com.dao.StudentDao;
import com.entity.Student;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/update")
public class UpdateServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String name = req.getParameter("name");
        String dob = req.getParameter("dob");
        String address = req.getParameter("address");
        String qualification = req.getParameter("qualification");
        String email = req.getParameter("email");
        int id=Integer.parseInt(req.getParameter("id"));

        Student student = new Student(id,name,dob,address,qualification,email);

        StudentDao dao=new StudentDao(DBConnect.getConn());
        HttpSession session=req.getSession();

        boolean f=dao.updateStudent(student);

        if(f){
            session.setAttribute("succmsg","Student  update successfully...");
            resp.sendRedirect("index.jsp");
            // System.out.println("inserted");
        }else {
            session.setAttribute("error","Something wrong not updated...");
            resp.sendRedirect("index.jsp");
            //System.out.println("not inrsetd");
        }

    }
}
