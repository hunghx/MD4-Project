package ra.controller;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import ra.model.entity.Catalog;
import ra.model.service.ICatalogService;
import ra.model.serviceImple.CatalogServiceImple;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.Writer;
import java.util.List;

@WebServlet(name = "CatalogServlet", value = "/CatalogServlet")
public class CatalogServlet extends HttpServlet {
    private ICatalogService<Catalog, Integer> catalogService = new CatalogServiceImple();
    private static final Gson GSON = new GsonBuilder().create();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action != null && action.equals("Delete")) {
            boolean result = catalogService.delete(Integer.parseInt(request.getParameter("catDelId")));
            if (result){
                getAllCatalog(request,response);
            } else {
                request.getRequestDispatcher("views/Admin/error.jsp").forward(request,response);
            }
        } else if (action != null && action.equals("Search")) {
            List<Catalog> listSearchCatalog = catalogService.searchByName(request.getParameter("searchName"));
            request.setAttribute("listCatalog",listSearchCatalog);
            request.getRequestDispatcher("views/Admin/category.jsp").forward(request,response);
        } else if (action != null && action.equals("GetById")) {
            Catalog catUpdate = catalogService.getById(Integer.parseInt(request.getParameter("catalogId")));
            String json = GSON.toJson(catUpdate);
            response.setCharacterEncoding("UTF-8");
            response.setStatus(200);
            response.setHeader("Content-Type","application/json");
            Writer out = response.getWriter();
            out.write(json);
            out.flush();
        }  else {
            getAllCatalog(request, response);
        }
    }

    public void getAllCatalog(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Catalog> listCatalog = catalogService.getAll();
        request.setAttribute("listCatalog", listCatalog);
        request.getRequestDispatcher("views/Admin/category.jsp").forward(request, response);
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String action = request.getParameter("action");
        Catalog cat = new Catalog();
        cat.setCatalogName(request.getParameter("catName"));
        cat.setCatalogDescriptions(request.getParameter("catDescription"));
        cat.setCatalogStatus(Boolean.parseBoolean(request.getParameter("catStatus")));
        cat.setCatalogParents(Integer.parseInt(request.getParameter("catPaId")));

        if (action != null && action.equals("Create")) {
            boolean result = catalogService.insertNew(cat);
            if (result) {
                getAllCatalog(request, response);
            } else {
                request.getRequestDispatcher("views/Admin/error.jsp").forward(request, response);
            }
        } else if (action!= null && action.equals("Update")) {
            Catalog catUpdate = new Catalog();
            catUpdate.setCatalogId(Integer.parseInt(request.getParameter("catIdUpdate")));
            catUpdate.setCatalogName(request.getParameter("catName"));
            catUpdate.setCatalogDescriptions(request.getParameter("catDescription"));
            catUpdate.setCatalogParents(Integer.parseInt(request.getParameter("catPaId")));
            catUpdate.setCatalogStatus(Boolean.parseBoolean(request.getParameter("catStatus")));
            boolean result = catalogService.update(catUpdate);
            if (result){
                getAllCatalog(request,response);
            } else {
                request.getRequestDispatcher("views/Admin/error.jsp").forward(request,response);
            }
        }
    }
}