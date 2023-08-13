import ballerinax/jaeger as _;
import ballerina/lang.runtime;
import ballerina/http;


@display {
    label: "userservice"
}
service /userservice on new http:Listener(9231) {

    resource function get userInfo(int userId) returns json {
        runtime:sleep(5);
        return {"id": 123, "name": "John Doe"};
    }

    resource function get users() returns json {  
        runtime:sleep(5);
        return [{"id": 123, "name": "John Doe"}, {"id": 456, "name": "Jane Doe"}];
    }
}
