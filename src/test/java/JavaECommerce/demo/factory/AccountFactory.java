package JavaECommerce.demo.factory;

import JavaECommerce.demo.entities.Account;

public class AccountFactory {

    public static Account createEmptyAccount () { return  new Account(1L, 0.0); }

    public static Account createAccount (double initialBalance) { return  new Account(1L, initialBalance); }

}
