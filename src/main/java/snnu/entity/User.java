package snnu.entity;

/**
 * Created by WT on 2017/9/16.
 */
public class User {
    private String userName;
    private String userPwd;
    private int userRoot;

    public User(){

    }

    public User(String userName, String userPwd) {
        this.userName = userName;
        this.userPwd = userPwd;
    }

    public User(String userName, String userPwd, int userRoot) {
        this.userName = userName;
        this.userPwd = userPwd;
        this.userRoot = userRoot;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getUserPwd() {
        return userPwd;
    }

    public void setUserPwd(String userPwd) {
        this.userPwd = userPwd;
    }

    public long getUserRoot() {
        return userRoot;
    }

    public void setUserRoot(int userRoot) {
        this.userRoot = userRoot;
    }

    @Override
    public String toString() {
        return "User{" +
                "  userName='" + userName + '\'' +
                ", userPwd='" + userPwd + '\'' +
                ", userRoot=" + userRoot +
                '}';
    }
}
