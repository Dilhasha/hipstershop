import ballerina/test;
import ballerina/http;

http:Client cartServiceClient = check new ("http://34.136.11.235:9233/cartservice");

@test:Config
{}
function carttest() returns error? {
    http:Response val = check cartServiceClient->/cartInfo(userId=1);
    test:assertEquals(val.statusCode, 200, "Status code should be 200");
}