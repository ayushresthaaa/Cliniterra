package com.cliniterra.controller;

import com.cliniterra.model.AppointmentStatusModel;
import com.cliniterra.service.AppointmentStatusService;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

@WebServlet("/changeStatus")
public class ChangeStatusController extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private AppointmentStatusService service = new AppointmentStatusService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<AppointmentStatusModel> appointments = service.getAllAppointmentsWithUserStatus();
        req.setAttribute("appointments", appointments);
        req.getRequestDispatcher("WEB-INF/pages/changeStatus.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}
