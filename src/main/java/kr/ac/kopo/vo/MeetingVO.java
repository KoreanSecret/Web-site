package kr.ac.kopo.vo;

public class MeetingVO {
    private int MEETING_NO;
    private String TITLE;
    private String DESCRIPTION;
    private String LOCATION_NAME;
    private String LOCATION_ADDRESS;
    private double LOCATION_LATITUDE;
    private double LOCATION_LONGITUDE;
    private String HOST_ID;

    // Getters and Setters

    public int getMEETING_NO() {
        return MEETING_NO;
    }

    public void setMEETING_NO(int MEETING_NO) {
        this.MEETING_NO = MEETING_NO;
    }

    public String getTITLE() {
        return TITLE;
    }

    public void setTITLE(String TITLE) {
        this.TITLE = TITLE;
    }

    public String getDESCRIPTION() {
        return DESCRIPTION;
    }

    public void setDESCRIPTION(String DESCRIPTION) {
        this.DESCRIPTION = DESCRIPTION;
    }

    public String getLOCATION_NAME() {
        return LOCATION_NAME;
    }

    public void setLOCATION_NAME(String LOCATION_NAME) {
        this.LOCATION_NAME = LOCATION_NAME;
    }

    public String getLOCATION_ADDRESS() {
        return LOCATION_ADDRESS;
    }

    public void setLOCATION_ADDRESS(String LOCATION_ADDRESS) {
        this.LOCATION_ADDRESS = LOCATION_ADDRESS;
    }

    public double getLOCATION_LATITUDE() {
        return LOCATION_LATITUDE;
    }

    public void setLOCATION_LATITUDE(double LOCATION_LATITUDE) {
        this.LOCATION_LATITUDE = LOCATION_LATITUDE;
    }

    public double getLOCATION_LONGITUDE() {
        return LOCATION_LONGITUDE;
    }

    public void setLOCATION_LONGITUDE(double LOCATION_LONGITUDE) {
        this.LOCATION_LONGITUDE = LOCATION_LONGITUDE;
    }

    public String getHOST_ID() {
        return HOST_ID;
    }

    public void setHOST_ID(String HOST_ID) {
        this.HOST_ID = HOST_ID;
    }
}
