import ballerina/test;
import ballerina/http;
import ballerina/lang.runtime;

http:Client paymentServiceClient = check new ("http://34.136.11.235/paymentservice");

@test:Config {}
function processPaymentTest() returns error? {
    runtime:sleep(10);
    http:Response val = check paymentServiceClient->post("/payment?orderId=1", {});
    test:assertEquals(val.statusCode, 202, "Status code should be 202");
}


@test:Config {}
function processPaymentTest1() returns error? {
    runtime:sleep(10);
    http:Response val = check paymentServiceClient->post("/payment?orderId=1", {});
    test:assertEquals(val.statusCode, 202, "Status code should be 202");
}

@test:Config {}
function processPaymentTest2() returns error? {
    runtime:sleep(10);
    http:Response val = check paymentServiceClient->post("/payment?orderId=1", {});
    test:assertEquals(val.statusCode, 202, "Status code should be 202");
}

@test:Config {}
function processPaymentTest5() returns error? {
    runtime:sleep(10);
    http:Response val = check paymentServiceClient->post("/payment?orderId=1", {});
    test:assertEquals(val.statusCode, 202, "Status code should be 202");
}


@test:Config {}
function processPaymentTest3() returns error? {
    runtime:sleep(10);
    http:Response val = check paymentServiceClient->post("/payment?orderId=1", {});
    test:assertEquals(val.statusCode, 202, "Status code should be 202");
}


@test:Config {}
function processPaymentTest4() returns error? {
    runtime:sleep(10);
    http:Response val = check paymentServiceClient->post("/payment?orderId=1", {});
    test:assertEquals(val.statusCode, 202, "Status code should be 202");
}

