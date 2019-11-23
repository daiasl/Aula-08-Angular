/**
 * This is a generated file. DO NOT EDIT ANY CODE HERE, YOUR CHANGES WILL BE LOST.
 */
package br.com.senior.examples.helloworld;

import br.com.senior.messaging.model.*;
import br.com.senior.examples.helloworld.ImportItemOutput;
import br.com.senior.examples.helloworld.ImportItemInput;

@CommandDescription(name="importItem", kind=CommandKind.Action, requestPrimitive="importItem", responsePrimitive="importItemResponse")
public interface ImportItem extends MessageHandler {
    
    public ImportItemOutput importItem(ImportItemInput request);
    
}
