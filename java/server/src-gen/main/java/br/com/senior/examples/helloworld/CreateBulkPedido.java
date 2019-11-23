/**
 * This is a generated file. DO NOT EDIT ANY CODE HERE, YOUR CHANGES WILL BE LOST.
 */
package br.com.senior.examples.helloworld;

import br.com.senior.examples.helloworld.Pedido;
import br.com.senior.messaging.model.*;

@CommandDescription(name = "createBulkPedido", kind = CommandKind.Create, requestPrimitive = "createBulkPedido", responsePrimitive="")
public interface CreateBulkPedido extends MessageHandler {
    public CreateBulkPedidoOutput createBulkPedido(CreateBulkPedidoInput toCreate);
}
