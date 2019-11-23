/**
 * This is a generated file. DO NOT EDIT ANY CODE HERE, YOUR CHANGES WILL BE LOST.
 */
package br.com.senior.examples.helloworld;	

import br.com.senior.messaging.ErrorPayload;
import br.com.senior.messaging.model.CommandDescription;
import br.com.senior.messaging.model.CommandKind;
import br.com.senior.messaging.model.MessageHandler;
import br.com.senior.examples.helloworld.ExportItemOutput;

/**
 * Response method for exportItem
 */
@CommandDescription(name="exportItemResponse", kind=CommandKind.ResponseCommand, requestPrimitive="exportItemResponse")
public interface ExportItemResponse extends MessageHandler {

	void exportItemResponse(ExportItemOutput response);
	
	void exportItemResponseError(ErrorPayload error);

}
