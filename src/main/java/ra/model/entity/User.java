package ra.model.entity;

import java.util.Date;

public class User {
    private int userId;
    private String userName;
    private String userPassword;
    private String fullName;
    private String avatar;
    private String userTelephone;
    private String userEmail;
    private int permission;
    private String address;
    private Date createDate;
    private boolean userStatus;

    public User() {
    }

    public User(int userId, String userName, String userPassword, String confirmPassword, String fullName, String avatar, String userTelephone, String userEmail, int permission, String address, Date createDate, boolean userStatus) {
        this.userId = userId;
        this.userName = userName;
        this.userPassword = userPassword;
        this.fullName = fullName;
        this.avatar = avatar;
        this.userTelephone = userTelephone;
        this.userEmail = userEmail;
        this.permission = permission;
        this.address = address;
        this.createDate = createDate;
        this.userStatus = userStatus;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getUserPassword() {
        return userPassword;
    }

    public void setUserPassword(String userPassword) {
        this.userPassword = userPassword;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getAvatar() {
        return avatar;
    }

    public void setAvatar(String avatar) {
        this.avatar = avatar;
    }

    public String getUserTelephone() {
        return userTelephone;
    }

    public void setUserTelephone(String userTelephone) {
        this.userTelephone = userTelephone;
    }

    public String getUserEmail() {
        return userEmail;
    }

    public void setUserEmail(String userEmail) {
        this.userEmail = userEmail;
    }

    public int getPermission() {
        return permission;
    }

    public void setPermission(int permission) {
        this.permission = permission;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public Date getCreateDate() {
        return createDate;
    }

    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }

    public boolean isUserStatus() {
        return userStatus;
    }

    public void setUserStatus(boolean userStatus) {
        this.userStatus = userStatus;
    }
}
