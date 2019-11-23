/**
 * This is a generated file. DO NOT EDIT ANY CODE HERE, YOUR CHANGES WILL BE LOST.
 */
package br.com.senior.examples.helloworld;

import br.com.senior.messaging.model.*;
import br.com.senior.examples.helloworld.ListaItemManualOutput;
import br.com.senior.examples.helloworld.ListaItemManualInput;

@CommandDescription(name="listaItemManual", kind=CommandKind.Query, requestPrimitive="listaItemManual", responsePrimitive="listaItemManualResponse")
public interface ListaItemManual extends MessageHandler {
    
    public ListaItemManualOutput listaItemManual(ListaItemManualInput request);
    
}
