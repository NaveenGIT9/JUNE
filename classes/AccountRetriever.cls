public class AccountRetriever {
    // Method to retrieve accounts
    public List<Account> getAccounts() {
        // SOQL query to get all accounts
        String query = 'SELECT Id, Name, Industry FROM Account LIMIT 10';
        
        // Execute the query
        List<Account> accounts = Database.query(query);
        
        // Return the list of accounts
        return accounts;
    }
}