/**
* Description:
* @author: {{ developerName }} (Trineo)
* @date: {{ createdDate }}
* @test:
*/
@RestResource(urlMapping='/{{ url }}')
global with sharing class {{ api_name }}  {

    @HttpGet
    global static {{ objectName }} findObject() {

        {{ objectName }} obj;
        return obj;
    }

    @HttpPost
    global static {{ objectName }} createObject() {

        {{ objectName }} obj;
        return obj;
    }

    @HttpPut
    global static {{ objectName }} updateObject() {

        {{ objectName }} obj;
        return obj;
    }

    @HttpDelete
    global static void remove() {

    }
}
