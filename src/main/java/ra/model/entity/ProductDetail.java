package ra.model.entity;

public class ProductDetail {
    private int productDetailId;
    private Size size;
    private Color color;
    private float importPrice;
    private float exportPrice;
    private int quantity;

    public ProductDetail() {
    }

    public ProductDetail(int productDetailId, Size size, Color color, float importPrice, float exportPrice, int quantity) {
        this.productDetailId = productDetailId;
        this.size = size;
        this.color = color;
        this.importPrice = importPrice;
        this.exportPrice = exportPrice;
        this.quantity = quantity;
    }

    public int getProductDetailId() {
        return productDetailId;
    }

    public void setProductDetailId(int productDetailId) {
        this.productDetailId = productDetailId;
    }

    public Size getSize() {
        return size;
    }

    public void setSize(Size size) {
        this.size = size;
    }

    public Color getColor() {
        return color;
    }

    public void setColor(Color color) {
        this.color = color;
    }

    public float getImportPrice() {
        return importPrice;
    }

    public void setImportPrice(float importPrice) {
        this.importPrice = importPrice;
    }

    public float getExportPrice() {
        return exportPrice;
    }

    public void setExportPrice(float exportPrice) {
        this.exportPrice = exportPrice;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }
}
