import ballerina/test;
import ballerina/http;
import ballerinax/jaeger as _;

http:Client cartServiceClient = check new ("http://localhost:9233/cartservice");

@test:Config {}
function cartInfoTest() returns error? {
    http:Response val = check cartServiceClient->get("/cartInfo?userId=1");
    test:assertEquals(val.statusCode, 200, "Status code should be 200");
}

