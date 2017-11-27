package snnu.dto;

import snnu.entity.User;

/**
 * Created by WT on 2017/9/16.
 */
public class LoginResult {
    private boolean state;
    private String info;
    private User user;

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public boolean isState() {
        return state;
    }

    public void setState(boolean state) {
        this.state = state;
    }

    public String getInfo() {
        return info;
    }

    public void setInfo(String info) {
        this.info = info;
    }

    @Override
    public String toString() {
        return "LoginResult{" +
                "state=" + state +
                ", info='" + info + '\'' +
                ", user=" + user +
                '}';
    }
}
