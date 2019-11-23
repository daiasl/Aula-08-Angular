/**
 * This is a generated file. DO NOT EDIT ANY CODE HERE, YOUR CHANGES WILL BE LOST.
 */
package br.com.senior.examples.helloworld.impl;

import java.util.function.Supplier;

import br.com.senior.messaging.ErrorCategory;
import br.com.senior.messaging.ErrorPayload;
import br.com.senior.messaging.IMessenger;
import br.com.senior.messaging.Message;
import br.com.senior.messaging.utils.DtoJsonConverter;
import br.com.senior.sdl.user.UserIdentifier;			

import java.util.concurrent.CompletableFuture;

import br.com.senior.messaging.model.ServiceContext;
import br.com.senior.messaging.model.ServiceException;
import br.com.senior.messaging.model.ServiceRunner;

import br.com.senior.examples.helloworld.ListaItemManualInput;
import br.com.senior.examples.helloworld.ListaItemManualOutput;
import br.com.senior.examples.helloworld.HelloWorldConstants;
import br.com.senior.examples.helloworld.HelloWorldValidator;
import br.com.senior.examples.helloworld.HelloWorldException;
import br.com.senior.examples.helloworld.HelloWorldMessageException;

/**
 * 
 */
public class ListaItemManualImpl {

	private final Supplier<IMessenger> messengerSupplier;

	private final UserIdentifier userId;

	private final Supplier<Message> messageSupplier;

	public ListaItemManualImpl(Supplier<IMessenger> messengerSupplier, UserIdentifier userId, Supplier<Message> messageSupplier) {
		this.messengerSupplier = messengerSupplier;
		this.userId = userId;
		this.messageSupplier = messageSupplier;
	}

	private Message createMessage(ListaItemManualInput input) {
		if (messageSupplier != null && messageSupplier.get() != null) {
			return messageSupplier.get().followUp( //
				userId.getTenant(), //
				HelloWorldConstants.DOMAIN, //
				HelloWorldConstants.SERVICE, //
				HelloWorldConstants.Commands.LISTA_ITEM_MANUAL, //
				DtoJsonConverter.toJSON(input));
		}
		return new Message(userId.getTenant(), //
			HelloWorldConstants.DOMAIN, //
			HelloWorldConstants.SERVICE, //
			HelloWorldConstants.Commands.LISTA_ITEM_MANUAL, //
			DtoJsonConverter.toJSON(input));
	}
	
	/**
	* Chamada síncrona para o método listaItemManual
	* Warning: this operation is PRIVATE and may have its behavior changed at any time without notice
	*  
	* @throws HelloWorldMessageException quando um erro com payload for retornado pela mensageria
	*/
	public ListaItemManualOutput listaItemManual(ListaItemManualInput input, long timeout) {
		HelloWorldValidator.validate(input);
		
		Message message = createMessage(input);
		Message resultMessage; 
		try {
			addMessageHeaders(message);
			resultMessage = messengerSupplier.get().requestSync(message, timeout);
			messengerSupplier.get().ack(resultMessage);
		} catch (Exception e) {
			throw new HelloWorldException("Erro ao enviar a mensagem", e);
		}
		
		if (resultMessage == null) {
			throw new HelloWorldException("Retorno inválido");
		}
		
		if (resultMessage.isError()) {
			ErrorPayload error = DtoJsonConverter.toDTO(resultMessage.getContent(), ErrorPayload.class);
			throw new HelloWorldMessageException(resultMessage.getErrorCategory(), error.getMessage(), error.getErrorCode());
		}
		ListaItemManualOutput output = DtoJsonConverter.toDTO(resultMessage.getContent(), ListaItemManualOutput.class);
		if (output == null) {
			throw new HelloWorldException("Contéudo do retorno inválido");
		}
		return output;
	}
	
	/**
	* Chamada assíncrona para o método listaItemManual
	* Warning: this operation is PRIVATE and may have its behavior changed at any time without notice
	* 
	*/
	public void listaItemManual(ListaItemManualInput input) {
		HelloWorldValidator.validate(input);
		
		Message message = createMessage(input);
		try {
			addMessageHeaders(message);
			messengerSupplier.get().send(message);
		} catch (Exception e) {
			throw new HelloWorldException("Erro ao enviar a mensagem", e);
		}
	}
	
	/**
	* Chamada assíncrona para o método listaItemManual
	* Warning: this operation is PRIVATE and may have its behavior changed at any time without notice
	* 
	*/
	public CompletableFuture<ListaItemManualOutput> listaItemManualRequest(ListaItemManualInput input) {
		HelloWorldValidator.validate(input);
	
		if (ServiceContext.get() == null) {
			throw new ServiceException(ErrorCategory.INTERNAL_ERROR, "Service Context não iniciado. Erro ao efetuar request da mensagem");
		}
		ServiceRunner serviceRunner = ServiceContext.get().getCurrentServiceRunner();
		Message message = createMessage(input);
		addMessageHeaders(message);
		return serviceRunner.request(message, ListaItemManualOutput.class);
	}
	private void addMessageHeaders(Message message) {
		message.setUsername(userId.getUsername());
		if (userId.isTrusted()) {
			message.addHeader("trusted", true);
		}
	}
}
