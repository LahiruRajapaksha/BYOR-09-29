import ballerinax/trigger.google.mail;
import ballerina/http;

configurable mail:ListenerConfig config = ?; 

listener http:Listener httpListener = new(8090);
listener mail:Listener webhookListener = new(config, httpListener);

service mail:GmailService on webhookListener {
    
    remote function onNewEmail(mail:Message message ) returns error? {
      //Not Implemented
    }
}

service /ignore on httpListener {}
