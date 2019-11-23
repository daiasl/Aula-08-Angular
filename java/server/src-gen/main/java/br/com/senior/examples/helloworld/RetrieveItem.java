/**
 * This is a generated file. DO NOT EDIT ANY CODE HERE, YOUR CHANGES WILL BE LOST.
 */
package br.com.senior.examples.helloworld;

import br.com.senior.messaging.model.*;
import br.com.senior.examples.helloworld.Item;
import br.com.senior.examples.helloworld.Item.Id;

/**
 * The 'retrieve' request primitive for the Item entity.
 */
@CommandDescription(name="retrieveItem", kind=CommandKind.Retrieve, requestPrimitive="retrieveItem", responsePrimitive="retrieveItemResponse")
public interface RetrieveItem extends MessageHandler {
    
    public Item retrieveItem(Item.Id id);
    
}
