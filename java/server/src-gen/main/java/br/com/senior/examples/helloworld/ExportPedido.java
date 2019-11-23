/**
 * This is a generated file. DO NOT EDIT ANY CODE HERE, YOUR CHANGES WILL BE LOST.
 */
package br.com.senior.examples.helloworld;

import br.com.senior.messaging.model.*;
import br.com.senior.examples.helloworld.ExportPedidoOutput;
import br.com.senior.examples.helloworld.ExportPedidoInput;

@CommandDescription(name="exportPedido", kind=CommandKind.Query, requestPrimitive="exportPedido", responsePrimitive="exportPedidoResponse")
public interface ExportPedido extends MessageHandler {
    
    public ExportPedidoOutput exportPedido(ExportPedidoInput request);
    
}
