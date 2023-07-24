import ballerina/test;
import ballerina/http;

http:Client inventoryServiceClient = check new ("http://localhost:9236/inventoryservice");

function getResponse() returns http:Response|error {
    http:Response val = check cartServiceClient->/cartInfo(userId=1);
    return val;
}

@test:Config {}
function checkAvailabilityTest() returns error? {
    http:Response val = check inventoryServiceClient->get("/isAvailable?productId=1&quantity=2");
    test:assertEquals(val.statusCode, 200, "Status code should be 200");
}

@test:Config {}
function updateSaleTest() returns error? {
    http:Response val = check inventoryServiceClient->post("/updateSale?productId=1&quantity=2", {});
    test:assertEquals(val.statusCode, 202, "Status code should be 202");
}
