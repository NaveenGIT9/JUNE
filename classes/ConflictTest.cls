public class ConflictTest {
    // Method to retrieve accounts
    public List<Account> getAccounts() {
        //CHANGED IN DEV2
        // SOQL query to get all accounts
        String query = 'SELECT Id, Name, Industry FROM Account LIMIT 10';
        
        // Execute the query
        //CREATE CONFLICT IN DEVOPS CENTER
        List<Account> accounts = Database.query(query);
        
        // Return the list of accounts
        return accounts;
    }
}