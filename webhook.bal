import ballerinax/trigger.google.mail;
import ballerina/http;

configurable mail:ListenerConfig config = ?; 

listener http:Listener httpListener = new(8090);
listener mail:Listener webhookListener = new(config, httpListener);

service mail:GmailService on webhookListener {
    
    remote function onNewEmail(mail:Message message ) returns error? {
      //Not Implemented
    }
    remote function onNewThread(mail:MailThread thread ) returns error? {
      //Not Implemented
    }
    remote function onEmailLabelAdded(mail:ChangedLabel changedLabel ) returns error? {
      //Not Implemented
    }
    remote function onEmailStarred(mail:Message message ) returns error? {
      //Not Implemented
    }
    remote function onEmailLabelRemoved(mail:ChangedLabel changedLabel ) returns error? {
      //Not Implemented
    }
    remote function onEmailStarRemoved(mail:Message message ) returns error? {
      //Not Implemented
    }
    remote function onNewAttachment(mail:MailAttachment attachment ) returns error? {
      //Not Implemented
    }
}

service /ignore on httpListener {}