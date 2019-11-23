/**
 * This is a generated file. DO NOT EDIT ANY CODE HERE, YOUR CHANGES WILL BE LOST.
 */
package br.com.senior.examples.helloworld;

import br.com.senior.messaging.model.*;
import br.com.senior.examples.helloworld.Pedido;
import br.com.senior.examples.helloworld.Pedido.Id;

/**
 * The 'retrieve' request primitive for the Pedido entity.
 */
@CommandDescription(name="retrievePedido", kind=CommandKind.Retrieve, requestPrimitive="retrievePedido", responsePrimitive="retrievePedidoResponse")
public interface RetrievePedido extends MessageHandler {
    
    public Pedido retrievePedido(Pedido.Id id);
    
}
