package DB;

/**
 * Created by clara.marti on 08/05/2018.
 */
public class Expenses {
    private int id;
    private String category;
    private double amount;

    public Expenses(int id, String category, double amount) {
        this.id = id;
        this.category = category;
        this.amount = amount;
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
}
