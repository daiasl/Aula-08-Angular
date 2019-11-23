/**
 * This is a generated file. DO NOT EDIT ANY CODE HERE, YOUR CHANGES WILL BE LOST.
 */
package br.com.senior.examples.helloworld;	

import br.com.senior.messaging.ErrorPayload;
import br.com.senior.messaging.model.CommandDescription;
import br.com.senior.messaging.model.CommandKind;
import br.com.senior.messaging.model.MessageHandler;

/**
 * Response method for listItem
 */
@CommandDescription(name="listItemResponse", kind=CommandKind.ResponseCommand, requestPrimitive="listItemResponse")
public interface ListItemResponse extends MessageHandler {

	void listItemResponse(Item.PagedResults response);
	
	void listItemResponseError(ErrorPayload error);

}
