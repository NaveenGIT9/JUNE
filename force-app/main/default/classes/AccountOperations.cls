public class AccountOperations {
    
    // Method to create a new Account
    public static Account createAccount(String name, String industry) {
        Account acc = new Account(Name = name, Industry = industry);
        insert acc;
        return acc;
    }
    
    // Method to retrieve a list of Accounts
    public static List<Account> getAccounts(Integer limitSize) {
        String query = 'SELECT Id, Name, Industry FROM Account LIMIT :limitSize';
        List<Account> accounts = Database.query(query);
        return accounts;
    }
    
}