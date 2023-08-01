import ballerina/test;
import ballerina/http;
import ballerina/lang.runtime;

http:Client inventoryServiceClient = check new ("http://34.136.11.235/inventoryservice");

@test:Config {}
function checkAvailabilityTest() returns error? {
    runtime:sleep(10);
    http:Response val = check inventoryServiceClient->get("/isAvailable?productId=1&quantity=2");
    test:assertEquals(val.statusCode, 200, "Status code should be 200");
}

@test:Config {}
function updateSaleTest1() returns error? {
    runtime:sleep(10);
    http:Response val = check inventoryServiceClient->post("/updateSale?productId=1&quantity=2", {});
    test:assertEquals(val.statusCode, 202, "Status code should be 202");
}

@test:Config {}
function checkAvailabilityTest1() returns error? {
    runtime:sleep(10);
    http:Response val = check inventoryServiceClient->get("/isAvailable?productId=1&quantity=2");
    test:assertEquals(val.statusCode, 200, "Status code should be 200");
}

@test:Config {}
function updateSaleTest2() returns error? {
    runtime:sleep(10);
    http:Response val = check inventoryServiceClient->post("/updateSale?productId=1&quantity=2", {});
    test:assertEquals(val.statusCode, 202, "Status code should be 202");
}
@test:Config {}
function checkAvailabilityTest2() returns error? {
    runtime:sleep(10);
    http:Response val = check inventoryServiceClient->get("/isAvailable?productId=1&quantity=2");
    test:assertEquals(val.statusCode, 200, "Status code should be 200");
}

@test:Config {}
function updateSaleTest3() returns error? {
    runtime:sleep(10);
    http:Response val = check inventoryServiceClient->post("/updateSale?productId=1&quantity=2", {});
    test:assertEquals(val.statusCode, 202, "Status code should be 202");
}
@test:Config {}
function checkAvailabilityTest3() returns error? {
    runtime:sleep(10);
    http:Response val = check inventoryServiceClient->get("/isAvailable?productId=1&quantity=2");
    test:assertEquals(val.statusCode, 200, "Status code should be 200");
}

@test:Config {}
function updateSaleTest() returns error? {
    runtime:sleep(10);
    http:Response val = check inventoryServiceClient->post("/updateSale?productId=1&quantity=2", {});
    test:assertEquals(val.statusCode, 202, "Status code should be 202");
}
@test:Config {}
function checkAvailabilityTest4() returns error? {
    runtime:sleep(10);
    http:Response val = check inventoryServiceClient->get("/isAvailable?productId=1&quantity=2");
    test:assertEquals(val.statusCode, 200, "Status code should be 200");
}

@test:Config {}
function updateSaleTest4() returns error? {
    runtime:sleep(10);
    http:Response val = check inventoryServiceClient->post("/updateSale?productId=1&quantity=2", {});
    test:assertEquals(val.statusCode, 202, "Status code should be 202");
}
