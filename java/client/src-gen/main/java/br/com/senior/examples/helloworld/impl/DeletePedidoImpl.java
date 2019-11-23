/**
 * This is a generated file. DO NOT EDIT ANY CODE HERE, YOUR CHANGES WILL BE LOST.
 */
package br.com.senior.examples.helloworld.impl;

import java.util.function.Supplier;

import br.com.senior.messaging.ErrorPayload;
import br.com.senior.messaging.IMessenger;
import br.com.senior.messaging.Message;
import br.com.senior.messaging.utils.DtoJsonConverter;
import br.com.senior.sdl.user.UserIdentifier;			


import br.com.senior.examples.helloworld.Pedido;
import br.com.senior.examples.helloworld.HelloWorldConstants;
import br.com.senior.examples.helloworld.HelloWorldException;
import br.com.senior.examples.helloworld.HelloWorldMessageException;

/**
 * 
 */
public class DeletePedidoImpl {

	private final Supplier<IMessenger> messengerSupplier;

	private final UserIdentifier userId;

	private final Supplier<Message> messageSupplier;

	public DeletePedidoImpl(Supplier<IMessenger> messengerSupplier, UserIdentifier userId, Supplier<Message> messageSupplier) {
		this.messengerSupplier = messengerSupplier;
		this.userId = userId;
		this.messageSupplier = messageSupplier;
	}

	private Message createMessage(Pedido.Id input) {
		if (messageSupplier != null && messageSupplier.get() != null) {
			return messageSupplier.get().followUp( //
				userId.getTenant(), //
				HelloWorldConstants.DOMAIN, //
				HelloWorldConstants.SERVICE, //
				HelloWorldConstants.Commands.DELETE_PEDIDO, //
				DtoJsonConverter.toJSON(input));
		}
		return new Message(userId.getTenant(), //
			HelloWorldConstants.DOMAIN, //
			HelloWorldConstants.SERVICE, //
			HelloWorldConstants.Commands.DELETE_PEDIDO, //
			DtoJsonConverter.toJSON(input));
	}
	
	/**
	* Chamada síncrona para o método deletePedido
	* This is a public operation
	* The 'delete' request primitive for the Pedido entity. 
	* @throws HelloWorldMessageException quando um erro com payload for retornado pela mensageria
	*/
	public void deletePedido(Pedido.Id input, long timeout) {
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
	}
	
	/**
	* Chamada assíncrona para o método deletePedido
	* This is a public operation
	* The 'delete' request primitive for the Pedido entity.
	*/
	public void deletePedido(Pedido.Id input) {
		Message message = createMessage(input);
		try {
			addMessageHeaders(message);
			messengerSupplier.get().send(message);
		} catch (Exception e) {
			throw new HelloWorldException("Erro ao enviar a mensagem", e);
		}
	}
	
	private void addMessageHeaders(Message message) {
		message.setUsername(userId.getUsername());
		if (userId.isTrusted()) {
			message.addHeader("trusted", true);
		}
	}
}
