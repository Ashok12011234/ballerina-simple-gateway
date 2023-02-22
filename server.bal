import ballerina/http;

listener http:Listener httpListener = new (8080);

service / on httpListener {
    resource function get hello() returns string { 
        return "Hello, World!"; 
    }

    
}