/**
 * This is a generated file. DO NOT EDIT ANY CODE HERE, YOUR CHANGES WILL BE LOST.
 */
package br.com.senior.examples.helloworld;	

import br.com.senior.messaging.ErrorPayload;
import br.com.senior.messaging.model.CommandDescription;
import br.com.senior.messaging.model.CommandKind;
import br.com.senior.messaging.model.MessageHandler;

/**
 * Response method for listPedido
 */
@CommandDescription(name="listPedidoResponse", kind=CommandKind.ResponseCommand, requestPrimitive="listPedidoResponse")
public interface ListPedidoResponse extends MessageHandler {

	void listPedidoResponse(Pedido.PagedResults response);
	
	void listPedidoResponseError(ErrorPayload error);

}
