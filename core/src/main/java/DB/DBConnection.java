package DB;

/**
 * Created by clara.marti on 08/05/2018.
 */
public class DBConnection {

//    public Users newUser() {
//
//        Users users = new Users(1, "Clara", "Martí", "claruca", "0.00");
//        return users;
//    }


    public Expenses newExpense(double money, String id) {
        return newExpense(money + money, id);

    }


}
