package DB;

/**
 * Created by clara.marti on 08/05/2018.
 */
public class Expenses {
    private int id;
    private String category;
    private double amount;
    private int idUsuari;

    public Expenses(int id, String category, double amount, int idUsuari) {
        this.id = id;
        this.category = category;
        this.amount = amount;
        this.idUsuari = idUsuari;
    }

    public int getId() {

        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public double getAmount() {
        return amount;
    }

    public void setAmount(double amount) {
        this.amount = amount;
    }

    public int getIdUsuari() {
        return idUsuari;
    }

    public void setIdUsuari(int idUsuari) {
        this.idUsuari = idUsuari;
    }
}
