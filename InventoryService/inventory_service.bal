import ballerinax/jaeger as _;
import ballerina/http;
import ballerina/io;
import ballerina/lang.runtime;

@display {
    label: "inventoryservice"
}
service /inventoryservice on new http:Listener(9236) {

    resource function get isAvailable(int productId, int quantity) returns boolean {
        runtime:sleep(5);
        return true;
    }

    resource function post updateSale(int productId, int quantity) {   
        runtime:sleep(5);
        io:println("Inventory updated for product id: " + productId.toString() + " quantity: " + quantity.toString());
    }
}
