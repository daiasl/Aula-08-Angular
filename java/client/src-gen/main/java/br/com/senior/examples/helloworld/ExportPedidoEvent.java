/**
 * This is a generated file. DO NOT EDIT ANY CODE HERE, YOUR CHANGES WILL BE LOST.
 */
package br.com.senior.examples.helloworld;

import br.com.senior.messaging.model.*;

@SubscriptionDescription(domain="examples", service="hello_world", event="exportPedidoEvent")
public interface ExportPedidoEvent extends MessageHandler {
    public void exportPedidoEvent(ExportPedidoEventPayload payload);
    
}
