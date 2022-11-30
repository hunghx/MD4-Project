package ra.controller;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import ra.model.entity.*;
import ra.model.service.ICatalogService;
import ra.model.service.IColorService;
import ra.model.service.IProductService;
import ra.model.service.ISizeService;
import ra.model.serviceImple.CatalogServiceImple;
import ra.model.serviceImple.ColorServiceImple;
import ra.model.serviceImple.ProductServiceImple;
import ra.model.serviceImple.SizeServiceImple;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.File;
import java.io.IOException;
import java.io.Writer;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "ProductServlet", value = "/ProductServlet")
@MultipartConfig(
        fileSizeThreshold = 1024 * 1024 * 1,
        maxFileSize = 1024 * 1024 * 5,
        maxRequestSize = 1024 * 1024 * 10
)

public class ProductServlet extends HttpServlet {
    private IProductService<Product, Integer> productService = new ProductServiceImple();
    private static final Gson GSON = new GsonBuilder().create();
    private ICatalogService<Catalog, Integer> catalogService = new CatalogServiceImple();
    private IColorService<Color, Integer> colorService = new ColorServiceImple();
    private ISizeService<Size, Integer> sizeService = new SizeServiceImple();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action != null && action.equals("Delete")) {
            boolean result = catalogService.delete(Integer.parseInt(request.getParameter("catDelId")));
            if (result) {
                getAllProduct(request, response);
            } else {
                request.getRequestDispatcher("views/Admin/error.jsp").forward(request, response);
            }
        } else if (action != null && action.equals("addNewPro")) {
            List<Catalog> listCatalog = catalogService.getCatalogForCreate();
            List<Size> listSize = sizeService.getAll();
            List<Color> listColor = colorService.getAll();
            request.setAttribute("listSize", listSize);
            request.setAttribute("listColor", listColor);
            request.setAttribute("listCatalog", listCatalog);
            request.getRequestDispatcher("views/Admin/newProduct.jsp").forward(request, response);
        } else if (action != null && action.equals("addProDetail")) {
            List<Size> listSize = sizeService.getAll();
            List<Color> listColor = colorService.getAll();
            request.setAttribute("listSize", listSize);
            request.setAttribute("listColor", listColor);
            request.getRequestDispatcher("views/Admin/productDetails.jsp").forward(request, response);
        } else if (action != null && action.equals("Search")) {
//            List<Catalog> listSearchCatalog = catalogService.searchByName(request.getParameter("searchName"));
//            request.setAttribute("listCatalog",listSearchCatalog);
//            request.getRequestDispatcher("views/Admin/category.jsp").forward(request,response);
        } else if (action != null && action.equals("GetById")) {
            Product product = productService.getById(Integer.parseInt(request.getParameter("productId")));
            request.setAttribute("pro", product);
            request.getRequestDispatcher("views/Admin/productDetailAdmin.jsp").forward(request, response);
        } else {
            getAllProduct(request, response);
        }
    }

    public void getAllProduct(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Product> listProduct = productService.getAll();
        request.setAttribute("listProduct", listProduct);
        request.getRequestDispatcher("views/Admin/product.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String action = request.getParameter("action");
        if (action != null && action.equals("Create")) {
            Product proNew = new Product();
            proNew.setProductName(request.getParameter("newProductName"));
            proNew.setTitleProduct(request.getParameter("newProductTitle"));
            proNew.setProductDescriptions(request.getParameter("description"));
            proNew.setCatalogId(Integer.parseInt(request.getParameter("newCatalogParent")));
            proNew.setProductStatus(Boolean.parseBoolean(request.getParameter("catStatus")));
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
            try {
                proNew.setCreateDate(sdf.parse(request.getParameter("createdDate")));
            } catch (ParseException e) {
                throw new RuntimeException(e);
            }
            String pathFolderImage = "D:/Module 3/ProjectFinal/projectFinal/src/main/webapp/imagesPro";
            File file = new File(pathFolderImage);
            if (!file.exists()) {
                file.mkdir();
            }
            for (Part part : request.getParts()) {
                if (part.getName().equals("productImg")) {
                    proNew.setProductImage(part.getSubmittedFileName());
                    part.write(pathFolderImage + File.separator + part.getSubmittedFileName());
                } else if (part.getName().equals("subImg")) {
                    proNew.getListImage().add(part.getSubmittedFileName());
                    part.write(pathFolderImage + File.separator + part.getSubmittedFileName());
                }
            }
            boolean result = productService.insertNew(proNew);
            if (result) {
                String[] sizeArr = request.getParameterValues("size");
                String[] colorArr = request.getParameterValues("color");
                List<Size> listSize = new ArrayList<>();
                List<Color> listColor = new ArrayList<>();
                List<Size> listSizeAll = sizeService.getAll();
                List<Color> listColorAll = colorService.getAll();
                int productLatestId = productService.getLatestId();
                for (Size size : listSizeAll) {
                    for (String str : sizeArr) {
                        if (size.getSizeId()==Integer.parseInt(str)){
                            listSize.add(size);
                        }
                    }
                }
                for (Color color : listColorAll) {
                    for (String str : colorArr) {
                        if (color.getColorId()==Integer.parseInt(str)){
                            listColor.add(color);
                        }
                    }
                }
                request.setAttribute("listSize", listSize);
                request.setAttribute("listColor", listColor);
                request.setAttribute("product",proNew);
                request.setAttribute("productId",productLatestId);
                request.getRequestDispatcher("views/Admin/productDetails.jsp").forward(request, response);
            } else {
                request.getRequestDispatcher("views/Admin/error.jsp").forward(request, response);
            }
        } else if (action != null && action.equals("Update")) {
//            Catalog catUpdate = new Catalog();
//            catUpdate.setCatalogId(Integer.parseInt(request.getParameter("catIdUpdate")));
//            catUpdate.setCatalogName(request.getParameter("catName"));
//            catUpdate.setCatalogDescriptions(request.getParameter("catDescription"));
//            catUpdate.setCatalogParents(Integer.parseInt(request.getParameter("catPaId")));
//            catUpdate.setCatalogStatus(Boolean.parseBoolean(request.getParameter("catStatus")));
//            boolean result = catalogService.update(catUpdate);
//            if (result){
//                getAllProduct(request,response);
//            } else {
//                request.getRequestDispatcher("views/Admin/error.jsp").forward(request,response);
//            }
        } else if (action!=null&&action.equals("createProductDetail")) {
            int productId = Integer.parseInt(request.getParameter("productId"));
            String [] sizeArr = request.getParameterValues("size");
            String[] colorArr = request.getParameterValues("color");
            String[] importPrice = request.getParameterValues("importPrice");
            String[] exportPrice = request.getParameterValues("exportPrice");

            String[] quantity = request.getParameterValues("quantity");
            List<Size> listSize = new ArrayList<>();
            List<Color> listColor = new ArrayList<>();
            List<Size> listSizeAll = sizeService.getAll();
            List<Color> listColorAll = colorService.getAll();

            for (Size size : listSizeAll) {
                for (String str : sizeArr) {
                    if (size.getSizeId()==Integer.parseInt(str)){
                        listSize.add(size);
                    }
                }
            }
            for (Color color : listColorAll) {
                for (String str : colorArr) {
                    if (color.getColorId()==Integer.parseInt(str)){
                        listColor.add(color);
                    }
                }
            }

            List<ProductDetail> list = new ArrayList<>();
            for (int i = 0; i < listSize.size(); i++) {
                ProductDetail productDetail = new ProductDetail();
                productDetail.setSize(listSize.get(i));
                productDetail.setColor(listColor.get(i));
                productDetail.setImportPrice(Float.parseFloat(importPrice[i]));;
                productDetail.setExportPrice((Float.parseFloat(exportPrice[i])));;
                productDetail.setQuantity(Integer.parseInt(quantity[i]));
                list.add(productDetail);
            }

            Product product = (Product) request.getSession().getAttribute("proNew");
            boolean checkInsert = productService.insertProductDetail(product.getProductId(),list);
            if (checkInsert){
                getAllProduct(request,response);
            }
        }
    }
}
