import ballerina/test;
import ballerina/http;


// User defined data types to perform client side data-binding.
type ProfileResponse record {|
    record {|Profile profile;|} data;
|};

type Profile record {|
    string name;
    int age;
|};

http:Client cartServiceClient = check new ("http://34.136.11.235/cartservice");


@test:Config {}
function cartInfoTest() returns error? {
    http:Response val = check getResponse();
    test:assertEquals(val.statusCode, 200, "Status code should be 200");
}

@test:Config {}
function cartInfoTest1() returns error? {
    http:Response val = check getResponse();
    test:assertEquals(val.statusCode, 200, "Status code should be 200");
}

@test:Config {}
function cartInfoTest2() returns error? {
    http:Response val = check getResponse();
    test:assertEquals(val.statusCode, 200, "Status code should be 200");
}

@test:Config {}
function cartInfoTest3() returns error? {
    http:Response val = check getResponse();
    test:assertEquals(val.statusCode, 200, "Status code should be 200");
}

@test:Config {}
function cartInfoTest4() returns error? {
    http:Response val = check getResponse();
    test:assertEquals(val.statusCode, 200, "Status code should be 200");
}

@test:Config {}
function cartInfoTest5() returns error? {
    http:Response val = check getResponse();
    test:assertEquals(val.statusCode, 200, "Status code should be 200");
}