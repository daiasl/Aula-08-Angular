/**
 * This is a generated file. DO NOT EDIT ANY CODE HERE, YOUR CHANGES WILL BE LOST.
 */
package br.com.senior.examples.helloworld;

import br.com.senior.messaging.model.*;
import br.com.senior.examples.helloworld.ImportPedidoOutput;
import br.com.senior.examples.helloworld.ImportPedidoInput;

@CommandDescription(name="importPedido", kind=CommandKind.Action, requestPrimitive="importPedido", responsePrimitive="importPedidoResponse")
public interface ImportPedido extends MessageHandler {
    
    public ImportPedidoOutput importPedido(ImportPedidoInput request);
    
}
