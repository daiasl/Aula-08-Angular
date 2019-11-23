/**
 * This is a generated file. DO NOT EDIT ANY CODE HERE, YOUR CHANGES WILL BE LOST.
 */
package br.com.senior.examples.helloworld;	

import br.com.senior.messaging.ErrorPayload;
import br.com.senior.messaging.model.CommandDescription;
import br.com.senior.messaging.model.CommandKind;
import br.com.senior.messaging.model.MessageHandler;
import br.com.senior.examples.helloworld.ExportPedidoOutput;

/**
 * Response method for exportPedido
 */
@CommandDescription(name="exportPedidoResponse", kind=CommandKind.ResponseCommand, requestPrimitive="exportPedidoResponse")
public interface ExportPedidoResponse extends MessageHandler {

	void exportPedidoResponse(ExportPedidoOutput response);
	
	void exportPedidoResponseError(ErrorPayload error);

}
