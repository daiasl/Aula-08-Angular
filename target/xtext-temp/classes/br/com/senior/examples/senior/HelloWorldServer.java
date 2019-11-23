package br.com.senior;

import br.com.senior.messaging.model.Server;
import br.com.senior.messaging.model.ServiceDescription;
import br.com.senior.examples.helloworld.HelloWorldConstants;

@ServiceDescription(domain=HelloWorldConstants.DOMAIN, name=HelloWorldConstants.SERVICE, packages={
	"br.com.senior" })
public class HelloWorldServer extends Server {

	public static void main(String[] args) {
		bootstrap(new HelloWorldServer());
	}
}
