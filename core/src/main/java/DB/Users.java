package DB;

import java.util.ArrayList;

/**
 * Created by clara.marti on 08/05/2018.
 */
public class Users {
    private String id;
    private String name;
    private String surname;
    private String alias;
    private String balance;
    private ArrayList<Expenses> expencount;


    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSurname() {
        return surname;
    }

    public void setSurname(String surname) {
        this.surname = surname;
    }

    public String getAlias() {
        return alias;
    }

    public void setAlias(String alias) {
        this.alias = alias;
    }

    public String getBalance() {
        return balance;
    }

    public void setBalance(String balance) {
        this.balance = balance;
    }

    public ArrayList<Expenses> getExpencount() {
        return expencount;
    }

    public void setExpencount(ArrayList<Expenses> expencount) {
        this.expencount = expencount;
    }

    public Users(String id, String name, String surname, String alias, String balance) {
        this.id = id;
        this.name = name;
        this.surname = surname;
        this.alias = alias;
        this.balance = balance;
    }

    public Users(String id) {
    }

    public Users() {
    }

}
