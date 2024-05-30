public class AccountClass {
    
    // Method to create a new Account modified in DEV2
    public Account createAccount(String name, String industry, String phone) {
        Account newAccount = new Account(
            Name = name,
            Industry = industry,
            Phone = phone
        );
        insert newAccount;
        return newAccount;
    }
    
    // Method to update an existing Account
    public Account updateAccount(Id accountId, String newName, String newIndustry, String newPhone) {
        Account accx = [SELECT Id, Name, Industry, Phone FROM Account WHERE Id = :accountId];
        accx.Name = newName;
        accx.Industry = newIndustry;
        accx.Phone = newPhone;
        update accx;
        return accx;
    }
    
    // Method to delete an existing Account in Dev2
    public void deleteAccount(Id accountId) {
        Account acc = [SELECT Id FROM Account WHERE Id = :accountId];
        delete acc;
    }
    
    // Method to get a list of Accounts
    public List<Account> getAccounts(Integer limitSize) {
        return [SELECT Id, Name, Industry, Phone FROM Account LIMIT :limitSize];
    }
}