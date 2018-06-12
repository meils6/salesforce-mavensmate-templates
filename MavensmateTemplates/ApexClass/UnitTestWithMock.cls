/**
* Description:
* @author: {{ developerName }} (Trineo)
* @date: {{ createdDate }}
* @tests:
*/
@isTest
global class {{ api_name }} {

    @testSetup static void setup() {

    }

    @isTest static void {{ testMehodName }}() {
        Test.setMock(HttpCalloutMock.class, new {{ api_name }}.CalloutSuccess());
        Test.startTest();

        Test.stopTest();
    }

    global class CalloutSuccess implements HttpCalloutMock {
        global HTTPResponse respond(final HTTPRequest req) {
            final HTTPResponse res = new HTTPResponse();
            res.setHeader('Content-Type', 'application/json');
            res.setStatusCode(200);
            res.setBody('success');
            return res;
        }
    }

    global class CalloutFailure implements HttpCalloutMock {
        global HTTPResponse respond(final HTTPRequest req) {
            final HTTPResponse res = new HTTPResponse();
            res.setHeader('Content-Type', 'application/json');
            res.setStatusCode(404);
            res.setBody('failure');
            return res;
        }
    }
}
