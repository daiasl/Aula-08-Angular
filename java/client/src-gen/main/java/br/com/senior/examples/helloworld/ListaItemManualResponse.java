/**
 * This is a generated file. DO NOT EDIT ANY CODE HERE, YOUR CHANGES WILL BE LOST.
 */
package br.com.senior.examples.helloworld;	

import br.com.senior.messaging.ErrorPayload;
import br.com.senior.messaging.model.CommandDescription;
import br.com.senior.messaging.model.CommandKind;
import br.com.senior.messaging.model.MessageHandler;
import br.com.senior.examples.helloworld.ListaItemManualOutput;

/**
 * Response method for listaItemManual
 */
@CommandDescription(name="listaItemManualResponse", kind=CommandKind.ResponseCommand, requestPrimitive="listaItemManualResponse")
public interface ListaItemManualResponse extends MessageHandler {

	void listaItemManualResponse(ListaItemManualOutput response);
	
	void listaItemManualResponseError(ErrorPayload error);

}
