namespace SeniorSistemas.Examples.Helloworld
{
    
    /// This is a generated file. DO NOT EDIT ANY CODE HERE, YOUR CHANGES WILL BE LOST.

    ///<summary>
    /// TBD
    ///</summary>
    ///<remarks>Constants for examples/hello_world</remarks>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("sdl", "25.1.1")]
    public class HelloWorldConstants
    {
        ///<summary>The service domain</summary>
        public const string Domain = "examples";
        ///<summary>The service name</summary>
        public const string Service = "hello_world";
        ///<summary>Primitives for commands in the hello_world service.</summary>
        public static class Commands
        {
            ///<summary>
            /// TBD
            /// <see cref="HelloWorldInput">the request payload</see>
            ///</summary>
            public const string HelloWorld = "helloWorld";
            /// <summary>
            /// The response primitive for helloWorld.
            /// </summary>
            ///
            /// <see cref="HelloWorld">the request primitive</see>
            /// <see cref="HelloWorldOutput">the response payload</see>
            public const string HelloWorldResponse = "helloWorldResponse";
            ///<summary>
            /// TBD
            /// <see cref="ListaItemManualInput">the request payload</see>
            ///</summary>
            public const string ListaItemManual = "listaItemManual";
            /// <summary>
            /// The response primitive for listaItemManual.
            /// </summary>
            ///
            /// <see cref="ListaItemManual">the request primitive</see>
            /// <see cref="ListaItemManualOutput">the response payload</see>
            public const string ListaItemManualResponse = "listaItemManualResponse";
            ///<summary>
            /// Default 'getMetadata' query. Every service must handle this command and return metadata in the format requested.
            /// <see cref="GetMetadataInput">the request payload</see>
            ///</summary>
            public const string GetMetadata = "getMetadata";
            /// <summary>
            /// The response primitive for getMetadata.
            /// </summary>
            ///
            /// <see cref="GetMetadata">the request primitive</see>
            /// <see cref="GetMetadataOutput">the response payload</see>
            public const string GetMetadataResponse = "getMetadataResponse";
            ///<summary>
            /// TBD
            ///</summary>
            public const string Odata = "odata";
            /// <summary>
            /// The response primitive for odata.
            /// </summary>
            ///
            /// <see cref="Odata">the request primitive</see>
            public const string OdataResponse = "odataResponse";
            ///<summary>
            /// TBD
            /// <see cref="ImportClienteInput">the request payload</see>
            ///</summary>
            public const string ImportCliente = "importCliente";
            /// <summary>
            /// The response primitive for importCliente.
            /// </summary>
            ///
            /// <see cref="ImportCliente">the request primitive</see>
            /// <see cref="ImportClienteOutput">the response payload</see>
            public const string ImportClienteResponse = "importClienteResponse";
            ///<summary>
            /// TBD
            /// <see cref="ExportClienteInput">the request payload</see>
            ///</summary>
            public const string ExportCliente = "exportCliente";
            /// <summary>
            /// The response primitive for exportCliente.
            /// </summary>
            ///
            /// <see cref="ExportCliente">the request primitive</see>
            /// <see cref="ExportClienteOutput">the response payload</see>
            public const string ExportClienteResponse = "exportClienteResponse";
            ///<summary>
            /// TBD
            /// <see cref="ImportItemInput">the request payload</see>
            ///</summary>
            public const string ImportItem = "importItem";
            /// <summary>
            /// The response primitive for importItem.
            /// </summary>
            ///
            /// <see cref="ImportItem">the request primitive</see>
            /// <see cref="ImportItemOutput">the response payload</see>
            public const string ImportItemResponse = "importItemResponse";
            ///<summary>
            /// TBD
            /// <see cref="ExportItemInput">the request payload</see>
            ///</summary>
            public const string ExportItem = "exportItem";
            /// <summary>
            /// The response primitive for exportItem.
            /// </summary>
            ///
            /// <see cref="ExportItem">the request primitive</see>
            /// <see cref="ExportItemOutput">the response payload</see>
            public const string ExportItemResponse = "exportItemResponse";
            ///<summary>
            /// TBD
            /// <see cref="ImportPedidoInput">the request payload</see>
            ///</summary>
            public const string ImportPedido = "importPedido";
            /// <summary>
            /// The response primitive for importPedido.
            /// </summary>
            ///
            /// <see cref="ImportPedido">the request primitive</see>
            /// <see cref="ImportPedidoOutput">the response payload</see>
            public const string ImportPedidoResponse = "importPedidoResponse";
            ///<summary>
            /// TBD
            /// <see cref="ExportPedidoInput">the request payload</see>
            ///</summary>
            public const string ExportPedido = "exportPedido";
            /// <summary>
            /// The response primitive for exportPedido.
            /// </summary>
            ///
            /// <see cref="ExportPedido">the request primitive</see>
            /// <see cref="ExportPedidoOutput">the response payload</see>
            public const string ExportPedidoResponse = "exportPedidoResponse";
            ///<summary>
            /// The 'create' request primitive for the Cliente entity.
            /// <see cref="Cliente">the request payload</see>
            ///</summary>
            public const string CreateCliente = "createCliente";
            /// <summary>
            /// The response primitive for createCliente.
            /// </summary>
            ///
            /// <see cref="CreateCliente">the request primitive</see>
            public const string CreateClienteResponse = "createClienteResponse";
            ///<summary>
            /// The 'createBulk' request primitive for the Cliente entity.
            /// <see cref="CreateBulkClienteInput">the request payload</see>
            ///</summary>
            public const string CreateBulkCliente = "createBulkCliente";
            /// <summary>
            /// The response primitive for createBulkCliente.
            /// </summary>
            ///
            /// <see cref="CreateBulkCliente">the request primitive</see>
            /// <see cref="CreateBulkClienteOutput">the response payload</see>
            public const string CreateBulkClienteResponse = "createBulkClienteResponse";
            ///<summary>
            /// The 'createMerge' request primitive for the Cliente entity.
            /// <see cref="Cliente">the request payload</see>
            ///</summary>
            public const string CreateMergeCliente = "createMergeCliente";
            /// <summary>
            /// The response primitive for createMergeCliente.
            /// </summary>
            ///
            /// <see cref="CreateMergeCliente">the request primitive</see>
            public const string CreateMergeClienteResponse = "createMergeClienteResponse";
            ///<summary>
            /// The 'retrieve' request primitive for the Cliente entity.
            /// <see cref="Cliente.Id">the request payload</see>
            ///</summary>
            public const string RetrieveCliente = "retrieveCliente";
            /// <summary>
            /// The response primitive for retrieveCliente.
            /// </summary>
            ///
            /// <see cref="RetrieveCliente">the request primitive</see>
            public const string RetrieveClienteResponse = "retrieveClienteResponse";
            ///<summary>
            /// The 'update' request primitive for the Cliente entity.
            /// <see cref="Cliente">the request payload</see>
            ///</summary>
            public const string UpdateCliente = "updateCliente";
            /// <summary>
            /// The response primitive for updateCliente.
            /// </summary>
            ///
            /// <see cref="UpdateCliente">the request primitive</see>
            public const string UpdateClienteResponse = "updateClienteResponse";
            ///<summary>
            /// The 'updateMerge' request primitive for the Cliente entity.
            /// <see cref="Cliente">the request payload</see>
            ///</summary>
            public const string UpdateMergeCliente = "updateMergeCliente";
            /// <summary>
            /// The response primitive for updateMergeCliente.
            /// </summary>
            ///
            /// <see cref="UpdateMergeCliente">the request primitive</see>
            public const string UpdateMergeClienteResponse = "updateMergeClienteResponse";
            ///<summary>
            /// The 'delete' request primitive for the Cliente entity.
            /// <see cref="Cliente.Id">the request payload</see>
            ///</summary>
            public const string DeleteCliente = "deleteCliente";
            /// <summary>
            /// The response primitive for deleteCliente.
            /// </summary>
            ///
            /// <see cref="DeleteCliente">the request primitive</see>
            public const string DeleteClienteResponse = "deleteClienteResponse";
            ///<summary>
            /// The 'list' request primitive for the Cliente entity.
            /// <see cref="cliente.pageRequest">the request payload</see>
            ///</summary>
            public const string ListCliente = "listCliente";
            /// <summary>
            /// The response primitive for listCliente.
            /// </summary>
            ///
            /// <see cref="ListCliente">the request primitive</see>
            /// <see cref="Cliente.PagedResults">the response payload</see>
            public const string ListClienteResponse = "listClienteResponse";
            ///<summary>
            /// The 'create' request primitive for the Item entity.
            /// <see cref="Item">the request payload</see>
            ///</summary>
            public const string CreateItem = "createItem";
            /// <summary>
            /// The response primitive for createItem.
            /// </summary>
            ///
            /// <see cref="CreateItem">the request primitive</see>
            public const string CreateItemResponse = "createItemResponse";
            ///<summary>
            /// The 'createBulk' request primitive for the Item entity.
            /// <see cref="CreateBulkItemInput">the request payload</see>
            ///</summary>
            public const string CreateBulkItem = "createBulkItem";
            /// <summary>
            /// The response primitive for createBulkItem.
            /// </summary>
            ///
            /// <see cref="CreateBulkItem">the request primitive</see>
            /// <see cref="CreateBulkItemOutput">the response payload</see>
            public const string CreateBulkItemResponse = "createBulkItemResponse";
            ///<summary>
            /// The 'createMerge' request primitive for the Item entity.
            /// <see cref="Item">the request payload</see>
            ///</summary>
            public const string CreateMergeItem = "createMergeItem";
            /// <summary>
            /// The response primitive for createMergeItem.
            /// </summary>
            ///
            /// <see cref="CreateMergeItem">the request primitive</see>
            public const string CreateMergeItemResponse = "createMergeItemResponse";
            ///<summary>
            /// The 'retrieve' request primitive for the Item entity.
            /// <see cref="Item.Id">the request payload</see>
            ///</summary>
            public const string RetrieveItem = "retrieveItem";
            /// <summary>
            /// The response primitive for retrieveItem.
            /// </summary>
            ///
            /// <see cref="RetrieveItem">the request primitive</see>
            public const string RetrieveItemResponse = "retrieveItemResponse";
            ///<summary>
            /// The 'update' request primitive for the Item entity.
            /// <see cref="Item">the request payload</see>
            ///</summary>
            public const string UpdateItem = "updateItem";
            /// <summary>
            /// The response primitive for updateItem.
            /// </summary>
            ///
            /// <see cref="UpdateItem">the request primitive</see>
            public const string UpdateItemResponse = "updateItemResponse";
            ///<summary>
            /// The 'updateMerge' request primitive for the Item entity.
            /// <see cref="Item">the request payload</see>
            ///</summary>
            public const string UpdateMergeItem = "updateMergeItem";
            /// <summary>
            /// The response primitive for updateMergeItem.
            /// </summary>
            ///
            /// <see cref="UpdateMergeItem">the request primitive</see>
            public const string UpdateMergeItemResponse = "updateMergeItemResponse";
            ///<summary>
            /// The 'delete' request primitive for the Item entity.
            /// <see cref="Item.Id">the request payload</see>
            ///</summary>
            public const string DeleteItem = "deleteItem";
            /// <summary>
            /// The response primitive for deleteItem.
            /// </summary>
            ///
            /// <see cref="DeleteItem">the request primitive</see>
            public const string DeleteItemResponse = "deleteItemResponse";
            ///<summary>
            /// The 'list' request primitive for the Item entity.
            /// <see cref="item.pageRequest">the request payload</see>
            ///</summary>
            public const string ListItem = "listItem";
            /// <summary>
            /// The response primitive for listItem.
            /// </summary>
            ///
            /// <see cref="ListItem">the request primitive</see>
            /// <see cref="Item.PagedResults">the response payload</see>
            public const string ListItemResponse = "listItemResponse";
            ///<summary>
            /// The 'create' request primitive for the Pedido entity.
            /// <see cref="Pedido">the request payload</see>
            ///</summary>
            public const string CreatePedido = "createPedido";
            /// <summary>
            /// The response primitive for createPedido.
            /// </summary>
            ///
            /// <see cref="CreatePedido">the request primitive</see>
            public const string CreatePedidoResponse = "createPedidoResponse";
            ///<summary>
            /// The 'createBulk' request primitive for the Pedido entity.
            /// <see cref="CreateBulkPedidoInput">the request payload</see>
            ///</summary>
            public const string CreateBulkPedido = "createBulkPedido";
            /// <summary>
            /// The response primitive for createBulkPedido.
            /// </summary>
            ///
            /// <see cref="CreateBulkPedido">the request primitive</see>
            /// <see cref="CreateBulkPedidoOutput">the response payload</see>
            public const string CreateBulkPedidoResponse = "createBulkPedidoResponse";
            ///<summary>
            /// The 'createMerge' request primitive for the Pedido entity.
            /// <see cref="Pedido">the request payload</see>
            ///</summary>
            public const string CreateMergePedido = "createMergePedido";
            /// <summary>
            /// The response primitive for createMergePedido.
            /// </summary>
            ///
            /// <see cref="CreateMergePedido">the request primitive</see>
            public const string CreateMergePedidoResponse = "createMergePedidoResponse";
            ///<summary>
            /// The 'retrieve' request primitive for the Pedido entity.
            /// <see cref="Pedido.Id">the request payload</see>
            ///</summary>
            public const string RetrievePedido = "retrievePedido";
            /// <summary>
            /// The response primitive for retrievePedido.
            /// </summary>
            ///
            /// <see cref="RetrievePedido">the request primitive</see>
            public const string RetrievePedidoResponse = "retrievePedidoResponse";
            ///<summary>
            /// The 'update' request primitive for the Pedido entity.
            /// <see cref="Pedido">the request payload</see>
            ///</summary>
            public const string UpdatePedido = "updatePedido";
            /// <summary>
            /// The response primitive for updatePedido.
            /// </summary>
            ///
            /// <see cref="UpdatePedido">the request primitive</see>
            public const string UpdatePedidoResponse = "updatePedidoResponse";
            ///<summary>
            /// The 'updateMerge' request primitive for the Pedido entity.
            /// <see cref="Pedido">the request payload</see>
            ///</summary>
            public const string UpdateMergePedido = "updateMergePedido";
            /// <summary>
            /// The response primitive for updateMergePedido.
            /// </summary>
            ///
            /// <see cref="UpdateMergePedido">the request primitive</see>
            public const string UpdateMergePedidoResponse = "updateMergePedidoResponse";
            ///<summary>
            /// The 'delete' request primitive for the Pedido entity.
            /// <see cref="Pedido.Id">the request payload</see>
            ///</summary>
            public const string DeletePedido = "deletePedido";
            /// <summary>
            /// The response primitive for deletePedido.
            /// </summary>
            ///
            /// <see cref="DeletePedido">the request primitive</see>
            public const string DeletePedidoResponse = "deletePedidoResponse";
            ///<summary>
            /// The 'list' request primitive for the Pedido entity.
            /// <see cref="pedido.pageRequest">the request payload</see>
            ///</summary>
            public const string ListPedido = "listPedido";
            /// <summary>
            /// The response primitive for listPedido.
            /// </summary>
            ///
            /// <see cref="ListPedido">the request primitive</see>
            /// <see cref="Pedido.PagedResults">the response payload</see>
            public const string ListPedidoResponse = "listPedidoResponse";
            ///<summary>
            /// Returns a list with all dependencies from this service, along with their respective versions
            ///</summary>
            public const string GetDependencies = "getDependencies";
            /// <summary>
            /// The response primitive for getDependencies.
            /// </summary>
            ///
            /// <see cref="GetDependencies">the request primitive</see>
            /// <see cref="GetDependenciesOutput">the response payload</see>
            public const string GetDependenciesResponse = "getDependenciesResponse";
            
        }
        /// <summary>Primitives for events in the hello_world service.</summary>
        public static class Events
        {
            ///<summary>
            /// Default 'serviceStarted' event.
            ///</summary>
            public const string ServiceStarted = "serviceStarted";
            ///<summary>
            /// Default 'notifyUser' event.
            ///</summary>
            public const string NotifyUserEvent = "notifyUserEvent";
            ///<summary>
            /// TBD
            ///</summary>
            public const string ImportClienteEvent = "importClienteEvent";
            ///<summary>
            /// TBD
            ///</summary>
            public const string ExportClienteEvent = "exportClienteEvent";
            ///<summary>
            /// TBD
            ///</summary>
            public const string ImportItemEvent = "importItemEvent";
            ///<summary>
            /// TBD
            ///</summary>
            public const string ExportItemEvent = "exportItemEvent";
            ///<summary>
            /// TBD
            ///</summary>
            public const string ImportPedidoEvent = "importPedidoEvent";
            ///<summary>
            /// TBD
            ///</summary>
            public const string ExportPedidoEvent = "exportPedidoEvent";
        }
    }
}
