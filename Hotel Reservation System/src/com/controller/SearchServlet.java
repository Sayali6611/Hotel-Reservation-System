package com.controller;

import java.io.*;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.sql.*;

//public class SearchServlet extends HttpServlet {
//    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        String category = request.getParameter("category");
//        try {
//            Connection con = DBConnection.getConnection();
//            PreparedStatement ps = con.prepareStatement("SELECT * FROM rooms WHERE category=? AND status='Available'");
//            ps.setString(1, category);
//            ResultSet rs = ps.executeQuery();
//            request.setAttribute("rooms", rs);
//            RequestDispatcher rd = request.getRequestDispatcher("search.jsp");
//            rd.forward(request, response);
//        } catch (Exception e) {
//            e.printStackTrace();
//        }
//    }
//}

public class SearchServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {

        String category = request.getParameter("category");
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hotel", "root", "");

            PreparedStatement ps = con.prepareStatement("SELECT * FROM rooms WHERE category = ?");
            ps.setString(1, category);
            ResultSet rs = ps.executeQuery();

            request.setAttribute("rooms", rs);
            RequestDispatcher rd = request.getRequestDispatcher("search.jsp");
            rd.forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}