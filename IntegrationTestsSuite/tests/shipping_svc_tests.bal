import ballerina/test;
import ballerina/http;

http:Client shippingServiceClient = check new ("http://34.136.11.235/shippingservice");

@test:Config {}
function placeShipmentTest() returns error? {
    http:Response val = check shippingServiceClient->post("/shipment?orderId=1", {});
    test:assertEquals(val.statusCode, 201, "Status code should be 200");
}

