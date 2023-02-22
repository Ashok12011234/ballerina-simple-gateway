import ballerina/http;

listener http:Listener httpListener = new (8000);

service / on httpListener {

    resource function get hello(http:Request request) returns http:Response|error {
        
        string[] headers = request.getHeaderNames();

        boolean found=false;

        foreach string name in headers {
            if(name=="Token"){
                found=true;
            }
        }

        http:Response response = new;

        if( found){

            string token=check  request.getHeader("Token");

            if (token!= "" ){
                    // Construct the redirect URL.
                    string redirectUrl = "http://localhost:8080/authorized";
                    
                    // Create an HTTP response with a "302 Found" status code and the redirect URL in the "Location" header.
                    
                    response.statusCode = 302;
                    response.setHeader("Location", redirectUrl);

                    // Send the HTTP response back to the client, causing the browser to redirect to the specified URL.
                    //_ = caller->respond(response);
            }
            else{
                // Create a response and populate the headers/payload.
                response.setPayload("There is no Token in your header");
                
            }
        }
        else{
                // Create a response and populate the headers/payload.
                response.setPayload("There is no Token in your header");
                
            }
        return response;
    }
    
    
}

