package DB;

/**
 * Created by clara.marti on 26/04/2018.
 */
public class BeanDB {
    private String name;
    private String tel;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public BeanDB(String name, String tel) {
        this.name = name;
        this.tel = tel;
    }

    public BeanDB() {
    }
}
