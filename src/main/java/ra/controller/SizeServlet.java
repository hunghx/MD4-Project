package ra.controller;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import ra.model.entity.Size;
import ra.model.service.ISizeService;
import ra.model.serviceImple.SizeServiceImple;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.Writer;
import java.util.List;

@WebServlet(name = "SizeServlet", value = "/SizeServlet")
public class SizeServlet extends HttpServlet {
    private ISizeService<Size,Integer> sizeService = new SizeServiceImple();
    private static final Gson GSON = new GsonBuilder().create();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action != null && action.equals("Delete")) {
            boolean result = sizeService.delete(Integer.parseInt(request.getParameter("sizeDelId")));
            if (result){
                getAllSize(request,response);
            } else {
                request.getRequestDispatcher("views/Admin/error.jsp").forward(request,response);
            }
        } else if (action != null && action.equals("Search")) {
            List<Size> listSearchSize = sizeService.searchByName(request.getParameter("searchName"));
            request.setAttribute("listSize",listSearchSize);
            request.getRequestDispatcher("views/Admin/size.jsp").forward(request,response);
        } else if (action != null && action.equals("GetById")) {
            Size sizeUpdate = sizeService.getById(Integer.parseInt(request.getParameter("sizeId")));
            String json = GSON.toJson(sizeUpdate);
            response.setCharacterEncoding("UTF-8");
            response.setStatus(200);
            response.setHeader("Content-Type","application/json");
            Writer out = response.getWriter();
            out.write(json);
            out.flush();
        }  else {
            getAllSize(request, response);
        }
    }

    public void getAllSize(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Size> listSize = sizeService.getAll();
        request.setAttribute("listSize",listSize);
        request.getRequestDispatcher("views/Admin/size.jsp").forward(request,response);
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String action = request.getParameter("action");
        if (action != null && action.equals("Create")) {
            Size size = new Size();
            size.setSizeName(request.getParameter("sizeName"));
            size.setSizeStatus(Boolean.parseBoolean(request.getParameter("sizeStatus")));
            boolean result = sizeService.insertNew(size);
            if (result) {
                getAllSize(request, response);
            } else {
                request.getRequestDispatcher("views/Admin/error.jsp").forward(request, response);
            }
        } else if (action!= null && action.equals("Update")) {
            Size sizeUpdate = new Size();
            sizeUpdate.setSizeId(Integer.parseInt(request.getParameter("sizeIdUpdate")));
            sizeUpdate.setSizeName(request.getParameter("sizeNameUpdate"));
            sizeUpdate.setSizeStatus(Boolean.parseBoolean(request.getParameter("sizeStatusUpdate")));
            boolean result = sizeService.update(sizeUpdate);
            if (result){
                getAllSize(request,response);
            } else {
                request.getRequestDispatcher("views/Admin/error.jsp").forward(request,response);
            }
        }
    }
}