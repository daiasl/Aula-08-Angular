/**
 * This is a generated file. DO NOT EDIT ANY CODE HERE, YOUR CHANGES WILL BE LOST.
 */
package br.com.senior.examples.helloworld;

import br.com.senior.messaging.model.*;
import br.com.senior.examples.helloworld.Item;
import br.com.senior.examples.helloworld.Item;

/**
 * The 'create' request primitive for the Item entity.
 */
@CommandDescription(name="createItem", kind=CommandKind.Create, requestPrimitive="createItem", responsePrimitive="createItemResponse")
public interface CreateItem extends MessageHandler {
    
    public Item createItem(Item toCreate);
    
}
