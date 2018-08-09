package DB;

/**
 * Created by clara.marti on 08/05/2018.
 */
public class Expenses {
    private String id;
    private String category;
    private String amount;
    private String idUsuari;
    private String dia;

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

    public String getAmount() {
        return amount;
    }

    public String getDia() {
        return dia;
    }

    public void setDia(String dia) {
        this.dia = dia;
    }

    public void setAmount(String amount) {
        this.amount = amount;
    }

    public String getIdUsuari() {
        return idUsuari;
    }

    public void setIdUsuari(String idUsuari) {
        this.idUsuari = idUsuari;
    }
}

  /*  H2 tabla
    CREATE TABLE PUBLIC.GASTOS
        (id_g INTEGER NOT NULL,
        category VARCHAR(25),
        amount NUMBER(5,2) NOT NULL,
        iduser VARCHAR(5),
        dia VARCHAR(50),
        PRIMARY KEY (id_g),
        FOREIGN KEY (iduser) REFERENCES EXEMPLE(ID))*/





//    ALTER TABLE gastos ADD COLUMN dia Varchar(50);

//    INSERT INTO gastos (id_g,category,amount,iduser) VALUES (01,'cuina',1.6,1);

//    show columns from table

/*
    ALTER TABLE exemple ADD COLUMN id_pis integer

    ALTER TABLE exemple ADD FOREIGN KEY (id_pis) REFERENCES pis (id_p)

    UPDATE exemple SET id_pis=1 WHERE id=2
    */
