/**
* Description:
* @author: {{ developerName }} (Trineo)
* @date: {{ createdDate }}
* @test:
*/
global class {{ api_name }} implements Database.Batchable<sObject>, Schedulable {

    //https://developer.salesforce.com/docs/atlas.en-us.apexcode.meta/apexcode/apex_scheduler.htm
    public static final String CRON = '0 0 0 * * ?';

    global static void schedule() {
        {{ api_name }} job = new {{ api_name }}();
        System.schedule('{{ description }}', CRON, job);
    }

    global static void abort(){
        List<CronTrigger> existingJobs = [SELECT Id FROM CronTrigger WHERE CronJobDetail.Name = '{{ description }}'];
        if (existingJobs.size() > 0) {
            for (CronTrigger job : existingJobs) {
                System.abort(job.Id);
            }
        }
    }

    global void execute(SchedulableContext sc) {
        Database.executeBatch(new {{ api_name }}());
    }

    global Database.QueryLocator start(Database.BatchableContext BC) {
        String query = '';
        return Database.getQueryLocator(query);
    }

    global void execute(Database.BatchableContext BC, List<sObject> scope) {

    }

    global void finish(Database.BatchableContext BC) {

    }

}
