import ballerina/test;
import ballerina/http;
import ballerinax/jaeger as _;
import microrts/static_analyzer as _;
import ballerina/graphql;
import ballerina/io;

// User defined data types to perform client side data-binding.
type ProfileResponse record {|
    record {|Profile profile;|} data;
|};

type Profile record {|
    string name;
    int age;
|};

http:Client cartServiceClient = check new ("http://localhost:9233/cartservice");


@test:Config {}
function cartInfoTest() returns error? {
<<<<<<< Updated upstream
    error? result = startTest("cartInfoTest");
    http:Response val = check cartServiceClient->get("/cartInfo?userId=1");
=======
    http:Response val = check getResponse();
>>>>>>> Stashed changes
    test:assertEquals(val.statusCode, 200, "Status code should be 200");
    result = endTest("cartInfoTest");
}



@test:Config {}
public function testFunc() returns error? {
    // Creates a new client with the backend URL.
    graphql:Client graphqlClient = check new ("localhost:9090/graphql");

    string document = "{ profile { name, age } }";

    ProfileResponse response = check graphqlClient->execute(document);
    io:println(response.data.profile);
}
