import ballerina/test;
import ballerina/http;

http:Client shippingServiceClient = check new ("http://localhost:9237/shippingservice");

@test:Config {}
function placeShipmentTest() returns error? {
    http:Response val = check shippingServiceClient->post("/shipment?orderId=1", {});
    test:assertEquals(val.statusCode, 201, "Status code should be 200");
}

