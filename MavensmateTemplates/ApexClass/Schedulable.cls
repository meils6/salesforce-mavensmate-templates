/**
* Description:
* @author: {{ developerName }} (Trineo)
* @date: {{ createdDate }}
* @test:
*/
global class {{ api_name }} implements Schedulable {

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

    }
}
