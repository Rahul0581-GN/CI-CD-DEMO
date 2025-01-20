public class AccountController {
    @AuraEnabled
    public static String insertAccount(String accountName) {
        system.debug('Here');
        try {
            Account acc = new Account();
            acc.Name = accountName;
            insert acc;
            return 'Account created successfully';
        } catch (Exception e) {
            return 'Error: ' + e.getMessage();
        }
    }
}