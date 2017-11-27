package snnu.entity;

/**
 * Created by WT on 2017/9/16.
 */
public class Graduate {
    private int graduateId;
    private String graduateName;
    private String graduateSex;
    private int graduateGrade;
    private String graduateSchool;
    private int graduateCityId;
    public Graduate(){

    }
    public Graduate(int graduateId, String graduateName, String graduateSex, int graduateGrade, String graduateSchool, int graduateCityId) {
        this.graduateId = graduateId;
        this.graduateName = graduateName;
        this.graduateSex = graduateSex;
        this.graduateGrade = graduateGrade;
        this.graduateSchool = graduateSchool;
        this.graduateCityId = graduateCityId;
    }

    public int getGraduateId() {
        return graduateId;
    }

    public void setGraduateId(int graduateId) {
        this.graduateId = graduateId;
    }

    public String getGraduateName() {
        return graduateName;
    }

    public void setGraduateName(String graduateName) {
        this.graduateName = graduateName;
    }

    public String getGraduateSex() {
        return graduateSex;
    }

    public void setGraduateSex(String graduateSex) {
        this.graduateSex = graduateSex;
    }

    public int getGraduateGrade() {
        return graduateGrade;
    }

    public void setGraduateGrade(int graduateGrade) {
        this.graduateGrade = graduateGrade;
    }

    public String getGraduateSchool() {
        return graduateSchool;
    }

    public void setGraduateSchool(String graduateSchool) {
        this.graduateSchool = graduateSchool;
    }

    public int getGraduateCityId() {
        return graduateCityId;
    }

    public void setGraduateCityId(int graduateCityId) {
        this.graduateCityId = graduateCityId;
    }

    @Override
    public String toString() {
        return "Graduate{" +
                "graduateId=" + graduateId +
                ", graduateName='" + graduateName + '\'' +
                ", graduateSex='" + graduateSex + '\'' +
                ", graduateGrade=" + graduateGrade +
                ", graduateSchool='" + graduateSchool + '\'' +
                ", graduateCityId=" + graduateCityId +
                '}';
    }
}
