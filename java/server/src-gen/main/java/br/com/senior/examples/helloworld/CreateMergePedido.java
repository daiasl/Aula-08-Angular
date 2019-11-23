/**
 * This is a generated file. DO NOT EDIT ANY CODE HERE, YOUR CHANGES WILL BE LOST.
 */
package br.com.senior.examples.helloworld;

import br.com.senior.messaging.model.*;
import br.com.senior.examples.helloworld.Pedido;
import br.com.senior.examples.helloworld.Pedido;

/**
 * The 'createMerge' request primitive for the Pedido entity.
 */
@CommandDescription(name="createMergePedido", kind=CommandKind.CreateMerge, requestPrimitive="createMergePedido", responsePrimitive="createMergePedidoResponse")
public interface CreateMergePedido extends MessageHandler {
    
    public Pedido createMergePedido(Pedido toCreateMerge);
    
}
