import ballerina/test;
import ballerina/http;
import ballerina/lang.runtime;

http:Client orderServiceClient = check new ("http://34.136.11.235/orderservice");

@test:Config {}
function placeOrderTest() returns error? {
    runtime:sleep(10);
    http:Response val = check orderServiceClient->post("/orders?userId=1&productId=2&quantity=3", {});
    test:assertEquals(val.statusCode, 202, "Status code should be 202");
}

@test:Config {}
function confirmOrderTest() returns error? {
    runtime:sleep(10);
    http:Response val = check orderServiceClient->post("/confirmedOrders?orderId=1", {});
    test:assertEquals(val.statusCode, 202, "Status code should be 202");
}

@test:Config {}
function placeOrderTest1() returns error? {
    runtime:sleep(10);
    http:Response val = check orderServiceClient->post("/orders?userId=1&productId=2&quantity=3", {});
    test:assertEquals(val.statusCode, 202, "Status code should be 202");
}

@test:Config {}
function confirmOrderTest1() returns error? {
    runtime:sleep(10);
    http:Response val = check orderServiceClient->post("/confirmedOrders?orderId=1", {});
    test:assertEquals(val.statusCode, 202, "Status code should be 202");
}

@test:Config {}
function placeOrderTest2() returns error? {
    runtime:sleep(10);
    http:Response val = check orderServiceClient->post("/orders?userId=1&productId=2&quantity=3", {});
    test:assertEquals(val.statusCode, 202, "Status code should be 202");
}

@test:Config {}
function confirmOrderTest2() returns error? {
    runtime:sleep(10);
    http:Response val = check orderServiceClient->post("/confirmedOrders?orderId=1", {});
    test:assertEquals(val.statusCode, 202, "Status code should be 202");
}

@test:Config {}
function placeOrderTest3() returns error? {
    runtime:sleep(10);
    http:Response val = check orderServiceClient->post("/orders?userId=1&productId=2&quantity=3", {});
    test:assertEquals(val.statusCode, 202, "Status code should be 202");
}

@test:Config {}
function confirmOrderTest3() returns error? {
    runtime:sleep(10);
    http:Response val = check orderServiceClient->post("/confirmedOrders?orderId=1", {});
    test:assertEquals(val.statusCode, 202, "Status code should be 202");
}

@test:Config {}
function placeOrderTest4() returns error? {
    runtime:sleep(10);
    http:Response val = check orderServiceClient->post("/orders?userId=1&productId=2&quantity=3", {});
    test:assertEquals(val.statusCode, 202, "Status code should be 202");
}

@test:Config {}
function confirmOrderTest4() returns error? {
    runtime:sleep(10);
    http:Response val = check orderServiceClient->post("/confirmedOrders?orderId=1", {});
    test:assertEquals(val.statusCode, 202, "Status code should be 202");
}


@test:Config {}
function placeOrderTest5() returns error? {
    runtime:sleep(10);
    http:Response val = check orderServiceClient->post("/orders?userId=1&productId=2&quantity=3", {});
    test:assertEquals(val.statusCode, 202, "Status code should be 202");
}

@test:Config {}
function confirmOrderTest5() returns error? {
    runtime:sleep(10);
    http:Response val = check orderServiceClient->post("/confirmedOrders?orderId=1", {});
    test:assertEquals(val.statusCode, 202, "Status code should be 202");
}
