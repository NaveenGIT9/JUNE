public class HelloWorld {
    public List<Account> accounts {get; set;}

    public HelloWorld() {
        accounts = [SELECT Name,Industry FROM Account];
    }

    public void updateAccountIndustry(String industry) {
        for(Account accx : accounts) {
            accx.Industry = industry;
        }
        update accounts;
    }
}