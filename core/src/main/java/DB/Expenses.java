package DB;

/**
 * Created by clara.marti on 08/05/2018.
 */
public class Expenses {
    private String id;
    private String category;
    private String amount;
    private String idUsuari;
    private String dating;

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
        PRIMARY KEY (id_g),
        FOREIGN KEY (iduser) REFERENCES EXEMPLE(ID))*/


//    ALTER TABLE gastos ADD COLUMN date SET DEFAULT CURRENT_TIMESTAMP


//    Insert into gastos (id_g,category,amount,iduser) values (01,'cuina',1.6,1);

//show columns from table

// create sequence seq_usuaris START WITH 20;

//Insert timestamp en expense para ordenar por ultima fecha

// SELECT category,amount, name FROM GASTOS ga JOIN Exemple ex on ga.iduser = ex.id where category = 'cuina'