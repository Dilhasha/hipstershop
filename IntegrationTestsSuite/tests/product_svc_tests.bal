import ballerina/test;
import ballerina/http;


http:Client productServiceClient = check new ("http://34.136.11.235/productservice");


@test:Config {}
function productSvcTest() returns error? {
    
    http:Response val = check productServiceClient->get("/productCatalog");
    test:assertEquals(val.statusCode, 200, "Status code should be 202");
}

@test:Config {}
function getProductDetailsTest() returns error? {
    
    http:Response val = check productServiceClient->get("/productInfo?productId=1");
    test:assertEquals(val.statusCode, 200, "Status code should be 202");
}


@test:Config {}
function productSvcTest1() returns error? {
    
    http:Response val = check productServiceClient->get("/productCatalog");
    test:assertEquals(val.statusCode, 200, "Status code should be 202");
}

@test:Config {}
function getProductDetailsTest1() returns error? {
    
    http:Response val = check productServiceClient->get("/productInfo?productId=1");
    test:assertEquals(val.statusCode, 200, "Status code should be 202");
}

@test:Config {}
function productSvcTest2() returns error? {
    
    http:Response val = check productServiceClient->get("/productCatalog");
    test:assertEquals(val.statusCode, 200, "Status code should be 202");
}

@test:Config {}
function getProductDetailsTest2() returns error? {
    
    http:Response val = check productServiceClient->get("/productInfo?productId=1");
    test:assertEquals(val.statusCode, 200, "Status code should be 202");
}

@test:Config {}
function productSvcTest3() returns error? {
    
    http:Response val = check productServiceClient->get("/productCatalog");
    test:assertEquals(val.statusCode, 200, "Status code should be 202");
}

@test:Config {}
function getProductDetailsTest3() returns error? {
    
    http:Response val = check productServiceClient->get("/productInfo?productId=1");
    test:assertEquals(val.statusCode, 200, "Status code should be 202");
}
