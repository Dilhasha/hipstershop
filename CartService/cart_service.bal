import ballerinax/jaeger as _;
import ballerina/http;
import ballerina/io;

http:Client productServiceClient = check new ("http://34.136.11.235/productservice");

@display {
    label: "cartservice"
}
service /cartservice on new http:Listener(9233) {

    map<int> userMap = {
        "1": 123,
        "2": 456,
        "3": 789,
        "4": 101
    };

    function init() {
        io:println("cartservice initialized");
    }

    resource function get cartInfo(int userId) returns json|error {
        io:println("checkout the cart for user: " + userId.toString());
        int? productId = self.userMap[userId.toString()];
        if productId is () {
            return error("Invalid user id");
        }
        // get cart and get product id
        return getProductData(productId);
    }
}

function getProductData(int productId) returns json|error {
    http:Response|error val = productServiceClient->get("/productInfo?productId=" + productId.toString());
    if val is error {
        io:println("Error in getting product data");
        return val;
    } else {
        io:println("status: " + val.statusCode.toString());
        return val.getJsonPayload();
    }
}
