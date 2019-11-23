/**
 * This is a generated file. DO NOT EDIT ANY CODE HERE, YOUR CHANGES WILL BE LOST.
 */
package br.com.senior.examples.helloworld;

import br.com.senior.messaging.model.*;
import br.com.senior.examples.helloworld.Item.PageRequest;

/**
 * The 'list' request primitive for the Item entity.
 */
@CommandDescription(name="listItem", kind=CommandKind.List, requestPrimitive="listItem", responsePrimitive="listItemResponse")
public interface ListItem extends MessageHandler {
    
    public Item.PagedResults listItem(Item.PageRequest pageRequest);
    
}
