package ra.model.entity;

public class Color {
    private int colorId;
    private String colorHex;
    private String colorName;
    private boolean colorStatus;

    public Color() {
    }

    public Color(int colorId, String colorHex, String colorName, boolean colorStatus) {
        this.colorId = colorId;
        this.colorHex = colorHex;
        this.colorName = colorName;
        this.colorStatus = colorStatus;
    }

    public int getColorId() {
        return colorId;
    }

    public void setColorId(int colorId) {
        this.colorId = colorId;
    }

    public String getColorHex() {
        return colorHex;
    }

    public void setColorHex(String colorHex) {
        this.colorHex = colorHex;
    }

    public String getColorName() {
        return colorName;
    }

    public void setColorName(String colorName) {
        this.colorName = colorName;
    }

    public boolean isColorStatus() {
        return colorStatus;
    }

    public void setColorStatus(boolean colorStatus) {
        this.colorStatus = colorStatus;
    }
}
