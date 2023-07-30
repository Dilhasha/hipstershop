import ballerina/test;
import ballerina/http;

http:Client paymentServiceClient = check new ("http://34.136.11.235/paymentservice");

@test:Config {}
function processPaymentTest() returns error? {
    http:Response val = check paymentServiceClient->post("/payment?orderId=1", {});
    test:assertEquals(val.statusCode, 202, "Status code should be 202");
}

