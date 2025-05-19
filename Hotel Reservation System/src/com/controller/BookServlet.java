package com.controller;

import java.io.*;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
//import javax.servlet.*;
//import javax.servlet.http.*;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class BookServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String roomId = request.getParameter("id");
        request.setAttribute("roomId", roomId);
        RequestDispatcher rd = request.getRequestDispatcher("book.jsp");
        rd.forward(request, response);
    }
}

