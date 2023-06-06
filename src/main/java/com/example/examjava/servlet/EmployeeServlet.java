package com.example.examjava.servlet;

import com.example.examjava.dao.EmployeeDao;
import com.example.examjava.entity.EmployeeEntity;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/employeeServlet")
public class EmployeeServlet extends HttpServlet {

    EmployeeDao employeeDao = new EmployeeDao();

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            String name = req.getParameter("name");
            String birthday = req.getParameter("birthday");
            String address = req.getParameter("address");
            String position = req.getParameter("position");
            String department = req.getParameter("department");

            EmployeeEntity employee = new EmployeeEntity(name,birthday,address,position,department);
            employeeDao.insertEmployee(employee);
            List<EmployeeEntity> list = employeeDao.getAllEmployee();
            req.setAttribute("listEmployee" , list);
            req.getRequestDispatcher("listEmployee.jsp").forward(req,resp);
        }catch (Exception e){
            log(e.getMessage());
        }
    }
}
