package ra.model.entity;


public class Catalog {
    private int catalogId;
    private String catalogName;
    private String catalogDescriptions;
    private boolean catalogStatus;
    private int catalogParents;
    private String catalogParentsName;

    public Catalog() {
    }

    public Catalog(int catalogId, String catalogName, String catalogDescriptions, boolean catalogStatus, int catalogParents, String catalogParentsName) {
        this.catalogId = catalogId;
        this.catalogName = catalogName;
        this.catalogDescriptions = catalogDescriptions;
        this.catalogStatus = catalogStatus;
        this.catalogParents = catalogParents;
        this.catalogParentsName = catalogParentsName;
    }

    public int getCatalogId() {
        return catalogId;
    }

    public void setCatalogId(int catalogId) {
        this.catalogId = catalogId;
    }

    public String getCatalogName() {
        return catalogName;
    }

    public void setCatalogName(String catalogName) {
        this.catalogName = catalogName;
    }

    public String getCatalogDescriptions() {
        return catalogDescriptions;
    }

    public void setCatalogDescriptions(String catalogDescriptions) {
        this.catalogDescriptions = catalogDescriptions;
    }

    public boolean isCatalogStatus() {
        return catalogStatus;
    }

    public void setCatalogStatus(boolean catalogStatus) {
        this.catalogStatus = catalogStatus;
    }

    public int getCatalogParents() {
        return catalogParents;
    }

    public void setCatalogParents(int catalogParents) {
        this.catalogParents = catalogParents;
    }

    public String getCatalogParentsName() {
        return catalogParentsName;
    }

    public void setCatalogParentsName(String catalogParentsName) {
        this.catalogParentsName = catalogParentsName;
    }
}