import ballerina/test;
import ballerina/http;
import ballerina/lang.runtime;

http:Client userServiceClient = check new ("http://34.136.11.235/userservice");


@test:Config {}
function userSvcTest() returns error? {
    runtime:sleep(10);
    http:Response val = check userServiceClient->get("/users");
    test:assertEquals(val.statusCode, 200, "Status code should be 200");

}

@test:Config {}
function getUserDetailsTest() returns error? {
    runtime:sleep(10);
    http:Response val = check userServiceClient->get("/userInfo?userId=123");
    test:assertEquals(val.statusCode, 200, "Status code should be 200");
}

@test:Config {}
function userSvcTest1() returns error? {
    runtime:sleep(10);
    http:Response val = check userServiceClient->get("/users");
    test:assertEquals(val.statusCode, 200, "Status code should be 200");

}

@test:Config {}
function getUserDetailsTest1() returns error? {
    runtime:sleep(10);
    http:Response val = check userServiceClient->get("/userInfo?userId=123");
    test:assertEquals(val.statusCode, 200, "Status code should be 200");
}

@test:Config {}
function userSvcTest2() returns error? {
    runtime:sleep(10);
    http:Response val = check userServiceClient->get("/users");
    test:assertEquals(val.statusCode, 200, "Status code should be 200");

}

@test:Config {}
function getUserDetailsTest2() returns error? {
    runtime:sleep(10);
    http:Response val = check userServiceClient->get("/userInfo?userId=123");
    test:assertEquals(val.statusCode, 200, "Status code should be 200");
}

@test:Config {}
function userSvcTest7() returns error? {
    runtime:sleep(10);
    http:Response val = check userServiceClient->get("/users");
    test:assertEquals(val.statusCode, 200, "Status code should be 200");

}

@test:Config {}
function getUserDetailsTest3() returns error? {
    runtime:sleep(10);
    http:Response val = check userServiceClient->get("/userInfo?userId=123");
    test:assertEquals(val.statusCode, 200, "Status code should be 200");
}


@test:Config {}
function userSvcTest5() returns error? {
    runtime:sleep(10);
    http:Response val = check userServiceClient->get("/users");
    test:assertEquals(val.statusCode, 200, "Status code should be 200");

}

@test:Config {}
function getUserDetailsTest5() returns error? {
    runtime:sleep(10);
    http:Response val = check userServiceClient->get("/userInfo?userId=123");
    test:assertEquals(val.statusCode, 200, "Status code should be 200");
}


@test:Config {}
function userSvcTest4() returns error? {
    runtime:sleep(10);
    http:Response val = check userServiceClient->get("/users");
    test:assertEquals(val.statusCode, 200, "Status code should be 200");

}

@test:Config {}
function getUserDetailsTest4() returns error? {
    runtime:sleep(10);
    http:Response val = check userServiceClient->get("/userInfo?userId=123");
    test:assertEquals(val.statusCode, 200, "Status code should be 200");
}

