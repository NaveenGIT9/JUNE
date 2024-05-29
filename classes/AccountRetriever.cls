public class AccountRetriever {
    // Method to retrieve accounts
    public List<Account> getAccounts() {
        // SOQL query to get all accounts
        String query = 'SELECT Id, Name, Industry FROM Account LIMIT 10';
        String querys = 'SELECT Id, Name, Type, AnnualRevenue FROM Account LIMIT 5';
        
        // Execute the query random way
        List<Account> accounts = Database.query(query);
        
        // Return the list of accounts
        return accounts;
    }
}