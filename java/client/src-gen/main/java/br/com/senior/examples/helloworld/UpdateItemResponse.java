/**
 * This is a generated file. DO NOT EDIT ANY CODE HERE, YOUR CHANGES WILL BE LOST.
 */
package br.com.senior.examples.helloworld;	

import br.com.senior.messaging.ErrorPayload;
import br.com.senior.messaging.model.CommandDescription;
import br.com.senior.messaging.model.CommandKind;
import br.com.senior.messaging.model.MessageHandler;
import br.com.senior.examples.helloworld.Item;

/**
 * Response method for updateItem
 */
@CommandDescription(name="updateItemResponse", kind=CommandKind.ResponseCommand, requestPrimitive="updateItemResponse")
public interface UpdateItemResponse extends MessageHandler {

	void updateItemResponse(Item response);
	
	void updateItemResponseError(ErrorPayload error);

}
