package ra.model.entity;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class Product {
    private int productId;
    private String productName;
    private String titleProduct;
    private String productDescriptions;
    private int catalogId;
    private String catalogName;
    private boolean productStatus;
    private Date createDate;
    private String productImage;
    private List<String> listImage = new ArrayList<>();
    private List<ProductDetail> listProductDetail = new ArrayList<>();

    public Product() {
    }

    public Product(int productId, String productName, String titleProduct, String productDescriptions, int catalogId, String catalogName, boolean productStatus, Date createDate, String productImage, List<String> listImage, List<ProductDetail> listProductDetail) {
        this.productId = productId;
        this.productName = productName;
        this.titleProduct = titleProduct;
        this.productDescriptions = productDescriptions;
        this.catalogId = catalogId;
        this.catalogName = catalogName;
        this.productStatus = productStatus;
        this.createDate = createDate;
        this.productImage = productImage;
        this.listImage = listImage;
        this.listProductDetail = listProductDetail;
    }

    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public String getTitleProduct() {
        return titleProduct;
    }

    public void setTitleProduct(String titleProduct) {
        this.titleProduct = titleProduct;
    }

    public String getProductDescriptions() {
        return productDescriptions;
    }

    public void setProductDescriptions(String productDescriptions) {
        this.productDescriptions = productDescriptions;
    }

    public int getCatalogId() {
        return catalogId;
    }

    public void setCatalogId(int catalogId) {
        this.catalogId = catalogId;
    }

    public boolean isProductStatus() {
        return productStatus;
    }

    public void setProductStatus(boolean productStatus) {
        this.productStatus = productStatus;
    }

    public Date getCreateDate() {
        return createDate;
    }

    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }

    public String getProductImage() {
        return productImage;
    }

    public void setProductImage(String productImage) {
        this.productImage = productImage;
    }

    public List<String> getListImage() {
        return listImage;
    }

    public void setListImage(List<String> listImage) {
        this.listImage = listImage;
    }

    public List<ProductDetail> getListProductDetail() {
        return listProductDetail;
    }

    public void setListProductDetail(List<ProductDetail> listProductDetail) {
        this.listProductDetail = listProductDetail;
    }

    public String getCatalogName() {
        return catalogName;
    }

    public void setCatalogName(String catalogName) {
        this.catalogName = catalogName;
    }
}
