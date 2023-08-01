import ballerina/test;
import ballerina/http;
import ballerina/lang.runtime;

http:Client shippingServiceClient = check new ("http://34.136.11.235/shippingservice");

@test:Config {}
function placeShipmentTest() returns error? {
    runtime:sleep(10);
    http:Response val = check shippingServiceClient->post("/shipment?orderId=1", {});
    test:assertEquals(val.statusCode, 201, "Status code should be 200");
}

@test:Config {}
function placeShipmentTest3() returns error? {
    runtime:sleep(10);
    http:Response val = check shippingServiceClient->post("/shipment?orderId=1", {});
    test:assertEquals(val.statusCode, 201, "Status code should be 200");
}

@test:Config {}
function placeShipmentTest1() returns error? {
    runtime:sleep(10);
    http:Response val = check shippingServiceClient->post("/shipment?orderId=1", {});
    test:assertEquals(val.statusCode, 201, "Status code should be 200");
}

@test:Config {}
function placeShipmentTest2() returns error? {
    runtime:sleep(10);
    http:Response val = check shippingServiceClient->post("/shipment?orderId=1", {});
    test:assertEquals(val.statusCode, 201, "Status code should be 200");
}

