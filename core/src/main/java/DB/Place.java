package DB;

/**
 * Created by clara.marti on 31/05/2018.
 */
public class Place {
    private Integer placeid;
    private String placename;

    public Integer getPlaceid() {
        return placeid;
    }

    public void setPlaceid(Integer placeid) {
        this.placeid = placeid;
    }

    public String getPlacename() {
        return placename;
    }

    public void setPlacename(String placename) {
        this.placename = placename;
    }

    public Place(Integer placeid, String placename) {
        this.placeid = placeid;
        this.placename = placename;
    }

    public Place() {
    }
}
