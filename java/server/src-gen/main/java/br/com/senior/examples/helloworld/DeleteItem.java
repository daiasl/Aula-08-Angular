/**
 * This is a generated file. DO NOT EDIT ANY CODE HERE, YOUR CHANGES WILL BE LOST.
 */
package br.com.senior.examples.helloworld;

import br.com.senior.messaging.model.*;
import br.com.senior.examples.helloworld.Item.Id;

/**
 * The 'delete' request primitive for the Item entity.
 */
@CommandDescription(name="deleteItem", kind=CommandKind.Delete, requestPrimitive="deleteItem", responsePrimitive="deleteItemResponse")
public interface DeleteItem extends MessageHandler {
    
    public void deleteItem(Item.Id id);
    
}
