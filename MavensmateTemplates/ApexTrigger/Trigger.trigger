/**
* Description:
* Uses: https://github.com/kevinohara80/sfdc-trigger-framework/tree/master/src/classes
* @author: {{ developerName }} (Trineo)
* @date: {{ createdDate }}
* @test:
*/
trigger {{ api_name }} on {{ sObject }} (before delete, before insert, before update, after insert, after update, after undelete) {

    //
    new {{ api_name }}Handler().run();
}
