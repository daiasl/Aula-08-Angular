/**
 * This is a generated file. DO NOT EDIT ANY CODE HERE, YOUR CHANGES WILL BE LOST.
 */
package br.com.senior.examples.helloworld;

import br.com.senior.messaging.model.*;

@SubscriptionDescription(domain="examples", service="hello_world", event="exportItemEvent")
public interface ExportItemEvent extends MessageHandler {
    public void exportItemEvent(ExportItemEventPayload payload);
    
}
