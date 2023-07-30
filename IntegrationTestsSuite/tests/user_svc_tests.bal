import ballerina/test;
import ballerina/http;

http:Client userServiceClient = check new ("http://34.136.11.235/userservice");


@test:Config {}
function userSvcTest() returns error? {
    http:Response val = check userServiceClient->get("/users");
    test:assertEquals(val.statusCode, 200, "Status code should be 200");

}

@test:Config {}
function getUserDetailsTest() returns error? {
    http:Response val = check userServiceClient->get("/userInfo?userId=123");
    test:assertEquals(val.statusCode, 200, "Status code should be 200");
}
