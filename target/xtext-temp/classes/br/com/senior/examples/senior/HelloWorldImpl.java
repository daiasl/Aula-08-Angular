package br.com.senior;

import br.com.senior.examples.helloworld.HelloWorld;
import br.com.senior.examples.helloworld.HelloWorldInput;
import br.com.senior.examples.helloworld.HelloWorldOutput;
import br.com.senior.messaging.model.HandlerImpl;

@HandlerImpl
public class HelloWorldImpl implements HelloWorld {
    @Override
    public HelloWorldOutput helloWorld(HelloWorldInput request) {
        HelloWorldOutput out = new HelloWorldOutput();
        out.helloWorldMessage = String.format("Olá %s",request.who);
        return out;
    }
}
