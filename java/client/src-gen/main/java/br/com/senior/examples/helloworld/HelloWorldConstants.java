/**
 * This is a generated file. DO NOT EDIT ANY CODE HERE, YOUR CHANGES WILL BE LOST.
 */
package br.com.senior.examples.helloworld;

public interface HelloWorldConstants {
    String DOMAIN = "examples";
    String SERVICE = "hello_world";
    
    interface Commands {
    	/**
    	 * @see HelloWorldInput the request payload
    	 */
    	String HELLO_WORLD = "helloWorld";
    	/**
    	 * The success response primitive for helloWorld.
    	 *
    	 * @see #HELLO_WORLD the request primitive
    	 * @see HelloWorldOutput the response payload
    	 */
    	String HELLO_WORLD_RESPONSE = "helloWorldResponse";
    	/**
    	 * An error response primitive for helloWorld.
    	 *
    	 * @see #HELLO_WORLD the request primitive
    	 */
    	String HELLO_WORLD_ERROR = "helloWorldError";
    	/**
    	 * @see ListaItemManualInput the request payload
    	 */
    	String LISTA_ITEM_MANUAL = "listaItemManual";
    	/**
    	 * The success response primitive for listaItemManual.
    	 *
    	 * @see #LISTA_ITEM_MANUAL the request primitive
    	 * @see ListaItemManualOutput the response payload
    	 */
    	String LISTA_ITEM_MANUAL_RESPONSE = "listaItemManualResponse";
    	/**
    	 * An error response primitive for listaItemManual.
    	 *
    	 * @see #LISTA_ITEM_MANUAL the request primitive
    	 */
    	String LISTA_ITEM_MANUAL_ERROR = "listaItemManualError";
    	/**
    	 * Default 'getMetadata' query. Every service must handle this command and return metadata in the format requested.
    	 * @see GetMetadataInput the request payload
    	 */
    	String GET_METADATA = "getMetadata";
    	/**
    	 * The success response primitive for getMetadata.
    	 *
    	 * @see #GET_METADATA the request primitive
    	 * @see GetMetadataOutput the response payload
    	 */
    	String GET_METADATA_RESPONSE = "getMetadataResponse";
    	/**
    	 * An error response primitive for getMetadata.
    	 *
    	 * @see #GET_METADATA the request primitive
    	 */
    	String GET_METADATA_ERROR = "getMetadataError";
    	String ODATA = "odata";
    	/**
    	 * The success response primitive for odata.
    	 *
    	 * @see #ODATA the request primitive
    	 */
    	String ODATA_RESPONSE = "odataResponse";
    	/**
    	 * An error response primitive for odata.
    	 *
    	 * @see #ODATA the request primitive
    	 */
    	String ODATA_ERROR = "odataError";
    	/**
    	 * @see ImportClienteInput the request payload
    	 */
    	String IMPORT_CLIENTE = "importCliente";
    	/**
    	 * The success response primitive for importCliente.
    	 *
    	 * @see #IMPORT_CLIENTE the request primitive
    	 * @see ImportClienteOutput the response payload
    	 */
    	String IMPORT_CLIENTE_RESPONSE = "importClienteResponse";
    	/**
    	 * An error response primitive for importCliente.
    	 *
    	 * @see #IMPORT_CLIENTE the request primitive
    	 */
    	String IMPORT_CLIENTE_ERROR = "importClienteError";
    	/**
    	 * @see ExportClienteInput the request payload
    	 */
    	String EXPORT_CLIENTE = "exportCliente";
    	/**
    	 * The success response primitive for exportCliente.
    	 *
    	 * @see #EXPORT_CLIENTE the request primitive
    	 * @see ExportClienteOutput the response payload
    	 */
    	String EXPORT_CLIENTE_RESPONSE = "exportClienteResponse";
    	/**
    	 * An error response primitive for exportCliente.
    	 *
    	 * @see #EXPORT_CLIENTE the request primitive
    	 */
    	String EXPORT_CLIENTE_ERROR = "exportClienteError";
    	/**
    	 * @see ImportItemInput the request payload
    	 */
    	String IMPORT_ITEM = "importItem";
    	/**
    	 * The success response primitive for importItem.
    	 *
    	 * @see #IMPORT_ITEM the request primitive
    	 * @see ImportItemOutput the response payload
    	 */
    	String IMPORT_ITEM_RESPONSE = "importItemResponse";
    	/**
    	 * An error response primitive for importItem.
    	 *
    	 * @see #IMPORT_ITEM the request primitive
    	 */
    	String IMPORT_ITEM_ERROR = "importItemError";
    	/**
    	 * @see ExportItemInput the request payload
    	 */
    	String EXPORT_ITEM = "exportItem";
    	/**
    	 * The success response primitive for exportItem.
    	 *
    	 * @see #EXPORT_ITEM the request primitive
    	 * @see ExportItemOutput the response payload
    	 */
    	String EXPORT_ITEM_RESPONSE = "exportItemResponse";
    	/**
    	 * An error response primitive for exportItem.
    	 *
    	 * @see #EXPORT_ITEM the request primitive
    	 */
    	String EXPORT_ITEM_ERROR = "exportItemError";
    	/**
    	 * @see ImportPedidoInput the request payload
    	 */
    	String IMPORT_PEDIDO = "importPedido";
    	/**
    	 * The success response primitive for importPedido.
    	 *
    	 * @see #IMPORT_PEDIDO the request primitive
    	 * @see ImportPedidoOutput the response payload
    	 */
    	String IMPORT_PEDIDO_RESPONSE = "importPedidoResponse";
    	/**
    	 * An error response primitive for importPedido.
    	 *
    	 * @see #IMPORT_PEDIDO the request primitive
    	 */
    	String IMPORT_PEDIDO_ERROR = "importPedidoError";
    	/**
    	 * @see ExportPedidoInput the request payload
    	 */
    	String EXPORT_PEDIDO = "exportPedido";
    	/**
    	 * The success response primitive for exportPedido.
    	 *
    	 * @see #EXPORT_PEDIDO the request primitive
    	 * @see ExportPedidoOutput the response payload
    	 */
    	String EXPORT_PEDIDO_RESPONSE = "exportPedidoResponse";
    	/**
    	 * An error response primitive for exportPedido.
    	 *
    	 * @see #EXPORT_PEDIDO the request primitive
    	 */
    	String EXPORT_PEDIDO_ERROR = "exportPedidoError";
    	/**
    	 * The 'create' request primitive for the Cliente entity.
    	 * @see Cliente the request payload
    	 */
    	String CREATE_CLIENTE = "createCliente";
    	/**
    	 * The success response primitive for createCliente.
    	 *
    	 * @see #CREATE_CLIENTE the request primitive
    	 */
    	String CREATE_CLIENTE_RESPONSE = "createClienteResponse";
    	/**
    	 * An error response primitive for createCliente.
    	 *
    	 * @see #CREATE_CLIENTE the request primitive
    	 */
    	String CREATE_CLIENTE_ERROR = "createClienteError";
    	/**
    	 * The 'createBulk' request primitive for the Cliente entity.
    	 * @see CreateBulkClienteInput the request payload
    	 */
    	String CREATE_BULK_CLIENTE = "createBulkCliente";
    	/**
    	 * The success response primitive for createBulkCliente.
    	 *
    	 * @see #CREATE_BULK_CLIENTE the request primitive
    	 * @see CreateBulkClienteOutput the response payload
    	 */
    	String CREATE_BULK_CLIENTE_RESPONSE = "createBulkClienteResponse";
    	/**
    	 * An error response primitive for createBulkCliente.
    	 *
    	 * @see #CREATE_BULK_CLIENTE the request primitive
    	 */
    	String CREATE_BULK_CLIENTE_ERROR = "createBulkClienteError";
    	/**
    	 * The 'createMerge' request primitive for the Cliente entity.
    	 * @see Cliente the request payload
    	 */
    	String CREATE_MERGE_CLIENTE = "createMergeCliente";
    	/**
    	 * The success response primitive for createMergeCliente.
    	 *
    	 * @see #CREATE_MERGE_CLIENTE the request primitive
    	 */
    	String CREATE_MERGE_CLIENTE_RESPONSE = "createMergeClienteResponse";
    	/**
    	 * An error response primitive for createMergeCliente.
    	 *
    	 * @see #CREATE_MERGE_CLIENTE the request primitive
    	 */
    	String CREATE_MERGE_CLIENTE_ERROR = "createMergeClienteError";
    	/**
    	 * The 'retrieve' request primitive for the Cliente entity.
    	 * @see Cliente.Id the request payload
    	 */
    	String RETRIEVE_CLIENTE = "retrieveCliente";
    	/**
    	 * The success response primitive for retrieveCliente.
    	 *
    	 * @see #RETRIEVE_CLIENTE the request primitive
    	 */
    	String RETRIEVE_CLIENTE_RESPONSE = "retrieveClienteResponse";
    	/**
    	 * An error response primitive for retrieveCliente.
    	 *
    	 * @see #RETRIEVE_CLIENTE the request primitive
    	 */
    	String RETRIEVE_CLIENTE_ERROR = "retrieveClienteError";
    	/**
    	 * The 'update' request primitive for the Cliente entity.
    	 * @see Cliente the request payload
    	 */
    	String UPDATE_CLIENTE = "updateCliente";
    	/**
    	 * The success response primitive for updateCliente.
    	 *
    	 * @see #UPDATE_CLIENTE the request primitive
    	 */
    	String UPDATE_CLIENTE_RESPONSE = "updateClienteResponse";
    	/**
    	 * An error response primitive for updateCliente.
    	 *
    	 * @see #UPDATE_CLIENTE the request primitive
    	 */
    	String UPDATE_CLIENTE_ERROR = "updateClienteError";
    	/**
    	 * The 'updateMerge' request primitive for the Cliente entity.
    	 * @see Cliente the request payload
    	 */
    	String UPDATE_MERGE_CLIENTE = "updateMergeCliente";
    	/**
    	 * The success response primitive for updateMergeCliente.
    	 *
    	 * @see #UPDATE_MERGE_CLIENTE the request primitive
    	 */
    	String UPDATE_MERGE_CLIENTE_RESPONSE = "updateMergeClienteResponse";
    	/**
    	 * An error response primitive for updateMergeCliente.
    	 *
    	 * @see #UPDATE_MERGE_CLIENTE the request primitive
    	 */
    	String UPDATE_MERGE_CLIENTE_ERROR = "updateMergeClienteError";
    	/**
    	 * The 'delete' request primitive for the Cliente entity.
    	 * @see Cliente.Id the request payload
    	 */
    	String DELETE_CLIENTE = "deleteCliente";
    	/**
    	 * The success response primitive for deleteCliente.
    	 *
    	 * @see #DELETE_CLIENTE the request primitive
    	 */
    	String DELETE_CLIENTE_RESPONSE = "deleteClienteResponse";
    	/**
    	 * An error response primitive for deleteCliente.
    	 *
    	 * @see #DELETE_CLIENTE the request primitive
    	 */
    	String DELETE_CLIENTE_ERROR = "deleteClienteError";
    	/**
    	 * The 'list' request primitive for the Cliente entity.
    	 * @see cliente.pageRequest the request payload
    	 */
    	String LIST_CLIENTE = "listCliente";
    	/**
    	 * The success response primitive for listCliente.
    	 *
    	 * @see #LIST_CLIENTE the request primitive
    	 * @see Cliente.PagedResults the response payload
    	 */
    	String LIST_CLIENTE_RESPONSE = "listClienteResponse";
    	/**
    	 * An error response primitive for listCliente.
    	 *
    	 * @see #LIST_CLIENTE the request primitive
    	 */
    	String LIST_CLIENTE_ERROR = "listClienteError";
    	/**
    	 * The 'create' request primitive for the Item entity.
    	 * @see Item the request payload
    	 */
    	String CREATE_ITEM = "createItem";
    	/**
    	 * The success response primitive for createItem.
    	 *
    	 * @see #CREATE_ITEM the request primitive
    	 */
    	String CREATE_ITEM_RESPONSE = "createItemResponse";
    	/**
    	 * An error response primitive for createItem.
    	 *
    	 * @see #CREATE_ITEM the request primitive
    	 */
    	String CREATE_ITEM_ERROR = "createItemError";
    	/**
    	 * The 'createBulk' request primitive for the Item entity.
    	 * @see CreateBulkItemInput the request payload
    	 */
    	String CREATE_BULK_ITEM = "createBulkItem";
    	/**
    	 * The success response primitive for createBulkItem.
    	 *
    	 * @see #CREATE_BULK_ITEM the request primitive
    	 * @see CreateBulkItemOutput the response payload
    	 */
    	String CREATE_BULK_ITEM_RESPONSE = "createBulkItemResponse";
    	/**
    	 * An error response primitive for createBulkItem.
    	 *
    	 * @see #CREATE_BULK_ITEM the request primitive
    	 */
    	String CREATE_BULK_ITEM_ERROR = "createBulkItemError";
    	/**
    	 * The 'createMerge' request primitive for the Item entity.
    	 * @see Item the request payload
    	 */
    	String CREATE_MERGE_ITEM = "createMergeItem";
    	/**
    	 * The success response primitive for createMergeItem.
    	 *
    	 * @see #CREATE_MERGE_ITEM the request primitive
    	 */
    	String CREATE_MERGE_ITEM_RESPONSE = "createMergeItemResponse";
    	/**
    	 * An error response primitive for createMergeItem.
    	 *
    	 * @see #CREATE_MERGE_ITEM the request primitive
    	 */
    	String CREATE_MERGE_ITEM_ERROR = "createMergeItemError";
    	/**
    	 * The 'retrieve' request primitive for the Item entity.
    	 * @see Item.Id the request payload
    	 */
    	String RETRIEVE_ITEM = "retrieveItem";
    	/**
    	 * The success response primitive for retrieveItem.
    	 *
    	 * @see #RETRIEVE_ITEM the request primitive
    	 */
    	String RETRIEVE_ITEM_RESPONSE = "retrieveItemResponse";
    	/**
    	 * An error response primitive for retrieveItem.
    	 *
    	 * @see #RETRIEVE_ITEM the request primitive
    	 */
    	String RETRIEVE_ITEM_ERROR = "retrieveItemError";
    	/**
    	 * The 'update' request primitive for the Item entity.
    	 * @see Item the request payload
    	 */
    	String UPDATE_ITEM = "updateItem";
    	/**
    	 * The success response primitive for updateItem.
    	 *
    	 * @see #UPDATE_ITEM the request primitive
    	 */
    	String UPDATE_ITEM_RESPONSE = "updateItemResponse";
    	/**
    	 * An error response primitive for updateItem.
    	 *
    	 * @see #UPDATE_ITEM the request primitive
    	 */
    	String UPDATE_ITEM_ERROR = "updateItemError";
    	/**
    	 * The 'updateMerge' request primitive for the Item entity.
    	 * @see Item the request payload
    	 */
    	String UPDATE_MERGE_ITEM = "updateMergeItem";
    	/**
    	 * The success response primitive for updateMergeItem.
    	 *
    	 * @see #UPDATE_MERGE_ITEM the request primitive
    	 */
    	String UPDATE_MERGE_ITEM_RESPONSE = "updateMergeItemResponse";
    	/**
    	 * An error response primitive for updateMergeItem.
    	 *
    	 * @see #UPDATE_MERGE_ITEM the request primitive
    	 */
    	String UPDATE_MERGE_ITEM_ERROR = "updateMergeItemError";
    	/**
    	 * The 'delete' request primitive for the Item entity.
    	 * @see Item.Id the request payload
    	 */
    	String DELETE_ITEM = "deleteItem";
    	/**
    	 * The success response primitive for deleteItem.
    	 *
    	 * @see #DELETE_ITEM the request primitive
    	 */
    	String DELETE_ITEM_RESPONSE = "deleteItemResponse";
    	/**
    	 * An error response primitive for deleteItem.
    	 *
    	 * @see #DELETE_ITEM the request primitive
    	 */
    	String DELETE_ITEM_ERROR = "deleteItemError";
    	/**
    	 * The 'list' request primitive for the Item entity.
    	 * @see item.pageRequest the request payload
    	 */
    	String LIST_ITEM = "listItem";
    	/**
    	 * The success response primitive for listItem.
    	 *
    	 * @see #LIST_ITEM the request primitive
    	 * @see Item.PagedResults the response payload
    	 */
    	String LIST_ITEM_RESPONSE = "listItemResponse";
    	/**
    	 * An error response primitive for listItem.
    	 *
    	 * @see #LIST_ITEM the request primitive
    	 */
    	String LIST_ITEM_ERROR = "listItemError";
    	/**
    	 * The 'create' request primitive for the Pedido entity.
    	 * @see Pedido the request payload
    	 */
    	String CREATE_PEDIDO = "createPedido";
    	/**
    	 * The success response primitive for createPedido.
    	 *
    	 * @see #CREATE_PEDIDO the request primitive
    	 */
    	String CREATE_PEDIDO_RESPONSE = "createPedidoResponse";
    	/**
    	 * An error response primitive for createPedido.
    	 *
    	 * @see #CREATE_PEDIDO the request primitive
    	 */
    	String CREATE_PEDIDO_ERROR = "createPedidoError";
    	/**
    	 * The 'createBulk' request primitive for the Pedido entity.
    	 * @see CreateBulkPedidoInput the request payload
    	 */
    	String CREATE_BULK_PEDIDO = "createBulkPedido";
    	/**
    	 * The success response primitive for createBulkPedido.
    	 *
    	 * @see #CREATE_BULK_PEDIDO the request primitive
    	 * @see CreateBulkPedidoOutput the response payload
    	 */
    	String CREATE_BULK_PEDIDO_RESPONSE = "createBulkPedidoResponse";
    	/**
    	 * An error response primitive for createBulkPedido.
    	 *
    	 * @see #CREATE_BULK_PEDIDO the request primitive
    	 */
    	String CREATE_BULK_PEDIDO_ERROR = "createBulkPedidoError";
    	/**
    	 * The 'createMerge' request primitive for the Pedido entity.
    	 * @see Pedido the request payload
    	 */
    	String CREATE_MERGE_PEDIDO = "createMergePedido";
    	/**
    	 * The success response primitive for createMergePedido.
    	 *
    	 * @see #CREATE_MERGE_PEDIDO the request primitive
    	 */
    	String CREATE_MERGE_PEDIDO_RESPONSE = "createMergePedidoResponse";
    	/**
    	 * An error response primitive for createMergePedido.
    	 *
    	 * @see #CREATE_MERGE_PEDIDO the request primitive
    	 */
    	String CREATE_MERGE_PEDIDO_ERROR = "createMergePedidoError";
    	/**
    	 * The 'retrieve' request primitive for the Pedido entity.
    	 * @see Pedido.Id the request payload
    	 */
    	String RETRIEVE_PEDIDO = "retrievePedido";
    	/**
    	 * The success response primitive for retrievePedido.
    	 *
    	 * @see #RETRIEVE_PEDIDO the request primitive
    	 */
    	String RETRIEVE_PEDIDO_RESPONSE = "retrievePedidoResponse";
    	/**
    	 * An error response primitive for retrievePedido.
    	 *
    	 * @see #RETRIEVE_PEDIDO the request primitive
    	 */
    	String RETRIEVE_PEDIDO_ERROR = "retrievePedidoError";
    	/**
    	 * The 'update' request primitive for the Pedido entity.
    	 * @see Pedido the request payload
    	 */
    	String UPDATE_PEDIDO = "updatePedido";
    	/**
    	 * The success response primitive for updatePedido.
    	 *
    	 * @see #UPDATE_PEDIDO the request primitive
    	 */
    	String UPDATE_PEDIDO_RESPONSE = "updatePedidoResponse";
    	/**
    	 * An error response primitive for updatePedido.
    	 *
    	 * @see #UPDATE_PEDIDO the request primitive
    	 */
    	String UPDATE_PEDIDO_ERROR = "updatePedidoError";
    	/**
    	 * The 'updateMerge' request primitive for the Pedido entity.
    	 * @see Pedido the request payload
    	 */
    	String UPDATE_MERGE_PEDIDO = "updateMergePedido";
    	/**
    	 * The success response primitive for updateMergePedido.
    	 *
    	 * @see #UPDATE_MERGE_PEDIDO the request primitive
    	 */
    	String UPDATE_MERGE_PEDIDO_RESPONSE = "updateMergePedidoResponse";
    	/**
    	 * An error response primitive for updateMergePedido.
    	 *
    	 * @see #UPDATE_MERGE_PEDIDO the request primitive
    	 */
    	String UPDATE_MERGE_PEDIDO_ERROR = "updateMergePedidoError";
    	/**
    	 * The 'delete' request primitive for the Pedido entity.
    	 * @see Pedido.Id the request payload
    	 */
    	String DELETE_PEDIDO = "deletePedido";
    	/**
    	 * The success response primitive for deletePedido.
    	 *
    	 * @see #DELETE_PEDIDO the request primitive
    	 */
    	String DELETE_PEDIDO_RESPONSE = "deletePedidoResponse";
    	/**
    	 * An error response primitive for deletePedido.
    	 *
    	 * @see #DELETE_PEDIDO the request primitive
    	 */
    	String DELETE_PEDIDO_ERROR = "deletePedidoError";
    	/**
    	 * The 'list' request primitive for the Pedido entity.
    	 * @see pedido.pageRequest the request payload
    	 */
    	String LIST_PEDIDO = "listPedido";
    	/**
    	 * The success response primitive for listPedido.
    	 *
    	 * @see #LIST_PEDIDO the request primitive
    	 * @see Pedido.PagedResults the response payload
    	 */
    	String LIST_PEDIDO_RESPONSE = "listPedidoResponse";
    	/**
    	 * An error response primitive for listPedido.
    	 *
    	 * @see #LIST_PEDIDO the request primitive
    	 */
    	String LIST_PEDIDO_ERROR = "listPedidoError";
    	/**
    	 * Returns a list with all dependencies from this service, along with their respective versions
    	 */
    	String GET_DEPENDENCIES = "getDependencies";
    	/**
    	 * The success response primitive for getDependencies.
    	 *
    	 * @see #GET_DEPENDENCIES the request primitive
    	 * @see GetDependenciesOutput the response payload
    	 */
    	String GET_DEPENDENCIES_RESPONSE = "getDependenciesResponse";
    	/**
    	 * An error response primitive for getDependencies.
    	 *
    	 * @see #GET_DEPENDENCIES the request primitive
    	 */
    	String GET_DEPENDENCIES_ERROR = "getDependenciesError";
    }
    
    interface Events {
    	/**
    	 * Default 'serviceStarted' event.
    	 */
    	String SERVICE_STARTED = "serviceStarted";
    	/**
    	 * Default 'notifyUser' event.
    	 */
    	String NOTIFY_USER_EVENT = "notifyUserEvent";
    	String IMPORT_CLIENTE_EVENT = "importClienteEvent";
    	String EXPORT_CLIENTE_EVENT = "exportClienteEvent";
    	String IMPORT_ITEM_EVENT = "importItemEvent";
    	String EXPORT_ITEM_EVENT = "exportItemEvent";
    	String IMPORT_PEDIDO_EVENT = "importPedidoEvent";
    	String EXPORT_PEDIDO_EVENT = "exportPedidoEvent";
    }
    
}
