/**
 * This is a generated file. DO NOT EDIT ANY CODE HERE, YOUR CHANGES WILL BE LOST.
 */
package br.com.senior.examples.helloworld;	

import br.com.senior.messaging.ErrorPayload;
import br.com.senior.messaging.model.CommandDescription;
import br.com.senior.messaging.model.CommandKind;
import br.com.senior.messaging.model.MessageHandler;
import br.com.senior.examples.helloworld.Pedido;

/**
 * Response method for updateMergePedido
 */
@CommandDescription(name="updateMergePedidoResponse", kind=CommandKind.ResponseCommand, requestPrimitive="updateMergePedidoResponse")
public interface UpdateMergePedidoResponse extends MessageHandler {

	void updateMergePedidoResponse(Pedido response);
	
	void updateMergePedidoResponseError(ErrorPayload error);

}
