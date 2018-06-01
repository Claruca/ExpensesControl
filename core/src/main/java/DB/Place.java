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


/*CREATE TABLE PUBLIC.PIS
        (id_p INTEGER NOT NULL,
         nom VARCHAR(25),
         PRIMARY KEY (id_p))
  */

//    INSERT INTO pis (id_p,nom) VALUES (2, 'Es Secar');


    /*SELECT category,amount, ex.name, dia, p.nom FROM Exemple ex
        JOIN Gastos ga ON ga.iduser = ex.id
        JOIN Pis p ON p.id_p = ex.id_pis
        WHERE category = 'cuina' AND  ex.id_pis=2*/