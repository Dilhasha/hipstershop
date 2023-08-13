import ballerinax/jaeger as _;
import ballerina/http;
import ballerina/io;

type Product record {|
    int productId;
    string productName;
    int price;
|};

@display {
    label: "productservice"
}
service /productservice on new http:Listener(9232) {
    map<Product> productMap = {
        "123": {"productId": 123, "productName": "MacBook Pro", "price": 2000},
        "456": {"productId": 456, "productName": "iPhone 12", "price": 1000},
        "789": {"productId": 789, "productName": "iPad Pro", "price": 1500},
        "101": {"productId": 101, "productName": "Apple Watch", "price": 500}
    };

    resource function get productInfo(int productId) returns json {
        Product? item = self.productMap[productId.toString()];
        return item is () ? {} : item;
    }

    resource function get productCatalog() returns json {
        return [{"id": 1, "item": "TShirt", "quantity": 100}, {"id": 2, "item": "Pants", "quantity": 50}];
    }

    resource function post buyProduct(int productId) returns error? {
        // Call inventory to update product stock
        http:Client clientEp = check new ("http://34.136.11.235/checkout");
        http:Request req = new;
        req.setPayload({"id": 1, "item": "TShirt", "quantity": 100});
        http:Response res = check clientEp->post("/checkout", req);
        if (res.statusCode == 200) {
            io:println("Product purchased successfully");
        } else {
            io:println("Product purchase failed");
        }
    }
}
