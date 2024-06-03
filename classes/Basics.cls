public class Basics {
    
    // Method to create a new account
    public static Account createAccount(String accountName) {
        Account newAccount = new Account(Name = accountName);
        insert newAccount;
        return newAccount;
    }
}