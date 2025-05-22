package com.cliniterra.controller;

import com.cliniterra.model.AdminModel;
import com.cliniterra.service.AdminService;
import com.cliniterra.util.SessionUtil;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;
import java.util.List;

@WebServlet(asyncSupported = true, urlPatterns = {"/viewadminsadmin"})
public class AdminProfileController extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private final AdminService adminListService = new AdminService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        // optional: check that current user is admin
        String currentUser = SessionUtil.getUsername(req);
        if (currentUser == null) {
            resp.sendRedirect(req.getContextPath() + "/login");
            return;
        }

        List<AdminModel> admins = adminListService.getAllAdmins();
        req.setAttribute("admins", admins);
        req.getRequestDispatcher("/WEB-INF/pages/viewadminsadmin.jsp")
           .forward(req, resp);
    }
}
