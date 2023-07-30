import ballerina/test;
import ballerina/http;

http:Client orderServiceClient = check new ("http://34.136.11.235/orderservice");

@test:Config {}
function placeOrderTest() returns error? {
    http:Response val = check orderServiceClient->post("/orders?userId=1&productId=2&quantity=3", {});
    test:assertEquals(val.statusCode, 202, "Status code should be 202");
}

@test:Config {}
function confirmOrderTest() returns error? {
    http:Response val = check orderServiceClient->post("/confirmedOrders?orderId=1", {});
    test:assertEquals(val.statusCode, 202, "Status code should be 202");
}

