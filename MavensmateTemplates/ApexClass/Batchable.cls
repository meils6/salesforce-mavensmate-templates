/**
* Description: 
* @author: {{ developerName }}
* @date: {{ createdDate }}
* @test: 
*/
global class {{ api_name }} implements Database.Batchable<sObject> {
	
	global {{ api_name }}() {
		
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