package br.com.senior;

import javax.inject.Inject;

import br.com.senior.examples.helloworld.HelloWorld;
import br.com.senior.examples.helloworld.HelloWorldInput;
import br.com.senior.examples.helloworld.HelloWorldOutput;
import br.com.senior.examples.helloworld.ItemDTOConverter;
import br.com.senior.examples.helloworld.ListaItemManual;
import br.com.senior.examples.helloworld.ListaItemManualInput;
import br.com.senior.examples.helloworld.ListaItemManualOutput;
import br.com.senior.messaging.model.HandlerImpl;

@HandlerImpl
public class HelloWorldImpl implements HelloWorld, ListaItemManual {
    @Inject
    ItemRepository itemRepository;
    
    @Inject
    ItemDTOConverter converter;
    
    @Override
    public HelloWorldOutput helloWorld(HelloWorldInput request) {
        HelloWorldOutput out = new HelloWorldOutput();
        out.helloWorldMessage = String.format("Olá %s",request.who);
        return out;
    }
    
    @Override
    public ListaItemManualOutput listaItemManual(ListaItemManualInput request) {
        return new ListaItemManualOutput(converter.toDTOList(itemRepository.findAll()));
    }
}
