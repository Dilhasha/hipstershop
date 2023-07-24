import ballerina/test;
import ballerina/http;

http:Client productServiceClient = check new ("http://localhost:9232/productservice");


@test:Config {}
function productSvcTest() returns error? {
    http:Response val = check productServiceClient->get("/productCatalog");
    test:assertEquals(val.statusCode, 200, "Status code should be 200");
}

@test:Config {}
function getProductDetailsTest() returns error? {
    http:Response val = check productServiceClient->get("/productInfo?productId=1");
    test:assertEquals(val.statusCode, 200, "Status code should be 200");
}
