package ra.controller;

import ra.model.entity.User;
import ra.model.service.IUserService;
import ra.model.serviceImple.UserServiceImple;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "UserServlet", value = "/UserServlet")
public class UserServlet extends HttpServlet {
    private IUserService<User, Integer> userService = new UserServiceImple();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        String action = request.getParameter("action");
        if (action != null && action.equals("register")) {
            String fullName = request.getParameter("fullName");
            String email = request.getParameter("email");
            String phone = request.getParameter("phone");
            String address = request.getParameter("address");
            String userName = request.getParameter("userName");
            String password = request.getParameter("password");
            String confirmPass = request.getParameter("confirmPassword");
            User user = new User();
            if (password.equals(confirmPass)) {
                user.setFullName(fullName);
                user.setUserEmail(email);
                user.setUserTelephone(phone);
                user.setAddress(address);
                user.setUserName(userName);
                user.setUserPassword(password);
                boolean result = userService.insertNew(user);
                if (result) {
                    request.getRequestDispatcher("views/User/home.jsp").forward(request, response);
                } else {
                    request.getRequestDispatcher("views/User/register.jsp").forward(request, response);
                }
            } else {
                request.getRequestDispatcher("views/User/register.jsp").forward(request, response);
            }
        } else if (action != null && action.equals("login")) {
            String userName = request.getParameter("userName");
            String pass = request.getParameter("password");
            User user = userService.login(userName, pass);
            if (user != null) {
                if (user.getPermission() == 0){
                    request.getRequestDispatcher("views/Admin/adminHome.jsp").forward(request, response);
                } else if (user.getPermission() == 1) {
                    HttpSession session = request.getSession();
                    session.setAttribute("userLogin",user);
                    request.getRequestDispatcher("views/User/home.jsp").forward(request, response);
                }
            } else {
                request.getRequestDispatcher("views/User/home.jsp").forward(request, response);
            }
        } else if (action!=null && action.equals("logout")) {
//            request.getSession().getAttribute("userLogin");
            request.getSession().invalidate();
            request.getRequestDispatcher("views/User/home.jsp").forward(request, response);
        }
    }
}
