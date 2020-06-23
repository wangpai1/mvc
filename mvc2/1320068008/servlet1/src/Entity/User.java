package Entity;

public class User {
    private String UName;
    private String UPwd;

    public User(String UName, String UPwd) {
        this.UName = UName;
        this.UPwd = UPwd;
    }

    public User() {
    }
    public String getUName() {
        return UName;
    }

    public void setUName(String UName) {
        this.UName = UName;
    }

    public String getUPwd() {
        return UPwd;
    }

    public void setUPwd(String UPwd) {
        this.UPwd = UPwd;
    }
}
