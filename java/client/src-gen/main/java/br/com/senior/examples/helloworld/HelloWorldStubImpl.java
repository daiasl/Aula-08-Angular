/**
 * This is a generated file. DO NOT EDIT ANY CODE HERE, YOUR CHANGES WILL BE LOST.
 */
package br.com.senior.examples.helloworld;

import java.util.function.Supplier;

import br.com.senior.messaging.Message;
import br.com.senior.messaging.IMessenger;
import br.com.senior.messaging.utils.DtoJsonConverter;
import br.com.senior.sdl.user.UserIdentifier;

import java.util.concurrent.CompletableFuture;
import br.com.senior.examples.helloworld.HelloWorldInput;
import br.com.senior.examples.helloworld.HelloWorldOutput;
import br.com.senior.examples.helloworld.ListaItemManualInput;
import br.com.senior.examples.helloworld.ListaItemManualOutput;
import br.com.senior.examples.helloworld.GetMetadataInput;
import br.com.senior.examples.helloworld.GetMetadataOutput;
import br.com.senior.examples.helloworld.ImportClienteInput;
import br.com.senior.examples.helloworld.ImportClienteOutput;
import br.com.senior.examples.helloworld.ExportClienteInput;
import br.com.senior.examples.helloworld.ExportClienteOutput;
import br.com.senior.examples.helloworld.ImportItemInput;
import br.com.senior.examples.helloworld.ImportItemOutput;
import br.com.senior.examples.helloworld.ExportItemInput;
import br.com.senior.examples.helloworld.ExportItemOutput;
import br.com.senior.examples.helloworld.ImportPedidoInput;
import br.com.senior.examples.helloworld.ImportPedidoOutput;
import br.com.senior.examples.helloworld.ExportPedidoInput;
import br.com.senior.examples.helloworld.ExportPedidoOutput;
import br.com.senior.examples.helloworld.Cliente;
import br.com.senior.examples.helloworld.CreateBulkClienteInput;
import br.com.senior.examples.helloworld.CreateBulkClienteOutput;
import br.com.senior.examples.helloworld.Item;
import br.com.senior.examples.helloworld.CreateBulkItemInput;
import br.com.senior.examples.helloworld.CreateBulkItemOutput;
import br.com.senior.examples.helloworld.Pedido;
import br.com.senior.examples.helloworld.CreateBulkPedidoInput;
import br.com.senior.examples.helloworld.CreateBulkPedidoOutput;
import br.com.senior.examples.helloworld.GetDependenciesOutput;
import br.com.senior.examples.helloworld.ServiceStartedPayload;
import br.com.senior.examples.helloworld.NotifyUserEventPayload;
import br.com.senior.examples.helloworld.ImportClienteEventPayload;
import br.com.senior.examples.helloworld.ExportClienteEventPayload;
import br.com.senior.examples.helloworld.ImportItemEventPayload;
import br.com.senior.examples.helloworld.ExportItemEventPayload;
import br.com.senior.examples.helloworld.ImportPedidoEventPayload;
import br.com.senior.examples.helloworld.ExportPedidoEventPayload;

import br.com.senior.examples.helloworld.HelloWorldException;
import br.com.senior.examples.helloworld.HelloWorldConstants;

/**
* 
*/
public class HelloWorldStubImpl  implements HelloWorldStub {

	protected final Supplier<IMessenger> messengerSupplier;
	protected final UserIdentifier userId;
	protected final Supplier<Message> messageSupplier;

	/**
	 * Use {@link #HelloWorldStubImpl(MessengerSupplier, UserIdentifier, MessageSupplier)} instead.
	 */
	@Deprecated
	public HelloWorldStubImpl(IMessenger messenger, UserIdentifier userId) {
		this(new InstanceMessengerSupplier(messenger), userId, null);
	}

	/**
	 * @param messengerSupplier Supplies current service messenger.
	 * @param userId Provides tenant and user name to send or publish messages.
	 * @param messageSupplier Supplies current message being processed by service. Used to send messages by foolowup.
	 */
	public HelloWorldStubImpl(Supplier<IMessenger> messengerSupplier, UserIdentifier userId, Supplier<Message> messageSupplier) {
		this.messengerSupplier = messengerSupplier;
		this.userId = userId;
		this.messageSupplier = messageSupplier;
	}

	/**
	 * Chamada síncrona para o método helloWorld
	 * Warning: this operation is PRIVATE and may have its behavior changed at any time without notice
	 * 
	 * @throws HelloWorldMessageException quando um erro com payload for retornado pela mensageria
	 */
	@Override
	public HelloWorldOutput helloWorld(HelloWorldInput input, long timeout) {
		br.com.senior.examples.helloworld.impl.HelloWorldImpl impl = new br.com.senior.examples.helloworld.impl.HelloWorldImpl(messengerSupplier, userId, messageSupplier);
		return impl.helloWorld(input, timeout);
	}
	
	/**
	 * Chamada assíncrona para o método helloWorld
	 * Warning: this operation is PRIVATE and may have its behavior changed at any time without notice
	 * 
	 */
	@Override
	public void helloWorld(HelloWorldInput input) {
		br.com.senior.examples.helloworld.impl.HelloWorldImpl impl = new br.com.senior.examples.helloworld.impl.HelloWorldImpl(messengerSupplier, userId, messageSupplier);
		impl.helloWorld(input);
	}
	
	/**
	 * Chamada assíncrona para o método helloWorld
	 * Warning: this operation is PRIVATE and may have its behavior changed at any time without notice
	 * 
	 */
	@Override
	public CompletableFuture<HelloWorldOutput> helloWorldRequest(HelloWorldInput input) {
		br.com.senior.examples.helloworld.impl.HelloWorldImpl impl = new br.com.senior.examples.helloworld.impl.HelloWorldImpl(messengerSupplier, userId, messageSupplier);
		return impl.helloWorldRequest(input);
	}
	/**
	 * Chamada síncrona para o método listaItemManual
	 * Warning: this operation is PRIVATE and may have its behavior changed at any time without notice
	 * 
	 * @throws HelloWorldMessageException quando um erro com payload for retornado pela mensageria
	 */
	@Override
	public ListaItemManualOutput listaItemManual(ListaItemManualInput input, long timeout) {
		br.com.senior.examples.helloworld.impl.ListaItemManualImpl impl = new br.com.senior.examples.helloworld.impl.ListaItemManualImpl(messengerSupplier, userId, messageSupplier);
		return impl.listaItemManual(input, timeout);
	}
	
	/**
	 * Chamada assíncrona para o método listaItemManual
	 * Warning: this operation is PRIVATE and may have its behavior changed at any time without notice
	 * 
	 */
	@Override
	public void listaItemManual(ListaItemManualInput input) {
		br.com.senior.examples.helloworld.impl.ListaItemManualImpl impl = new br.com.senior.examples.helloworld.impl.ListaItemManualImpl(messengerSupplier, userId, messageSupplier);
		impl.listaItemManual(input);
	}
	
	/**
	 * Chamada assíncrona para o método listaItemManual
	 * Warning: this operation is PRIVATE and may have its behavior changed at any time without notice
	 * 
	 */
	@Override
	public CompletableFuture<ListaItemManualOutput> listaItemManualRequest(ListaItemManualInput input) {
		br.com.senior.examples.helloworld.impl.ListaItemManualImpl impl = new br.com.senior.examples.helloworld.impl.ListaItemManualImpl(messengerSupplier, userId, messageSupplier);
		return impl.listaItemManualRequest(input);
	}
	/**
	 * Chamada síncrona para o método getMetadata
	 * Warning: this operation is PRIVATE and may have its behavior changed at any time without notice
	 * Default 'getMetadata' query. Every service must handle this command and return metadata in the format requested.
	 * @throws HelloWorldMessageException quando um erro com payload for retornado pela mensageria
	 */
	@Override
	public GetMetadataOutput getMetadata(GetMetadataInput input, long timeout) {
		br.com.senior.examples.helloworld.impl.GetMetadataImpl impl = new br.com.senior.examples.helloworld.impl.GetMetadataImpl(messengerSupplier, userId, messageSupplier);
		return impl.getMetadata(input, timeout);
	}
	
	/**
	 * Chamada assíncrona para o método getMetadata
	 * Warning: this operation is PRIVATE and may have its behavior changed at any time without notice
	 * Default 'getMetadata' query. Every service must handle this command and return metadata in the format requested.
	 */
	@Override
	public void getMetadata(GetMetadataInput input) {
		br.com.senior.examples.helloworld.impl.GetMetadataImpl impl = new br.com.senior.examples.helloworld.impl.GetMetadataImpl(messengerSupplier, userId, messageSupplier);
		impl.getMetadata(input);
	}
	
	/**
	 * Chamada assíncrona para o método getMetadata
	 * Warning: this operation is PRIVATE and may have its behavior changed at any time without notice
	 * Default 'getMetadata' query. Every service must handle this command and return metadata in the format requested.
	 */
	@Override
	public CompletableFuture<GetMetadataOutput> getMetadataRequest(GetMetadataInput input) {
		br.com.senior.examples.helloworld.impl.GetMetadataImpl impl = new br.com.senior.examples.helloworld.impl.GetMetadataImpl(messengerSupplier, userId, messageSupplier);
		return impl.getMetadataRequest(input);
	}
	/**
	 * Chamada síncrona para o método importCliente
	 * This is a public operation
	 * 
	 * @throws HelloWorldMessageException quando um erro com payload for retornado pela mensageria
	 */
	@Override
	public ImportClienteOutput importCliente(ImportClienteInput input, long timeout) {
		br.com.senior.examples.helloworld.impl.ImportClienteImpl impl = new br.com.senior.examples.helloworld.impl.ImportClienteImpl(messengerSupplier, userId, messageSupplier);
		return impl.importCliente(input, timeout);
	}
	
	/**
	 * Chamada assíncrona para o método importCliente
	 * This is a public operation
	 * 
	 */
	@Override
	public void importCliente(ImportClienteInput input) {
		br.com.senior.examples.helloworld.impl.ImportClienteImpl impl = new br.com.senior.examples.helloworld.impl.ImportClienteImpl(messengerSupplier, userId, messageSupplier);
		impl.importCliente(input);
	}
	
	/**
	 * Chamada assíncrona para o método importCliente
	 * This is a public operation
	 * 
	 */
	@Override
	public CompletableFuture<ImportClienteOutput> importClienteRequest(ImportClienteInput input) {
		br.com.senior.examples.helloworld.impl.ImportClienteImpl impl = new br.com.senior.examples.helloworld.impl.ImportClienteImpl(messengerSupplier, userId, messageSupplier);
		return impl.importClienteRequest(input);
	}
	/**
	 * Chamada síncrona para o método exportCliente
	 * This is a public operation
	 * 
	 * @throws HelloWorldMessageException quando um erro com payload for retornado pela mensageria
	 */
	@Override
	public ExportClienteOutput exportCliente(ExportClienteInput input, long timeout) {
		br.com.senior.examples.helloworld.impl.ExportClienteImpl impl = new br.com.senior.examples.helloworld.impl.ExportClienteImpl(messengerSupplier, userId, messageSupplier);
		return impl.exportCliente(input, timeout);
	}
	
	/**
	 * Chamada assíncrona para o método exportCliente
	 * This is a public operation
	 * 
	 */
	@Override
	public void exportCliente(ExportClienteInput input) {
		br.com.senior.examples.helloworld.impl.ExportClienteImpl impl = new br.com.senior.examples.helloworld.impl.ExportClienteImpl(messengerSupplier, userId, messageSupplier);
		impl.exportCliente(input);
	}
	
	/**
	 * Chamada assíncrona para o método exportCliente
	 * This is a public operation
	 * 
	 */
	@Override
	public CompletableFuture<ExportClienteOutput> exportClienteRequest(ExportClienteInput input) {
		br.com.senior.examples.helloworld.impl.ExportClienteImpl impl = new br.com.senior.examples.helloworld.impl.ExportClienteImpl(messengerSupplier, userId, messageSupplier);
		return impl.exportClienteRequest(input);
	}
	/**
	 * Chamada síncrona para o método importItem
	 * This is a public operation
	 * 
	 * @throws HelloWorldMessageException quando um erro com payload for retornado pela mensageria
	 */
	@Override
	public ImportItemOutput importItem(ImportItemInput input, long timeout) {
		br.com.senior.examples.helloworld.impl.ImportItemImpl impl = new br.com.senior.examples.helloworld.impl.ImportItemImpl(messengerSupplier, userId, messageSupplier);
		return impl.importItem(input, timeout);
	}
	
	/**
	 * Chamada assíncrona para o método importItem
	 * This is a public operation
	 * 
	 */
	@Override
	public void importItem(ImportItemInput input) {
		br.com.senior.examples.helloworld.impl.ImportItemImpl impl = new br.com.senior.examples.helloworld.impl.ImportItemImpl(messengerSupplier, userId, messageSupplier);
		impl.importItem(input);
	}
	
	/**
	 * Chamada assíncrona para o método importItem
	 * This is a public operation
	 * 
	 */
	@Override
	public CompletableFuture<ImportItemOutput> importItemRequest(ImportItemInput input) {
		br.com.senior.examples.helloworld.impl.ImportItemImpl impl = new br.com.senior.examples.helloworld.impl.ImportItemImpl(messengerSupplier, userId, messageSupplier);
		return impl.importItemRequest(input);
	}
	/**
	 * Chamada síncrona para o método exportItem
	 * This is a public operation
	 * 
	 * @throws HelloWorldMessageException quando um erro com payload for retornado pela mensageria
	 */
	@Override
	public ExportItemOutput exportItem(ExportItemInput input, long timeout) {
		br.com.senior.examples.helloworld.impl.ExportItemImpl impl = new br.com.senior.examples.helloworld.impl.ExportItemImpl(messengerSupplier, userId, messageSupplier);
		return impl.exportItem(input, timeout);
	}
	
	/**
	 * Chamada assíncrona para o método exportItem
	 * This is a public operation
	 * 
	 */
	@Override
	public void exportItem(ExportItemInput input) {
		br.com.senior.examples.helloworld.impl.ExportItemImpl impl = new br.com.senior.examples.helloworld.impl.ExportItemImpl(messengerSupplier, userId, messageSupplier);
		impl.exportItem(input);
	}
	
	/**
	 * Chamada assíncrona para o método exportItem
	 * This is a public operation
	 * 
	 */
	@Override
	public CompletableFuture<ExportItemOutput> exportItemRequest(ExportItemInput input) {
		br.com.senior.examples.helloworld.impl.ExportItemImpl impl = new br.com.senior.examples.helloworld.impl.ExportItemImpl(messengerSupplier, userId, messageSupplier);
		return impl.exportItemRequest(input);
	}
	/**
	 * Chamada síncrona para o método importPedido
	 * This is a public operation
	 * 
	 * @throws HelloWorldMessageException quando um erro com payload for retornado pela mensageria
	 */
	@Override
	public ImportPedidoOutput importPedido(ImportPedidoInput input, long timeout) {
		br.com.senior.examples.helloworld.impl.ImportPedidoImpl impl = new br.com.senior.examples.helloworld.impl.ImportPedidoImpl(messengerSupplier, userId, messageSupplier);
		return impl.importPedido(input, timeout);
	}
	
	/**
	 * Chamada assíncrona para o método importPedido
	 * This is a public operation
	 * 
	 */
	@Override
	public void importPedido(ImportPedidoInput input) {
		br.com.senior.examples.helloworld.impl.ImportPedidoImpl impl = new br.com.senior.examples.helloworld.impl.ImportPedidoImpl(messengerSupplier, userId, messageSupplier);
		impl.importPedido(input);
	}
	
	/**
	 * Chamada assíncrona para o método importPedido
	 * This is a public operation
	 * 
	 */
	@Override
	public CompletableFuture<ImportPedidoOutput> importPedidoRequest(ImportPedidoInput input) {
		br.com.senior.examples.helloworld.impl.ImportPedidoImpl impl = new br.com.senior.examples.helloworld.impl.ImportPedidoImpl(messengerSupplier, userId, messageSupplier);
		return impl.importPedidoRequest(input);
	}
	/**
	 * Chamada síncrona para o método exportPedido
	 * This is a public operation
	 * 
	 * @throws HelloWorldMessageException quando um erro com payload for retornado pela mensageria
	 */
	@Override
	public ExportPedidoOutput exportPedido(ExportPedidoInput input, long timeout) {
		br.com.senior.examples.helloworld.impl.ExportPedidoImpl impl = new br.com.senior.examples.helloworld.impl.ExportPedidoImpl(messengerSupplier, userId, messageSupplier);
		return impl.exportPedido(input, timeout);
	}
	
	/**
	 * Chamada assíncrona para o método exportPedido
	 * This is a public operation
	 * 
	 */
	@Override
	public void exportPedido(ExportPedidoInput input) {
		br.com.senior.examples.helloworld.impl.ExportPedidoImpl impl = new br.com.senior.examples.helloworld.impl.ExportPedidoImpl(messengerSupplier, userId, messageSupplier);
		impl.exportPedido(input);
	}
	
	/**
	 * Chamada assíncrona para o método exportPedido
	 * This is a public operation
	 * 
	 */
	@Override
	public CompletableFuture<ExportPedidoOutput> exportPedidoRequest(ExportPedidoInput input) {
		br.com.senior.examples.helloworld.impl.ExportPedidoImpl impl = new br.com.senior.examples.helloworld.impl.ExportPedidoImpl(messengerSupplier, userId, messageSupplier);
		return impl.exportPedidoRequest(input);
	}
	/**
	 * Chamada síncrona para o método createCliente
	 * This is a public operation
	 * The 'create' request primitive for the Cliente entity.
	 * @throws HelloWorldMessageException quando um erro com payload for retornado pela mensageria
	 */
	@Override
	public Cliente createCliente(Cliente input, long timeout) {
		br.com.senior.examples.helloworld.impl.CreateClienteImpl impl = new br.com.senior.examples.helloworld.impl.CreateClienteImpl(messengerSupplier, userId, messageSupplier);
		return impl.createCliente(input, timeout);
	}
	
	/**
	 * Chamada assíncrona para o método createCliente
	 * This is a public operation
	 * The 'create' request primitive for the Cliente entity.
	 */
	@Override
	public void createCliente(Cliente input) {
		br.com.senior.examples.helloworld.impl.CreateClienteImpl impl = new br.com.senior.examples.helloworld.impl.CreateClienteImpl(messengerSupplier, userId, messageSupplier);
		impl.createCliente(input);
	}
	
	/**
	 * Chamada assíncrona para o método createCliente
	 * This is a public operation
	 * The 'create' request primitive for the Cliente entity.
	 */
	@Override
	public CompletableFuture<Cliente> createClienteRequest(Cliente input) {
		br.com.senior.examples.helloworld.impl.CreateClienteImpl impl = new br.com.senior.examples.helloworld.impl.CreateClienteImpl(messengerSupplier, userId, messageSupplier);
		return impl.createClienteRequest(input);
	}
	/**
	 * Chamada síncrona para o método createBulkCliente
	 * This is a public operation
	 * The 'createBulk' request primitive for the Cliente entity.
	 * @throws HelloWorldMessageException quando um erro com payload for retornado pela mensageria
	 */
	@Override
	public CreateBulkClienteOutput createBulkCliente(CreateBulkClienteInput input, long timeout) {
		br.com.senior.examples.helloworld.impl.CreateBulkClienteImpl impl = new br.com.senior.examples.helloworld.impl.CreateBulkClienteImpl(messengerSupplier, userId, messageSupplier);
		return impl.createBulkCliente(input, timeout);
	}
	
	/**
	 * Chamada assíncrona para o método createBulkCliente
	 * This is a public operation
	 * The 'createBulk' request primitive for the Cliente entity.
	 */
	@Override
	public void createBulkCliente(CreateBulkClienteInput input) {
		br.com.senior.examples.helloworld.impl.CreateBulkClienteImpl impl = new br.com.senior.examples.helloworld.impl.CreateBulkClienteImpl(messengerSupplier, userId, messageSupplier);
		impl.createBulkCliente(input);
	}
	
	/**
	 * Chamada assíncrona para o método createBulkCliente
	 * This is a public operation
	 * The 'createBulk' request primitive for the Cliente entity.
	 */
	@Override
	public CompletableFuture<CreateBulkClienteOutput> createBulkClienteRequest(CreateBulkClienteInput input) {
		br.com.senior.examples.helloworld.impl.CreateBulkClienteImpl impl = new br.com.senior.examples.helloworld.impl.CreateBulkClienteImpl(messengerSupplier, userId, messageSupplier);
		return impl.createBulkClienteRequest(input);
	}
	/**
	 * Chamada síncrona para o método createMergeCliente
	 * This is a public operation
	 * The 'createMerge' request primitive for the Cliente entity.
	 * @throws HelloWorldMessageException quando um erro com payload for retornado pela mensageria
	 */
	@Override
	public Cliente createMergeCliente(Cliente input, long timeout) {
		br.com.senior.examples.helloworld.impl.CreateMergeClienteImpl impl = new br.com.senior.examples.helloworld.impl.CreateMergeClienteImpl(messengerSupplier, userId, messageSupplier);
		return impl.createMergeCliente(input, timeout);
	}
	
	/**
	 * Chamada assíncrona para o método createMergeCliente
	 * This is a public operation
	 * The 'createMerge' request primitive for the Cliente entity.
	 */
	@Override
	public void createMergeCliente(Cliente input) {
		br.com.senior.examples.helloworld.impl.CreateMergeClienteImpl impl = new br.com.senior.examples.helloworld.impl.CreateMergeClienteImpl(messengerSupplier, userId, messageSupplier);
		impl.createMergeCliente(input);
	}
	
	/**
	 * Chamada assíncrona para o método createMergeCliente
	 * This is a public operation
	 * The 'createMerge' request primitive for the Cliente entity.
	 */
	@Override
	public CompletableFuture<Cliente> createMergeClienteRequest(Cliente input) {
		br.com.senior.examples.helloworld.impl.CreateMergeClienteImpl impl = new br.com.senior.examples.helloworld.impl.CreateMergeClienteImpl(messengerSupplier, userId, messageSupplier);
		return impl.createMergeClienteRequest(input);
	}
	/**
	 * Chamada síncrona para o método retrieveCliente
	 * This is a public operation
	 * The 'retrieve' request primitive for the Cliente entity.
	 * @throws HelloWorldMessageException quando um erro com payload for retornado pela mensageria
	 */
	@Override
	public Cliente retrieveCliente(Cliente.Id input, long timeout) {
		br.com.senior.examples.helloworld.impl.RetrieveClienteImpl impl = new br.com.senior.examples.helloworld.impl.RetrieveClienteImpl(messengerSupplier, userId, messageSupplier);
		return impl.retrieveCliente(input, timeout);
	}
	
	/**
	 * Chamada assíncrona para o método retrieveCliente
	 * This is a public operation
	 * The 'retrieve' request primitive for the Cliente entity.
	 */
	@Override
	public void retrieveCliente(Cliente.Id input) {
		br.com.senior.examples.helloworld.impl.RetrieveClienteImpl impl = new br.com.senior.examples.helloworld.impl.RetrieveClienteImpl(messengerSupplier, userId, messageSupplier);
		impl.retrieveCliente(input);
	}
	
	/**
	 * Chamada assíncrona para o método retrieveCliente
	 * This is a public operation
	 * The 'retrieve' request primitive for the Cliente entity.
	 */
	@Override
	public CompletableFuture<Cliente> retrieveClienteRequest(Cliente.Id input) {
		br.com.senior.examples.helloworld.impl.RetrieveClienteImpl impl = new br.com.senior.examples.helloworld.impl.RetrieveClienteImpl(messengerSupplier, userId, messageSupplier);
		return impl.retrieveClienteRequest(input);
	}
	/**
	 * Chamada síncrona para o método updateCliente
	 * This is a public operation
	 * The 'update' request primitive for the Cliente entity.
	 * @throws HelloWorldMessageException quando um erro com payload for retornado pela mensageria
	 */
	@Override
	public Cliente updateCliente(Cliente input, long timeout) {
		br.com.senior.examples.helloworld.impl.UpdateClienteImpl impl = new br.com.senior.examples.helloworld.impl.UpdateClienteImpl(messengerSupplier, userId, messageSupplier);
		return impl.updateCliente(input, timeout);
	}
	
	/**
	 * Chamada assíncrona para o método updateCliente
	 * This is a public operation
	 * The 'update' request primitive for the Cliente entity.
	 */
	@Override
	public void updateCliente(Cliente input) {
		br.com.senior.examples.helloworld.impl.UpdateClienteImpl impl = new br.com.senior.examples.helloworld.impl.UpdateClienteImpl(messengerSupplier, userId, messageSupplier);
		impl.updateCliente(input);
	}
	
	/**
	 * Chamada assíncrona para o método updateCliente
	 * This is a public operation
	 * The 'update' request primitive for the Cliente entity.
	 */
	@Override
	public CompletableFuture<Cliente> updateClienteRequest(Cliente input) {
		br.com.senior.examples.helloworld.impl.UpdateClienteImpl impl = new br.com.senior.examples.helloworld.impl.UpdateClienteImpl(messengerSupplier, userId, messageSupplier);
		return impl.updateClienteRequest(input);
	}
	/**
	 * Chamada síncrona para o método updateMergeCliente
	 * This is a public operation
	 * The 'updateMerge' request primitive for the Cliente entity.
	 * @throws HelloWorldMessageException quando um erro com payload for retornado pela mensageria
	 */
	@Override
	public Cliente updateMergeCliente(Cliente input, long timeout) {
		br.com.senior.examples.helloworld.impl.UpdateMergeClienteImpl impl = new br.com.senior.examples.helloworld.impl.UpdateMergeClienteImpl(messengerSupplier, userId, messageSupplier);
		return impl.updateMergeCliente(input, timeout);
	}
	
	/**
	 * Chamada assíncrona para o método updateMergeCliente
	 * This is a public operation
	 * The 'updateMerge' request primitive for the Cliente entity.
	 */
	@Override
	public void updateMergeCliente(Cliente input) {
		br.com.senior.examples.helloworld.impl.UpdateMergeClienteImpl impl = new br.com.senior.examples.helloworld.impl.UpdateMergeClienteImpl(messengerSupplier, userId, messageSupplier);
		impl.updateMergeCliente(input);
	}
	
	/**
	 * Chamada assíncrona para o método updateMergeCliente
	 * This is a public operation
	 * The 'updateMerge' request primitive for the Cliente entity.
	 */
	@Override
	public CompletableFuture<Cliente> updateMergeClienteRequest(Cliente input) {
		br.com.senior.examples.helloworld.impl.UpdateMergeClienteImpl impl = new br.com.senior.examples.helloworld.impl.UpdateMergeClienteImpl(messengerSupplier, userId, messageSupplier);
		return impl.updateMergeClienteRequest(input);
	}
	/**
	 * Chamada síncrona para o método deleteCliente
	 * This is a public operation
	 * The 'delete' request primitive for the Cliente entity.
	 * @throws HelloWorldMessageException quando um erro com payload for retornado pela mensageria
	 */
	@Override
	public void deleteCliente(Cliente.Id input, long timeout) {
		br.com.senior.examples.helloworld.impl.DeleteClienteImpl impl = new br.com.senior.examples.helloworld.impl.DeleteClienteImpl(messengerSupplier, userId, messageSupplier);
		impl.deleteCliente(input, timeout);
	}
	
	/**
	 * Chamada assíncrona para o método deleteCliente
	 * This is a public operation
	 * The 'delete' request primitive for the Cliente entity.
	 */
	@Override
	public void deleteCliente(Cliente.Id input) {
		br.com.senior.examples.helloworld.impl.DeleteClienteImpl impl = new br.com.senior.examples.helloworld.impl.DeleteClienteImpl(messengerSupplier, userId, messageSupplier);
		impl.deleteCliente(input);
	}
	
	/**
	 * Chamada síncrona para o método listCliente
	 * This is a public operation
	 * The 'list' request primitive for the Cliente entity.
	 * @throws HelloWorldMessageException quando um erro com payload for retornado pela mensageria
	 */
	@Override
	public Cliente.PagedResults listCliente(Cliente.PageRequest input, long timeout) {
		br.com.senior.examples.helloworld.impl.ListClienteImpl impl = new br.com.senior.examples.helloworld.impl.ListClienteImpl(messengerSupplier, userId, messageSupplier);
		return impl.listCliente(input, timeout);
	}
	
	/**
	 * Chamada assíncrona para o método listCliente
	 * This is a public operation
	 * The 'list' request primitive for the Cliente entity.
	 */
	@Override
	public void listCliente(Cliente.PageRequest input) {
		br.com.senior.examples.helloworld.impl.ListClienteImpl impl = new br.com.senior.examples.helloworld.impl.ListClienteImpl(messengerSupplier, userId, messageSupplier);
		impl.listCliente(input);
	}
	
	/**
	 * Chamada assíncrona para o método listCliente
	 * This is a public operation
	 * The 'list' request primitive for the Cliente entity.
	 */
	@Override
	public CompletableFuture<Cliente.PagedResults> listClienteRequest(Cliente.PageRequest input) {
		br.com.senior.examples.helloworld.impl.ListClienteImpl impl = new br.com.senior.examples.helloworld.impl.ListClienteImpl(messengerSupplier, userId, messageSupplier);
		return impl.listClienteRequest(input);
	}
	/**
	 * Chamada síncrona para o método createItem
	 * This is a public operation
	 * The 'create' request primitive for the Item entity.
	 * @throws HelloWorldMessageException quando um erro com payload for retornado pela mensageria
	 */
	@Override
	public Item createItem(Item input, long timeout) {
		br.com.senior.examples.helloworld.impl.CreateItemImpl impl = new br.com.senior.examples.helloworld.impl.CreateItemImpl(messengerSupplier, userId, messageSupplier);
		return impl.createItem(input, timeout);
	}
	
	/**
	 * Chamada assíncrona para o método createItem
	 * This is a public operation
	 * The 'create' request primitive for the Item entity.
	 */
	@Override
	public void createItem(Item input) {
		br.com.senior.examples.helloworld.impl.CreateItemImpl impl = new br.com.senior.examples.helloworld.impl.CreateItemImpl(messengerSupplier, userId, messageSupplier);
		impl.createItem(input);
	}
	
	/**
	 * Chamada assíncrona para o método createItem
	 * This is a public operation
	 * The 'create' request primitive for the Item entity.
	 */
	@Override
	public CompletableFuture<Item> createItemRequest(Item input) {
		br.com.senior.examples.helloworld.impl.CreateItemImpl impl = new br.com.senior.examples.helloworld.impl.CreateItemImpl(messengerSupplier, userId, messageSupplier);
		return impl.createItemRequest(input);
	}
	/**
	 * Chamada síncrona para o método createBulkItem
	 * This is a public operation
	 * The 'createBulk' request primitive for the Item entity.
	 * @throws HelloWorldMessageException quando um erro com payload for retornado pela mensageria
	 */
	@Override
	public CreateBulkItemOutput createBulkItem(CreateBulkItemInput input, long timeout) {
		br.com.senior.examples.helloworld.impl.CreateBulkItemImpl impl = new br.com.senior.examples.helloworld.impl.CreateBulkItemImpl(messengerSupplier, userId, messageSupplier);
		return impl.createBulkItem(input, timeout);
	}
	
	/**
	 * Chamada assíncrona para o método createBulkItem
	 * This is a public operation
	 * The 'createBulk' request primitive for the Item entity.
	 */
	@Override
	public void createBulkItem(CreateBulkItemInput input) {
		br.com.senior.examples.helloworld.impl.CreateBulkItemImpl impl = new br.com.senior.examples.helloworld.impl.CreateBulkItemImpl(messengerSupplier, userId, messageSupplier);
		impl.createBulkItem(input);
	}
	
	/**
	 * Chamada assíncrona para o método createBulkItem
	 * This is a public operation
	 * The 'createBulk' request primitive for the Item entity.
	 */
	@Override
	public CompletableFuture<CreateBulkItemOutput> createBulkItemRequest(CreateBulkItemInput input) {
		br.com.senior.examples.helloworld.impl.CreateBulkItemImpl impl = new br.com.senior.examples.helloworld.impl.CreateBulkItemImpl(messengerSupplier, userId, messageSupplier);
		return impl.createBulkItemRequest(input);
	}
	/**
	 * Chamada síncrona para o método createMergeItem
	 * This is a public operation
	 * The 'createMerge' request primitive for the Item entity.
	 * @throws HelloWorldMessageException quando um erro com payload for retornado pela mensageria
	 */
	@Override
	public Item createMergeItem(Item input, long timeout) {
		br.com.senior.examples.helloworld.impl.CreateMergeItemImpl impl = new br.com.senior.examples.helloworld.impl.CreateMergeItemImpl(messengerSupplier, userId, messageSupplier);
		return impl.createMergeItem(input, timeout);
	}
	
	/**
	 * Chamada assíncrona para o método createMergeItem
	 * This is a public operation
	 * The 'createMerge' request primitive for the Item entity.
	 */
	@Override
	public void createMergeItem(Item input) {
		br.com.senior.examples.helloworld.impl.CreateMergeItemImpl impl = new br.com.senior.examples.helloworld.impl.CreateMergeItemImpl(messengerSupplier, userId, messageSupplier);
		impl.createMergeItem(input);
	}
	
	/**
	 * Chamada assíncrona para o método createMergeItem
	 * This is a public operation
	 * The 'createMerge' request primitive for the Item entity.
	 */
	@Override
	public CompletableFuture<Item> createMergeItemRequest(Item input) {
		br.com.senior.examples.helloworld.impl.CreateMergeItemImpl impl = new br.com.senior.examples.helloworld.impl.CreateMergeItemImpl(messengerSupplier, userId, messageSupplier);
		return impl.createMergeItemRequest(input);
	}
	/**
	 * Chamada síncrona para o método retrieveItem
	 * This is a public operation
	 * The 'retrieve' request primitive for the Item entity.
	 * @throws HelloWorldMessageException quando um erro com payload for retornado pela mensageria
	 */
	@Override
	public Item retrieveItem(Item.Id input, long timeout) {
		br.com.senior.examples.helloworld.impl.RetrieveItemImpl impl = new br.com.senior.examples.helloworld.impl.RetrieveItemImpl(messengerSupplier, userId, messageSupplier);
		return impl.retrieveItem(input, timeout);
	}
	
	/**
	 * Chamada assíncrona para o método retrieveItem
	 * This is a public operation
	 * The 'retrieve' request primitive for the Item entity.
	 */
	@Override
	public void retrieveItem(Item.Id input) {
		br.com.senior.examples.helloworld.impl.RetrieveItemImpl impl = new br.com.senior.examples.helloworld.impl.RetrieveItemImpl(messengerSupplier, userId, messageSupplier);
		impl.retrieveItem(input);
	}
	
	/**
	 * Chamada assíncrona para o método retrieveItem
	 * This is a public operation
	 * The 'retrieve' request primitive for the Item entity.
	 */
	@Override
	public CompletableFuture<Item> retrieveItemRequest(Item.Id input) {
		br.com.senior.examples.helloworld.impl.RetrieveItemImpl impl = new br.com.senior.examples.helloworld.impl.RetrieveItemImpl(messengerSupplier, userId, messageSupplier);
		return impl.retrieveItemRequest(input);
	}
	/**
	 * Chamada síncrona para o método updateItem
	 * This is a public operation
	 * The 'update' request primitive for the Item entity.
	 * @throws HelloWorldMessageException quando um erro com payload for retornado pela mensageria
	 */
	@Override
	public Item updateItem(Item input, long timeout) {
		br.com.senior.examples.helloworld.impl.UpdateItemImpl impl = new br.com.senior.examples.helloworld.impl.UpdateItemImpl(messengerSupplier, userId, messageSupplier);
		return impl.updateItem(input, timeout);
	}
	
	/**
	 * Chamada assíncrona para o método updateItem
	 * This is a public operation
	 * The 'update' request primitive for the Item entity.
	 */
	@Override
	public void updateItem(Item input) {
		br.com.senior.examples.helloworld.impl.UpdateItemImpl impl = new br.com.senior.examples.helloworld.impl.UpdateItemImpl(messengerSupplier, userId, messageSupplier);
		impl.updateItem(input);
	}
	
	/**
	 * Chamada assíncrona para o método updateItem
	 * This is a public operation
	 * The 'update' request primitive for the Item entity.
	 */
	@Override
	public CompletableFuture<Item> updateItemRequest(Item input) {
		br.com.senior.examples.helloworld.impl.UpdateItemImpl impl = new br.com.senior.examples.helloworld.impl.UpdateItemImpl(messengerSupplier, userId, messageSupplier);
		return impl.updateItemRequest(input);
	}
	/**
	 * Chamada síncrona para o método updateMergeItem
	 * This is a public operation
	 * The 'updateMerge' request primitive for the Item entity.
	 * @throws HelloWorldMessageException quando um erro com payload for retornado pela mensageria
	 */
	@Override
	public Item updateMergeItem(Item input, long timeout) {
		br.com.senior.examples.helloworld.impl.UpdateMergeItemImpl impl = new br.com.senior.examples.helloworld.impl.UpdateMergeItemImpl(messengerSupplier, userId, messageSupplier);
		return impl.updateMergeItem(input, timeout);
	}
	
	/**
	 * Chamada assíncrona para o método updateMergeItem
	 * This is a public operation
	 * The 'updateMerge' request primitive for the Item entity.
	 */
	@Override
	public void updateMergeItem(Item input) {
		br.com.senior.examples.helloworld.impl.UpdateMergeItemImpl impl = new br.com.senior.examples.helloworld.impl.UpdateMergeItemImpl(messengerSupplier, userId, messageSupplier);
		impl.updateMergeItem(input);
	}
	
	/**
	 * Chamada assíncrona para o método updateMergeItem
	 * This is a public operation
	 * The 'updateMerge' request primitive for the Item entity.
	 */
	@Override
	public CompletableFuture<Item> updateMergeItemRequest(Item input) {
		br.com.senior.examples.helloworld.impl.UpdateMergeItemImpl impl = new br.com.senior.examples.helloworld.impl.UpdateMergeItemImpl(messengerSupplier, userId, messageSupplier);
		return impl.updateMergeItemRequest(input);
	}
	/**
	 * Chamada síncrona para o método deleteItem
	 * This is a public operation
	 * The 'delete' request primitive for the Item entity.
	 * @throws HelloWorldMessageException quando um erro com payload for retornado pela mensageria
	 */
	@Override
	public void deleteItem(Item.Id input, long timeout) {
		br.com.senior.examples.helloworld.impl.DeleteItemImpl impl = new br.com.senior.examples.helloworld.impl.DeleteItemImpl(messengerSupplier, userId, messageSupplier);
		impl.deleteItem(input, timeout);
	}
	
	/**
	 * Chamada assíncrona para o método deleteItem
	 * This is a public operation
	 * The 'delete' request primitive for the Item entity.
	 */
	@Override
	public void deleteItem(Item.Id input) {
		br.com.senior.examples.helloworld.impl.DeleteItemImpl impl = new br.com.senior.examples.helloworld.impl.DeleteItemImpl(messengerSupplier, userId, messageSupplier);
		impl.deleteItem(input);
	}
	
	/**
	 * Chamada síncrona para o método listItem
	 * This is a public operation
	 * The 'list' request primitive for the Item entity.
	 * @throws HelloWorldMessageException quando um erro com payload for retornado pela mensageria
	 */
	@Override
	public Item.PagedResults listItem(Item.PageRequest input, long timeout) {
		br.com.senior.examples.helloworld.impl.ListItemImpl impl = new br.com.senior.examples.helloworld.impl.ListItemImpl(messengerSupplier, userId, messageSupplier);
		return impl.listItem(input, timeout);
	}
	
	/**
	 * Chamada assíncrona para o método listItem
	 * This is a public operation
	 * The 'list' request primitive for the Item entity.
	 */
	@Override
	public void listItem(Item.PageRequest input) {
		br.com.senior.examples.helloworld.impl.ListItemImpl impl = new br.com.senior.examples.helloworld.impl.ListItemImpl(messengerSupplier, userId, messageSupplier);
		impl.listItem(input);
	}
	
	/**
	 * Chamada assíncrona para o método listItem
	 * This is a public operation
	 * The 'list' request primitive for the Item entity.
	 */
	@Override
	public CompletableFuture<Item.PagedResults> listItemRequest(Item.PageRequest input) {
		br.com.senior.examples.helloworld.impl.ListItemImpl impl = new br.com.senior.examples.helloworld.impl.ListItemImpl(messengerSupplier, userId, messageSupplier);
		return impl.listItemRequest(input);
	}
	/**
	 * Chamada síncrona para o método createPedido
	 * This is a public operation
	 * The 'create' request primitive for the Pedido entity.
	 * @throws HelloWorldMessageException quando um erro com payload for retornado pela mensageria
	 */
	@Override
	public Pedido createPedido(Pedido input, long timeout) {
		br.com.senior.examples.helloworld.impl.CreatePedidoImpl impl = new br.com.senior.examples.helloworld.impl.CreatePedidoImpl(messengerSupplier, userId, messageSupplier);
		return impl.createPedido(input, timeout);
	}
	
	/**
	 * Chamada assíncrona para o método createPedido
	 * This is a public operation
	 * The 'create' request primitive for the Pedido entity.
	 */
	@Override
	public void createPedido(Pedido input) {
		br.com.senior.examples.helloworld.impl.CreatePedidoImpl impl = new br.com.senior.examples.helloworld.impl.CreatePedidoImpl(messengerSupplier, userId, messageSupplier);
		impl.createPedido(input);
	}
	
	/**
	 * Chamada assíncrona para o método createPedido
	 * This is a public operation
	 * The 'create' request primitive for the Pedido entity.
	 */
	@Override
	public CompletableFuture<Pedido> createPedidoRequest(Pedido input) {
		br.com.senior.examples.helloworld.impl.CreatePedidoImpl impl = new br.com.senior.examples.helloworld.impl.CreatePedidoImpl(messengerSupplier, userId, messageSupplier);
		return impl.createPedidoRequest(input);
	}
	/**
	 * Chamada síncrona para o método createBulkPedido
	 * This is a public operation
	 * The 'createBulk' request primitive for the Pedido entity.
	 * @throws HelloWorldMessageException quando um erro com payload for retornado pela mensageria
	 */
	@Override
	public CreateBulkPedidoOutput createBulkPedido(CreateBulkPedidoInput input, long timeout) {
		br.com.senior.examples.helloworld.impl.CreateBulkPedidoImpl impl = new br.com.senior.examples.helloworld.impl.CreateBulkPedidoImpl(messengerSupplier, userId, messageSupplier);
		return impl.createBulkPedido(input, timeout);
	}
	
	/**
	 * Chamada assíncrona para o método createBulkPedido
	 * This is a public operation
	 * The 'createBulk' request primitive for the Pedido entity.
	 */
	@Override
	public void createBulkPedido(CreateBulkPedidoInput input) {
		br.com.senior.examples.helloworld.impl.CreateBulkPedidoImpl impl = new br.com.senior.examples.helloworld.impl.CreateBulkPedidoImpl(messengerSupplier, userId, messageSupplier);
		impl.createBulkPedido(input);
	}
	
	/**
	 * Chamada assíncrona para o método createBulkPedido
	 * This is a public operation
	 * The 'createBulk' request primitive for the Pedido entity.
	 */
	@Override
	public CompletableFuture<CreateBulkPedidoOutput> createBulkPedidoRequest(CreateBulkPedidoInput input) {
		br.com.senior.examples.helloworld.impl.CreateBulkPedidoImpl impl = new br.com.senior.examples.helloworld.impl.CreateBulkPedidoImpl(messengerSupplier, userId, messageSupplier);
		return impl.createBulkPedidoRequest(input);
	}
	/**
	 * Chamada síncrona para o método createMergePedido
	 * This is a public operation
	 * The 'createMerge' request primitive for the Pedido entity.
	 * @throws HelloWorldMessageException quando um erro com payload for retornado pela mensageria
	 */
	@Override
	public Pedido createMergePedido(Pedido input, long timeout) {
		br.com.senior.examples.helloworld.impl.CreateMergePedidoImpl impl = new br.com.senior.examples.helloworld.impl.CreateMergePedidoImpl(messengerSupplier, userId, messageSupplier);
		return impl.createMergePedido(input, timeout);
	}
	
	/**
	 * Chamada assíncrona para o método createMergePedido
	 * This is a public operation
	 * The 'createMerge' request primitive for the Pedido entity.
	 */
	@Override
	public void createMergePedido(Pedido input) {
		br.com.senior.examples.helloworld.impl.CreateMergePedidoImpl impl = new br.com.senior.examples.helloworld.impl.CreateMergePedidoImpl(messengerSupplier, userId, messageSupplier);
		impl.createMergePedido(input);
	}
	
	/**
	 * Chamada assíncrona para o método createMergePedido
	 * This is a public operation
	 * The 'createMerge' request primitive for the Pedido entity.
	 */
	@Override
	public CompletableFuture<Pedido> createMergePedidoRequest(Pedido input) {
		br.com.senior.examples.helloworld.impl.CreateMergePedidoImpl impl = new br.com.senior.examples.helloworld.impl.CreateMergePedidoImpl(messengerSupplier, userId, messageSupplier);
		return impl.createMergePedidoRequest(input);
	}
	/**
	 * Chamada síncrona para o método retrievePedido
	 * This is a public operation
	 * The 'retrieve' request primitive for the Pedido entity.
	 * @throws HelloWorldMessageException quando um erro com payload for retornado pela mensageria
	 */
	@Override
	public Pedido retrievePedido(Pedido.Id input, long timeout) {
		br.com.senior.examples.helloworld.impl.RetrievePedidoImpl impl = new br.com.senior.examples.helloworld.impl.RetrievePedidoImpl(messengerSupplier, userId, messageSupplier);
		return impl.retrievePedido(input, timeout);
	}
	
	/**
	 * Chamada assíncrona para o método retrievePedido
	 * This is a public operation
	 * The 'retrieve' request primitive for the Pedido entity.
	 */
	@Override
	public void retrievePedido(Pedido.Id input) {
		br.com.senior.examples.helloworld.impl.RetrievePedidoImpl impl = new br.com.senior.examples.helloworld.impl.RetrievePedidoImpl(messengerSupplier, userId, messageSupplier);
		impl.retrievePedido(input);
	}
	
	/**
	 * Chamada assíncrona para o método retrievePedido
	 * This is a public operation
	 * The 'retrieve' request primitive for the Pedido entity.
	 */
	@Override
	public CompletableFuture<Pedido> retrievePedidoRequest(Pedido.Id input) {
		br.com.senior.examples.helloworld.impl.RetrievePedidoImpl impl = new br.com.senior.examples.helloworld.impl.RetrievePedidoImpl(messengerSupplier, userId, messageSupplier);
		return impl.retrievePedidoRequest(input);
	}
	/**
	 * Chamada síncrona para o método updatePedido
	 * This is a public operation
	 * The 'update' request primitive for the Pedido entity.
	 * @throws HelloWorldMessageException quando um erro com payload for retornado pela mensageria
	 */
	@Override
	public Pedido updatePedido(Pedido input, long timeout) {
		br.com.senior.examples.helloworld.impl.UpdatePedidoImpl impl = new br.com.senior.examples.helloworld.impl.UpdatePedidoImpl(messengerSupplier, userId, messageSupplier);
		return impl.updatePedido(input, timeout);
	}
	
	/**
	 * Chamada assíncrona para o método updatePedido
	 * This is a public operation
	 * The 'update' request primitive for the Pedido entity.
	 */
	@Override
	public void updatePedido(Pedido input) {
		br.com.senior.examples.helloworld.impl.UpdatePedidoImpl impl = new br.com.senior.examples.helloworld.impl.UpdatePedidoImpl(messengerSupplier, userId, messageSupplier);
		impl.updatePedido(input);
	}
	
	/**
	 * Chamada assíncrona para o método updatePedido
	 * This is a public operation
	 * The 'update' request primitive for the Pedido entity.
	 */
	@Override
	public CompletableFuture<Pedido> updatePedidoRequest(Pedido input) {
		br.com.senior.examples.helloworld.impl.UpdatePedidoImpl impl = new br.com.senior.examples.helloworld.impl.UpdatePedidoImpl(messengerSupplier, userId, messageSupplier);
		return impl.updatePedidoRequest(input);
	}
	/**
	 * Chamada síncrona para o método updateMergePedido
	 * This is a public operation
	 * The 'updateMerge' request primitive for the Pedido entity.
	 * @throws HelloWorldMessageException quando um erro com payload for retornado pela mensageria
	 */
	@Override
	public Pedido updateMergePedido(Pedido input, long timeout) {
		br.com.senior.examples.helloworld.impl.UpdateMergePedidoImpl impl = new br.com.senior.examples.helloworld.impl.UpdateMergePedidoImpl(messengerSupplier, userId, messageSupplier);
		return impl.updateMergePedido(input, timeout);
	}
	
	/**
	 * Chamada assíncrona para o método updateMergePedido
	 * This is a public operation
	 * The 'updateMerge' request primitive for the Pedido entity.
	 */
	@Override
	public void updateMergePedido(Pedido input) {
		br.com.senior.examples.helloworld.impl.UpdateMergePedidoImpl impl = new br.com.senior.examples.helloworld.impl.UpdateMergePedidoImpl(messengerSupplier, userId, messageSupplier);
		impl.updateMergePedido(input);
	}
	
	/**
	 * Chamada assíncrona para o método updateMergePedido
	 * This is a public operation
	 * The 'updateMerge' request primitive for the Pedido entity.
	 */
	@Override
	public CompletableFuture<Pedido> updateMergePedidoRequest(Pedido input) {
		br.com.senior.examples.helloworld.impl.UpdateMergePedidoImpl impl = new br.com.senior.examples.helloworld.impl.UpdateMergePedidoImpl(messengerSupplier, userId, messageSupplier);
		return impl.updateMergePedidoRequest(input);
	}
	/**
	 * Chamada síncrona para o método deletePedido
	 * This is a public operation
	 * The 'delete' request primitive for the Pedido entity.
	 * @throws HelloWorldMessageException quando um erro com payload for retornado pela mensageria
	 */
	@Override
	public void deletePedido(Pedido.Id input, long timeout) {
		br.com.senior.examples.helloworld.impl.DeletePedidoImpl impl = new br.com.senior.examples.helloworld.impl.DeletePedidoImpl(messengerSupplier, userId, messageSupplier);
		impl.deletePedido(input, timeout);
	}
	
	/**
	 * Chamada assíncrona para o método deletePedido
	 * This is a public operation
	 * The 'delete' request primitive for the Pedido entity.
	 */
	@Override
	public void deletePedido(Pedido.Id input) {
		br.com.senior.examples.helloworld.impl.DeletePedidoImpl impl = new br.com.senior.examples.helloworld.impl.DeletePedidoImpl(messengerSupplier, userId, messageSupplier);
		impl.deletePedido(input);
	}
	
	/**
	 * Chamada síncrona para o método listPedido
	 * This is a public operation
	 * The 'list' request primitive for the Pedido entity.
	 * @throws HelloWorldMessageException quando um erro com payload for retornado pela mensageria
	 */
	@Override
	public Pedido.PagedResults listPedido(Pedido.PageRequest input, long timeout) {
		br.com.senior.examples.helloworld.impl.ListPedidoImpl impl = new br.com.senior.examples.helloworld.impl.ListPedidoImpl(messengerSupplier, userId, messageSupplier);
		return impl.listPedido(input, timeout);
	}
	
	/**
	 * Chamada assíncrona para o método listPedido
	 * This is a public operation
	 * The 'list' request primitive for the Pedido entity.
	 */
	@Override
	public void listPedido(Pedido.PageRequest input) {
		br.com.senior.examples.helloworld.impl.ListPedidoImpl impl = new br.com.senior.examples.helloworld.impl.ListPedidoImpl(messengerSupplier, userId, messageSupplier);
		impl.listPedido(input);
	}
	
	/**
	 * Chamada assíncrona para o método listPedido
	 * This is a public operation
	 * The 'list' request primitive for the Pedido entity.
	 */
	@Override
	public CompletableFuture<Pedido.PagedResults> listPedidoRequest(Pedido.PageRequest input) {
		br.com.senior.examples.helloworld.impl.ListPedidoImpl impl = new br.com.senior.examples.helloworld.impl.ListPedidoImpl(messengerSupplier, userId, messageSupplier);
		return impl.listPedidoRequest(input);
	}
	/**
	 * Chamada síncrona para o método getDependencies
	 * This is a public operation
	 * Returns a list with all dependencies from this service, along with their respective versions
	 * @throws HelloWorldMessageException quando um erro com payload for retornado pela mensageria
	 */
	@Override
	public GetDependenciesOutput getDependencies(long timeout) {
		br.com.senior.examples.helloworld.impl.GetDependenciesImpl impl = new br.com.senior.examples.helloworld.impl.GetDependenciesImpl(messengerSupplier, userId, messageSupplier);
		return impl.getDependencies(timeout);
	}
	
	/**
	 * Chamada assíncrona para o método getDependencies
	 * This is a public operation
	 * Returns a list with all dependencies from this service, along with their respective versions
	 */
	@Override
	public void getDependencies() {
		br.com.senior.examples.helloworld.impl.GetDependenciesImpl impl = new br.com.senior.examples.helloworld.impl.GetDependenciesImpl(messengerSupplier, userId, messageSupplier);
		impl.getDependencies();
	}
	
	/**
	 * Chamada assíncrona para o método getDependencies
	 * This is a public operation
	 * Returns a list with all dependencies from this service, along with their respective versions
	 */
	@Override
	public CompletableFuture<GetDependenciesOutput> getDependenciesRequest() {
		br.com.senior.examples.helloworld.impl.GetDependenciesImpl impl = new br.com.senior.examples.helloworld.impl.GetDependenciesImpl(messengerSupplier, userId, messageSupplier);
		return impl.getDependenciesRequest();
	}


	/**
	* Chamada assíncrona para o método publishServiceStarted
	* Warning: this operation is PRIVATE and may have its behavior changed at any time without notice
	*/
	public void publishServiceStarted( ServiceStartedPayload input ) {
	
		Message message = new Message(userId.getTenant(), HelloWorldConstants.DOMAIN, HelloWorldConstants.SERVICE, HelloWorldConstants.Events.SERVICE_STARTED, DtoJsonConverter.toJSON(input));
		try {
			addMessageHeaders(message);
			messengerSupplier.get().publish(message);
		} catch (Exception e) {
			throw new HelloWorldException("Erro ao enviar a mensagem", e);
		}
	}
	
	/**
	* Chamada assíncrona para o método publishNotifyUserEvent
	* Warning: this operation is PRIVATE and may have its behavior changed at any time without notice
	*/
	public void publishNotifyUserEvent( NotifyUserEventPayload input ) {
	
		Message message = new Message(userId.getTenant(), HelloWorldConstants.DOMAIN, HelloWorldConstants.SERVICE, HelloWorldConstants.Events.NOTIFY_USER_EVENT, DtoJsonConverter.toJSON(input));
		try {
			addMessageHeaders(message);
			messengerSupplier.get().publish(message);
		} catch (Exception e) {
			throw new HelloWorldException("Erro ao enviar a mensagem", e);
		}
	}
	
	/**
	* Chamada assíncrona para o método publishImportClienteEvent
	* This is a public operation
	*/
	public void publishImportClienteEvent( ImportClienteEventPayload input ) {
	
		Message message = new Message(userId.getTenant(), HelloWorldConstants.DOMAIN, HelloWorldConstants.SERVICE, HelloWorldConstants.Events.IMPORT_CLIENTE_EVENT, DtoJsonConverter.toJSON(input));
		try {
			addMessageHeaders(message);
			messengerSupplier.get().publish(message);
		} catch (Exception e) {
			throw new HelloWorldException("Erro ao enviar a mensagem", e);
		}
	}
	
	/**
	* Chamada assíncrona para o método publishExportClienteEvent
	* This is a public operation
	*/
	public void publishExportClienteEvent( ExportClienteEventPayload input ) {
	
		Message message = new Message(userId.getTenant(), HelloWorldConstants.DOMAIN, HelloWorldConstants.SERVICE, HelloWorldConstants.Events.EXPORT_CLIENTE_EVENT, DtoJsonConverter.toJSON(input));
		try {
			addMessageHeaders(message);
			messengerSupplier.get().publish(message);
		} catch (Exception e) {
			throw new HelloWorldException("Erro ao enviar a mensagem", e);
		}
	}
	
	/**
	* Chamada assíncrona para o método publishImportItemEvent
	* This is a public operation
	*/
	public void publishImportItemEvent( ImportItemEventPayload input ) {
	
		Message message = new Message(userId.getTenant(), HelloWorldConstants.DOMAIN, HelloWorldConstants.SERVICE, HelloWorldConstants.Events.IMPORT_ITEM_EVENT, DtoJsonConverter.toJSON(input));
		try {
			addMessageHeaders(message);
			messengerSupplier.get().publish(message);
		} catch (Exception e) {
			throw new HelloWorldException("Erro ao enviar a mensagem", e);
		}
	}
	
	/**
	* Chamada assíncrona para o método publishExportItemEvent
	* This is a public operation
	*/
	public void publishExportItemEvent( ExportItemEventPayload input ) {
	
		Message message = new Message(userId.getTenant(), HelloWorldConstants.DOMAIN, HelloWorldConstants.SERVICE, HelloWorldConstants.Events.EXPORT_ITEM_EVENT, DtoJsonConverter.toJSON(input));
		try {
			addMessageHeaders(message);
			messengerSupplier.get().publish(message);
		} catch (Exception e) {
			throw new HelloWorldException("Erro ao enviar a mensagem", e);
		}
	}
	
	/**
	* Chamada assíncrona para o método publishImportPedidoEvent
	* This is a public operation
	*/
	public void publishImportPedidoEvent( ImportPedidoEventPayload input ) {
	
		Message message = new Message(userId.getTenant(), HelloWorldConstants.DOMAIN, HelloWorldConstants.SERVICE, HelloWorldConstants.Events.IMPORT_PEDIDO_EVENT, DtoJsonConverter.toJSON(input));
		try {
			addMessageHeaders(message);
			messengerSupplier.get().publish(message);
		} catch (Exception e) {
			throw new HelloWorldException("Erro ao enviar a mensagem", e);
		}
	}
	
	/**
	* Chamada assíncrona para o método publishExportPedidoEvent
	* This is a public operation
	*/
	public void publishExportPedidoEvent( ExportPedidoEventPayload input ) {
	
		Message message = new Message(userId.getTenant(), HelloWorldConstants.DOMAIN, HelloWorldConstants.SERVICE, HelloWorldConstants.Events.EXPORT_PEDIDO_EVENT, DtoJsonConverter.toJSON(input));
		try {
			addMessageHeaders(message);
			messengerSupplier.get().publish(message);
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
