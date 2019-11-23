/**
 * This is a generated file. DO NOT EDIT ANY CODE HERE, YOUR CHANGES WILL BE LOST.
 */
package br.com.senior.examples.helloworld;

import br.com.senior.messaging.model.*;

@SubscriptionDescription(domain="examples", service="hello_world", event="importItemEvent")
public interface ImportItemEvent extends MessageHandler {
    public void importItemEvent(ImportItemEventPayload payload);
    
}
