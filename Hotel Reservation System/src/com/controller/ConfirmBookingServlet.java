package com.controller;
import java.io.*;
//import javax.servlet.*;
//import javax.servlet.http.*;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.sql.*;

public class ConfirmBookingServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String checkin = request.getParameter("checkin");
        String checkout = request.getParameter("checkout");
        int roomId = Integer.parseInt(request.getParameter("roomId"));

        try {
            Connection con = DBConnection.getConnection();
            PreparedStatement ps = con.prepareStatement("INSERT INTO reservations (customer_name, email, check_in, check_out, room_id, payment_status) VALUES (?, ?, ?, ?, ?, 'Paid')");
            ps.setString(1, name);
            ps.setString(2, email);
            ps.setString(3, checkin);
            ps.setString(4, checkout);
            ps.setInt(5, roomId);
            ps.executeUpdate();

            PreparedStatement ps2 = con.prepareStatement("UPDATE rooms SET status='Booked' WHERE id=?");
            ps2.setInt(1, roomId);
            ps2.executeUpdate();

            response.sendRedirect("success.jsp");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}