import ballerinax/jaeger as _;
import ballerina/http;
import ballerina/io;

http:Client productServiceClient = check new ("http://34.136.11.235/productservice");

@display {
    label: "cartservice"
}
service /cartservice on new http:Listener(9233) {

    function init() {
        io:println("cartservice initialized");
    }

    resource function get cartInfo(int userId) returns json {    
        io:println("checkout the cart for this user id: " + userId.toString());
        // get card and get product id
        return getProductData(1);
    }
}

function getProductData(int productId) returns json {
    http:Response|error val = productServiceClient->get("/productInfo?productId=123");
    if val is error {
        io:println("Error in getting product data");
    } else {
        io:println("status: " + val.statusCode.toString());
    }
    return { "productId": productId, "productName": "MacBook Pro1", "price": 2000.00 };
}
