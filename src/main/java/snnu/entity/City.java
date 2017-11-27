package snnu.entity;

/**
 * Created by WT on 2017/9/16.
 */
public class City {
    private int cityId;
    private String cityName;
    private int cityPeople;
    public City(){

    }
    public City(int cityId, String cityName, int cityPeople) {
        this.cityId = cityId;
        this.cityName = cityName;
        this.cityPeople = cityPeople;
    }

    public int getCityId() {
        return cityId;
    }

    public void setCityId(int cityId) {
        this.cityId = cityId;
    }

    public String getCityName() {
        return cityName;
    }

    public void setCityName(String cityName) {
        this.cityName = cityName;
    }

    public int getCityPeople() {
        return cityPeople;
    }

    public void setCityPeople(int cityPeople) {
        this.cityPeople = cityPeople;
    }

    @Override
    public String toString() {
        return "City{" +
                "cityId=" + cityId +
                ", cityName='" + cityName + '\'' +
                ", cityPeople=" + cityPeople +
                '}';
    }
}
