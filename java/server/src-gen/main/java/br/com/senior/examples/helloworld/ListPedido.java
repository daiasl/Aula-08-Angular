/**
 * This is a generated file. DO NOT EDIT ANY CODE HERE, YOUR CHANGES WILL BE LOST.
 */
package br.com.senior.examples.helloworld;

import br.com.senior.messaging.model.*;
import br.com.senior.examples.helloworld.Pedido.PageRequest;

/**
 * The 'list' request primitive for the Pedido entity.
 */
@CommandDescription(name="listPedido", kind=CommandKind.List, requestPrimitive="listPedido", responsePrimitive="listPedidoResponse")
public interface ListPedido extends MessageHandler {
    
    public Pedido.PagedResults listPedido(Pedido.PageRequest pageRequest);
    
}
