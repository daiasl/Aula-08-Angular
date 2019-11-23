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
 * Response method for updatePedido
 */
@CommandDescription(name="updatePedidoResponse", kind=CommandKind.ResponseCommand, requestPrimitive="updatePedidoResponse")
public interface UpdatePedidoResponse extends MessageHandler {

	void updatePedidoResponse(Pedido response);
	
	void updatePedidoResponseError(ErrorPayload error);

}
