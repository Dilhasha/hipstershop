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



// @test:Config {}
// public function testFunc() returns error? {
//     // Creates a new client with the backend URL.
//     graphql:Client graphqlClient = check new ("34.136.11.235:9090/graphql");

//     string document = "{ profile { name, age } }";

//     ProfileResponse response = check graphqlClient->execute(document);
//     io:println(response.data.profile);
// }
