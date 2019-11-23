/**
 * This is a generated file. DO NOT EDIT ANY CODE HERE, YOUR CHANGES WILL BE LOST.
 */
package br.com.senior.examples.helloworld;

import br.com.senior.messaging.model.*;
import br.com.senior.examples.helloworld.Pedido;
import br.com.senior.examples.helloworld.Pedido;

/**
 * The 'updateMerge' request primitive for the Pedido entity.
 */
@CommandDescription(name="updateMergePedido", kind=CommandKind.UpdateMerge, requestPrimitive="updateMergePedido", responsePrimitive="updateMergePedidoResponse")
public interface UpdateMergePedido extends MessageHandler {
    
    public Pedido updateMergePedido(Pedido toUpdateMerge);
    
}
