package snnu.entity;

import java.util.List;

/**
 * Created by WT on 2017/9/16.
 */
public class GraduateCity {
    private int CityId;
    private String cityName;
    List<Graduate> graduates;

    @Override
    public String toString() {
        return "GraduateCity{" +
                "CityId=" + CityId +
                ", cityName='" + cityName + '\'' +
                ", graduates=" + graduates +
                '}';
    }

    public int getCityId() {
        return CityId;
    }

    public void setCityId(int cityId) {
        CityId = cityId;
    }

    public String getCityName() {
        return cityName;
    }

    public void setCityName(String cityName) {
        this.cityName = cityName;
    }

    public List<Graduate> getGraduates() {
        return graduates;
    }

    public void setGraduates(List<Graduate> graduates) {
        this.graduates = graduates;
    }
}
