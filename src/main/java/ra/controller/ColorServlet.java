package ra.controller;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import ra.model.entity.Color;
import ra.model.entity.Size;
import ra.model.service.IColorService;
import ra.model.serviceImple.ColorServiceImple;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.Writer;
import java.util.List;

@WebServlet(name = "ColorServlet", value = "/ColorServlet")
public class ColorServlet extends HttpServlet {
    private IColorService<Color,Integer> colorService = new ColorServiceImple();
    private static final Gson GSON = new GsonBuilder().create();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action != null && action.equals("Delete")) {
            boolean result = colorService.delete(Integer.parseInt(request.getParameter("colorDelId")));
            if (result){
                getAllColor(request,response);
            } else {
                request.getRequestDispatcher("views/Admin/error.jsp").forward(request,response);
            }
        } else if (action != null && action.equals("Search")) {
            List<Color> listSearchColor = colorService.searchByName(request.getParameter("searchName"));
            request.setAttribute("listColor",listSearchColor);
            request.getRequestDispatcher("views/Admin/color.jsp").forward(request,response);
        } else if (action != null && action.equals("GetById")) {
            Color colorUpdate = colorService.getById(Integer.parseInt(request.getParameter("colorId")));
            String json = GSON.toJson(colorUpdate);
            response.setCharacterEncoding("UTF-8");
            response.setStatus(200);
            response.setHeader("Content-Type","application/json");
            Writer out = response.getWriter();
            out.write(json);
            out.flush();
        }  else {
            getAllColor(request, response);
        }
    }

    public void getAllColor(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Color> listColor = colorService.getAll();
        request.setAttribute("listColor",listColor);
        request.getRequestDispatcher("views/Admin/color.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String action = request.getParameter("action");
        if (action != null && action.equals("Create")) {
            Color color = new Color();
            color.setColorHex(request.getParameter("colorHex"));
            color.setColorName(request.getParameter("colorName"));
            color.setColorStatus(Boolean.parseBoolean(request.getParameter("colorStatus")));
            boolean result = colorService.insertNew(color);
            if (result) {
                getAllColor(request, response);
            } else {
                request.getRequestDispatcher("views/Admin/error.jsp").forward(request, response);
            }
        } else if (action!= null && action.equals("Update")) {
            Color colorUpdate = new Color();
            colorUpdate.setColorId(Integer.parseInt(request.getParameter("colorIdUpdate")));
            colorUpdate.setColorHex(request.getParameter("colorHexUpdate"));
            colorUpdate.setColorName(request.getParameter("colorNameUpdate"));
            colorUpdate.setColorStatus(Boolean.parseBoolean(request.getParameter("colorStatusUpdate")));
            boolean result = colorService.update(colorUpdate);
            if (result){
                getAllColor(request,response);
            } else {
                request.getRequestDispatcher("views/Admin/error.jsp").forward(request,response);
            }
        }
    }
}
