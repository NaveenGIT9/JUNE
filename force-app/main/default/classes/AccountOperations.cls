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
    
    // Method to update the Industry of a specific Account
    public static void updateAccountIndustry(Id accountId, String newIndustry) {
        Account acc = [SELECT Id, Industry FROM Account WHERE Id = :accountId LIMIT 1];
        acc.Industry = newIndustry;
        update acc;
    }
    
    // Method to delete an Account
    public static void deleteAccount(Id accountId) {
        Account acc = [SELECT Id FROM Account WHERE Id = :accountId LIMIT 1];
        delete acc;
    }
}