package snnu.dto;

/**
 * Created by WT on 2017/9/17.
 */
public class Result {
    private String info;

    @Override
    public String toString() {
        return "Result{" +
                "info='" + info + '\'' +
                '}';
    }

    public String getInfo() {
        return info;
    }

    public void setInfo(String info) {
        this.info = info;
    }
}
