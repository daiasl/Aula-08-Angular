/**
 * This is a generated file. DO NOT EDIT ANY CODE HERE, YOUR CHANGES WILL BE LOST.
 */
package br.com.senior.examples.helloworld;	

import br.com.senior.messaging.ErrorPayload;
import br.com.senior.messaging.model.CommandDescription;
import br.com.senior.messaging.model.CommandKind;
import br.com.senior.messaging.model.MessageHandler;
import br.com.senior.examples.helloworld.ImportPedidoOutput;

/**
 * Response method for importPedido
 */
@CommandDescription(name="importPedidoResponse", kind=CommandKind.ResponseCommand, requestPrimitive="importPedidoResponse")
public interface ImportPedidoResponse extends MessageHandler {

	void importPedidoResponse(ImportPedidoOutput response);
	
	void importPedidoResponseError(ErrorPayload error);

}
