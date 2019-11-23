/**
 * This is a generated file. DO NOT EDIT ANY CODE HERE, YOUR CHANGES WILL BE LOST.
 */
package br.com.senior.examples.helloworld;	

import br.com.senior.messaging.ErrorPayload;
import br.com.senior.messaging.model.CommandDescription;
import br.com.senior.messaging.model.CommandKind;
import br.com.senior.messaging.model.MessageHandler;
import br.com.senior.examples.helloworld.CreateBulkItemOutput;

/**
 * Response method for createBulkItem
 */
@CommandDescription(name="createBulkItemResponse", kind=CommandKind.ResponseCommand, requestPrimitive="createBulkItemResponse")
public interface CreateBulkItemResponse extends MessageHandler {

	void createBulkItemResponse(CreateBulkItemOutput response);
	
	void createBulkItemResponseError(ErrorPayload error);

}
