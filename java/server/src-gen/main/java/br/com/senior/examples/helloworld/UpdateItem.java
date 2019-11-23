/**
 * This is a generated file. DO NOT EDIT ANY CODE HERE, YOUR CHANGES WILL BE LOST.
 */
package br.com.senior.examples.helloworld;

import br.com.senior.messaging.model.*;
import br.com.senior.examples.helloworld.Item;
import br.com.senior.examples.helloworld.Item;

/**
 * The 'update' request primitive for the Item entity.
 */
@CommandDescription(name="updateItem", kind=CommandKind.Update, requestPrimitive="updateItem", responsePrimitive="updateItemResponse")
public interface UpdateItem extends MessageHandler {
    
    public Item updateItem(Item toUpdate);
    
}
