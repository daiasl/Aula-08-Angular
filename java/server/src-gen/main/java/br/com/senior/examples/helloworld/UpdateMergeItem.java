/**
 * This is a generated file. DO NOT EDIT ANY CODE HERE, YOUR CHANGES WILL BE LOST.
 */
package br.com.senior.examples.helloworld;

import br.com.senior.messaging.model.*;
import br.com.senior.examples.helloworld.Item;
import br.com.senior.examples.helloworld.Item;

/**
 * The 'updateMerge' request primitive for the Item entity.
 */
@CommandDescription(name="updateMergeItem", kind=CommandKind.UpdateMerge, requestPrimitive="updateMergeItem", responsePrimitive="updateMergeItemResponse")
public interface UpdateMergeItem extends MessageHandler {
    
    public Item updateMergeItem(Item toUpdateMerge);
    
}
