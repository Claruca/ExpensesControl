package DB;

/**
 * Created by clara.marti on 08/05/2018.
 */
public class Expenses {
    private String id;
    private String category;
    private int amount;
    private String idUsuari;


    public Expenses() {
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public int getAmount() {
        return amount;
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }

    public String getIdUsuari() {
        return idUsuari;
    }

    public void setIdUsuari(String idUsuari) {
        this.idUsuari = idUsuari;
    }
}

/*
H2 tabla
    CREATE TABLE PUBLIC.GASTOS
        (id INTEGER NOT NULL,
        category VARCHAR(25),
        amount NUMBER(5,2) NOT NULL,
        iduser VARCHAR(5),
        PRIMARY KEY (id))*/
