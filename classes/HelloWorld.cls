public class HelloWorld {
    public List<Account> accounts {get; set;}

    public HelloWorld() {
        accounts = [SELECT Id, Name, Industry FROM Account];
    }

    public void updateAccountIndustry(String industry) {
        for(Account acc : accounts) {
            acc.Industry = industry;
        }
        update accounts;
    }
}