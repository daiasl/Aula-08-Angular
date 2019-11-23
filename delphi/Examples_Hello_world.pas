unit Examples_Hello_world;

(**
 * This is a generated file. DO NOT EDIT ANY CODE HERE, YOUR CHANGES WILL BE LOST.
 *)

{$TYPEINFO ON}

interface

uses
  Classes, SDLTypes, Controls, RtStrUtil, JsonConverter;

const
  cDomain = 'examples';
  cService = 'hello_world';

type

  TCommands = class
  public
    (**
     * @see THelloWorldInput the request payload
     *)
    class function GetHello_World: String;
    (**
     * The response primitive for helloWorld.
     *
     * @see cHello_World the request primitive
     * @see THelloWorldOutput the response payload
     *)
    class function GetHello_World_Response: String;
    (**
     * @see TListaItemManualInput the request payload
     *)
    class function GetLista_Item_Manual: String;
    (**
     * The response primitive for listaItemManual.
     *
     * @see cLista_Item_Manual the request primitive
     * @see TListaItemManualOutput the response payload
     *)
    class function GetLista_Item_Manual_Response: String;
    (**
     * Default 'getMetadata' query. Every service must handle this command and return metadata in the format requested.
     * @see TGetMetadataInput the request payload
     *)
    class function GetGet_Metadata: String;
    (**
     * The response primitive for getMetadata.
     *
     * @see cGet_Metadata the request primitive
     * @see TGetMetadataOutput the response payload
     *)
    class function GetGet_Metadata_Response: String;
    class function GetOdata: String;
    (**
     * The response primitive for odata.
     *
     * @see cOdata the request primitive
     *)
    class function GetOdata_Response: String;
    (**
     * @see TImportClienteInput the request payload
     *)
    class function GetImport_Cliente: String;
    (**
     * The response primitive for importCliente.
     *
     * @see cImport_Cliente the request primitive
     * @see TImportClienteOutput the response payload
     *)
    class function GetImport_Cliente_Response: String;
    (**
     * @see TExportClienteInput the request payload
     *)
    class function GetExport_Cliente: String;
    (**
     * The response primitive for exportCliente.
     *
     * @see cExport_Cliente the request primitive
     * @see TExportClienteOutput the response payload
     *)
    class function GetExport_Cliente_Response: String;
    (**
     * @see TImportItemInput the request payload
     *)
    class function GetImport_Item: String;
    (**
     * The response primitive for importItem.
     *
     * @see cImport_Item the request primitive
     * @see TImportItemOutput the response payload
     *)
    class function GetImport_Item_Response: String;
    (**
     * @see TExportItemInput the request payload
     *)
    class function GetExport_Item: String;
    (**
     * The response primitive for exportItem.
     *
     * @see cExport_Item the request primitive
     * @see TExportItemOutput the response payload
     *)
    class function GetExport_Item_Response: String;
    (**
     * @see TImportPedidoInput the request payload
     *)
    class function GetImport_Pedido: String;
    (**
     * The response primitive for importPedido.
     *
     * @see cImport_Pedido the request primitive
     * @see TImportPedidoOutput the response payload
     *)
    class function GetImport_Pedido_Response: String;
    (**
     * @see TExportPedidoInput the request payload
     *)
    class function GetExport_Pedido: String;
    (**
     * The response primitive for exportPedido.
     *
     * @see cExport_Pedido the request primitive
     * @see TExportPedidoOutput the response payload
     *)
    class function GetExport_Pedido_Response: String;
    (**
     * The 'create' request primitive for the Cliente entity.
     *)
    class function GetCreate_Cliente: String;
    (**
     * The response primitive for createCliente.
     *
     * @see cCreate_Cliente the request primitive
     *)
    class function GetCreate_Cliente_Response: String;
    (**
     * The 'createBulk' request primitive for the Cliente entity.
     * @see TCreateBulkClienteInput the request payload
     *)
    class function GetCreate_Bulk_Cliente: String;
    (**
     * The response primitive for createBulkCliente.
     *
     * @see cCreate_Bulk_Cliente the request primitive
     * @see TCreateBulkClienteOutput the response payload
     *)
    class function GetCreate_Bulk_Cliente_Response: String;
    (**
     * The 'createMerge' request primitive for the Cliente entity.
     *)
    class function GetCreate_Merge_Cliente: String;
    (**
     * The response primitive for createMergeCliente.
     *
     * @see cCreate_Merge_Cliente the request primitive
     *)
    class function GetCreate_Merge_Cliente_Response: String;
    (**
     * The 'retrieve' request primitive for the Cliente entity.
     *)
    class function GetRetrieve_Cliente: String;
    (**
     * The response primitive for retrieveCliente.
     *
     * @see cRetrieve_Cliente the request primitive
     *)
    class function GetRetrieve_Cliente_Response: String;
    (**
     * The 'update' request primitive for the Cliente entity.
     *)
    class function GetUpdate_Cliente: String;
    (**
     * The response primitive for updateCliente.
     *
     * @see cUpdate_Cliente the request primitive
     *)
    class function GetUpdate_Cliente_Response: String;
    (**
     * The 'updateMerge' request primitive for the Cliente entity.
     *)
    class function GetUpdate_Merge_Cliente: String;
    (**
     * The response primitive for updateMergeCliente.
     *
     * @see cUpdate_Merge_Cliente the request primitive
     *)
    class function GetUpdate_Merge_Cliente_Response: String;
    (**
     * The 'delete' request primitive for the Cliente entity.
     *)
    class function GetDelete_Cliente: String;
    (**
     * The response primitive for deleteCliente.
     *
     * @see cDelete_Cliente the request primitive
     *)
    class function GetDelete_Cliente_Response: String;
    (**
     * The 'list' request primitive for the Cliente entity.
     * @see TclientePageRequest the request payload
     *)
    class function GetList_Cliente: String;
    (**
     * The response primitive for listCliente.
     *
     * @see cList_Cliente the request primitive
     * @see TclientePagedResults the response payload
     *)
    class function GetList_Cliente_Response: String;
    (**
     * The 'create' request primitive for the Item entity.
     *)
    class function GetCreate_Item: String;
    (**
     * The response primitive for createItem.
     *
     * @see cCreate_Item the request primitive
     *)
    class function GetCreate_Item_Response: String;
    (**
     * The 'createBulk' request primitive for the Item entity.
     * @see TCreateBulkItemInput the request payload
     *)
    class function GetCreate_Bulk_Item: String;
    (**
     * The response primitive for createBulkItem.
     *
     * @see cCreate_Bulk_Item the request primitive
     * @see TCreateBulkItemOutput the response payload
     *)
    class function GetCreate_Bulk_Item_Response: String;
    (**
     * The 'createMerge' request primitive for the Item entity.
     *)
    class function GetCreate_Merge_Item: String;
    (**
     * The response primitive for createMergeItem.
     *
     * @see cCreate_Merge_Item the request primitive
     *)
    class function GetCreate_Merge_Item_Response: String;
    (**
     * The 'retrieve' request primitive for the Item entity.
     *)
    class function GetRetrieve_Item: String;
    (**
     * The response primitive for retrieveItem.
     *
     * @see cRetrieve_Item the request primitive
     *)
    class function GetRetrieve_Item_Response: String;
    (**
     * The 'update' request primitive for the Item entity.
     *)
    class function GetUpdate_Item: String;
    (**
     * The response primitive for updateItem.
     *
     * @see cUpdate_Item the request primitive
     *)
    class function GetUpdate_Item_Response: String;
    (**
     * The 'updateMerge' request primitive for the Item entity.
     *)
    class function GetUpdate_Merge_Item: String;
    (**
     * The response primitive for updateMergeItem.
     *
     * @see cUpdate_Merge_Item the request primitive
     *)
    class function GetUpdate_Merge_Item_Response: String;
    (**
     * The 'delete' request primitive for the Item entity.
     *)
    class function GetDelete_Item: String;
    (**
     * The response primitive for deleteItem.
     *
     * @see cDelete_Item the request primitive
     *)
    class function GetDelete_Item_Response: String;
    (**
     * The 'list' request primitive for the Item entity.
     * @see TitemPageRequest the request payload
     *)
    class function GetList_Item: String;
    (**
     * The response primitive for listItem.
     *
     * @see cList_Item the request primitive
     * @see TitemPagedResults the response payload
     *)
    class function GetList_Item_Response: String;
    (**
     * The 'create' request primitive for the Pedido entity.
     *)
    class function GetCreate_Pedido: String;
    (**
     * The response primitive for createPedido.
     *
     * @see cCreate_Pedido the request primitive
     *)
    class function GetCreate_Pedido_Response: String;
    (**
     * The 'createBulk' request primitive for the Pedido entity.
     * @see TCreateBulkPedidoInput the request payload
     *)
    class function GetCreate_Bulk_Pedido: String;
    (**
     * The response primitive for createBulkPedido.
     *
     * @see cCreate_Bulk_Pedido the request primitive
     * @see TCreateBulkPedidoOutput the response payload
     *)
    class function GetCreate_Bulk_Pedido_Response: String;
    (**
     * The 'createMerge' request primitive for the Pedido entity.
     *)
    class function GetCreate_Merge_Pedido: String;
    (**
     * The response primitive for createMergePedido.
     *
     * @see cCreate_Merge_Pedido the request primitive
     *)
    class function GetCreate_Merge_Pedido_Response: String;
    (**
     * The 'retrieve' request primitive for the Pedido entity.
     *)
    class function GetRetrieve_Pedido: String;
    (**
     * The response primitive for retrievePedido.
     *
     * @see cRetrieve_Pedido the request primitive
     *)
    class function GetRetrieve_Pedido_Response: String;
    (**
     * The 'update' request primitive for the Pedido entity.
     *)
    class function GetUpdate_Pedido: String;
    (**
     * The response primitive for updatePedido.
     *
     * @see cUpdate_Pedido the request primitive
     *)
    class function GetUpdate_Pedido_Response: String;
    (**
     * The 'updateMerge' request primitive for the Pedido entity.
     *)
    class function GetUpdate_Merge_Pedido: String;
    (**
     * The response primitive for updateMergePedido.
     *
     * @see cUpdate_Merge_Pedido the request primitive
     *)
    class function GetUpdate_Merge_Pedido_Response: String;
    (**
     * The 'delete' request primitive for the Pedido entity.
     *)
    class function GetDelete_Pedido: String;
    (**
     * The response primitive for deletePedido.
     *
     * @see cDelete_Pedido the request primitive
     *)
    class function GetDelete_Pedido_Response: String;
    (**
     * The 'list' request primitive for the Pedido entity.
     * @see TpedidoPageRequest the request payload
     *)
    class function GetList_Pedido: String;
    (**
     * The response primitive for listPedido.
     *
     * @see cList_Pedido the request primitive
     * @see TpedidoPagedResults the response payload
     *)
    class function GetList_Pedido_Response: String;
    (**
     * Returns a list with all dependencies from this service, along with their respective versions
     *)
    class function GetGet_Dependencies: String;
    (**
     * The response primitive for getDependencies.
     *
     * @see cGet_Dependencies the request primitive
     * @see TGetDependenciesOutput the response payload
     *)
    class function GetGet_Dependencies_Response: String;
  end;

  TEvents = class
  public
    (**
     * Default 'serviceStarted' event.
     *)
    class function GetService_Started: String;
    (**
     * Default 'notifyUser' event.
     *)
    class function GetNotify_User_Event: String;
    class function GetImport_Cliente_Event: String;
    class function GetExport_Cliente_Event: String;
    class function GetImport_Item_Event: String;
    class function GetExport_Item_Event: String;
    class function GetImport_Pedido_Event: String;
    class function GetExport_Pedido_Event: String;
  end;

  (**
   * User notification kind.
   *)
  TUserNotificationKind = (unkOperational, unkManagement, unkNews);
  (**
   * User notification priority.
   *)
  TUserNotificationPriority = (unpError, unpAlert, unpNone);
  (**
   * Format of the email
   *)
  TEventEmailFormat = (eefHTML, eefPLAIN_TEXT);
  TFieldType = (ftBINARY, ftBOOLEAN, ftDATE, ftDATETIME, ftDOUBLE, ftENUM, ftINTEGER, ftMONEY, ftSTRING, ftTIME);
  TFileFormat = (ffCSV, ffFLAT, ffJSON, ffXML);
  THookFunction = (hfBEFORE_PARSE, hfBEFORE_CONVERSION, hfON_ERROR, hfVALIDATE);
  TEventType = (etCHUNK, etDOWNLOAD, etERROR, etFINISH, etSTART);
  TErrorStrategy = (esCALL_SCRIPT, esIGNORE, esSTOP);
  TStatus = (sDONE, sDONE_WITH_ERRORS, sDOWNLOADING, sERROR, sNOT_STARTED, sRUNNING);
  TErrorType = (etCONVERT_ERROR, etSERVICE_ERROR);
  
const
  cUserNotificationKindNames: array [TUserNotificationKind] of String = ('Operational', 'Management', 'News');
  cUserNotificationPriorityNames: array [TUserNotificationPriority] of String = ('Error', 'Alert', 'None');
  cEventEmailFormatNames: array [TEventEmailFormat] of String = ('HTML', 'PLAIN_TEXT');
  cFieldTypeNames: array [TFieldType] of String = ('BINARY', 'BOOLEAN', 'DATE', 'DATETIME', 'DOUBLE', 'ENUM', 'INTEGER', 'MONEY', 'STRING', 'TIME');
  cFileFormatNames: array [TFileFormat] of String = ('CSV', 'FLAT', 'JSON', 'XML');
  cHookFunctionNames: array [THookFunction] of String = ('BEFORE_PARSE', 'BEFORE_CONVERSION', 'ON_ERROR', 'VALIDATE');
  cEventTypeNames: array [TEventType] of String = ('CHUNK', 'DOWNLOAD', 'ERROR', 'FINISH', 'START');
  cErrorStrategyNames: array [TErrorStrategy] of String = ('CALL_SCRIPT', 'IGNORE', 'STOP');
  cStatusNames: array [TStatus] of String = ('DONE', 'DONE_WITH_ERRORS', 'DOWNLOADING', 'ERROR', 'NOT_STARTED', 'RUNNING');
  cErrorTypeNames: array [TErrorType] of String = ('CONVERT_ERROR', 'SERVICE_ERROR');

type
  TCliente = class;
  TItem = class;
  TPedido = class;
  TNotifyUserEventPayload = class;
  TEmailNotifyUserEventPayload = class;
  TPushNotifyUserEventPayload = class;
  TBlobReference = class;
  TBasicErrorPayload = class;
  TImportError = class;
  TFielddto = class;
  THookdto = class;
  TLayoutdto = class;
  TImportReport = class;
  TExportEventStatus = class;
  TImportEventStatus = class;
  TExportConfig = class;
  TImportConfig = class;
  TDependency = class;
  THelloWorldInput = class;
  THelloWorldOutput = class;
  TListaItemManualInput = class;
  TListaItemManualOutput = class;
  TGetMetadataInput = class;
  TGetMetadataOutput = class;
  TImportClienteInput = class;
  TImportClienteOutput = class;
  TExportClienteInput = class;
  TExportClienteOutput = class;
  TImportItemInput = class;
  TImportItemOutput = class;
  TExportItemInput = class;
  TExportItemOutput = class;
  TImportPedidoInput = class;
  TImportPedidoOutput = class;
  TExportPedidoInput = class;
  TExportPedidoOutput = class;
  TCreateBulkClienteInput = class;
  TCreateBulkClienteOutput = class;
  TCreateBulkItemInput = class;
  TCreateBulkItemOutput = class;
  TCreateBulkPedidoInput = class;
  TCreateBulkPedidoOutput = class;
  TGetDependenciesOutput = class;
  TServiceStartedPayload = class;
  TImportClienteEventPayload = class;
  TExportClienteEventPayload = class;
  TImportItemEventPayload = class;
  TExportItemEventPayload = class;
  TImportPedidoEventPayload = class;
  TExportPedidoEventPayload = class;
  
  (**
   * Entidade que representa o cliente
   *)
  TCliente = class(TNullPrimitivesHandler)
  private
    FNullNome: Boolean;
    FNullCreditoHabilitado: Boolean;
    FNullCpf: Boolean;
    FNullIdFoto: Boolean;
    FId: TPersistent;
    FNome: String;
    FDataNascimento: TSDLDate;
    FCreditoHabilitado: Boolean;
    FCpf: String;
    FIdFoto: String;
    procedure SetNome(aValue: String);
    procedure SetCreditoHabilitado(aValue: Boolean);
    procedure SetCpf(aValue: String);
    procedure SetIdFoto(aValue: String);
  public
    procedure AfterConstruction; override;
    procedure BeforeDestruction; override;
    function GetContext: String; override;
    function IsNullProperty(aPropertyName: String): Boolean; override;
    procedure Validate; overload;
    procedure Validate(aValidated: TList); overload;
    property NomeIsNull: Boolean read FNullNome write FNullNome;
    property CreditoHabilitadoIsNull: Boolean read FNullCreditoHabilitado write FNullCreditoHabilitado;
    property CpfIsNull: Boolean read FNullCpf write FNullCpf;
    property IdFotoIsNull: Boolean read FNullIdFoto write FNullIdFoto;
  published
    (**
     * Chave primaria
     *)
    property Id: TPersistent read FId write FId;
    (**
     * Nome do cliente
     *)
    property Nome: String read FNome write SetNome;
    (**
     * Data de nascimento
     *)
    property DataNascimento: TSDLDate read FDataNascimento write FDataNascimento;
    (**
     * Tem credito habilitado
     *)
    property CreditoHabilitado: Boolean read FCreditoHabilitado write SetCreditoHabilitado;
    (**
     * CPF do cliente
     *)
    property Cpf: String read FCpf write SetCpf;
    (**
     * id da foto
     *)
    property IdFoto: String read FIdFoto write SetIdFoto;
  end;
  
  TClienteId = class(TPersistent)
  private
    FId: String;
  public
    property Id: String read FId write FId;
  end;
  
  TClientePageRequest = class(TPersistent)
  private
    FOffset: LongInt;
    FSize: Integer;
  public
    property Offset: LongInt read FOffset write FOffset;
    property Size: Integer read FSize write FSize;
  end;
  
  TClientePagedResults = class(TPersistent)
  private
    FContents: TList;
  public
    property Contents: TList read FContents write FContents;
  end;  
  
  (**
   * Item do pedido
   *)
  TItem = class(TNullPrimitivesHandler)
  private
    FNullDescricao: Boolean;
    FNullQuantidade: Boolean;
    FNullValorUnitario: Boolean;
    FId: TPersistent;
    FDescricao: String;
    FQuantidade: Double;
    FValorUnitario: Double;
    procedure SetDescricao(aValue: String);
    procedure SetQuantidade(aValue: Double);
    procedure SetValorUnitario(aValue: Double);
  public
    procedure AfterConstruction; override;
    procedure BeforeDestruction; override;
    function GetContext: String; override;
    function IsNullProperty(aPropertyName: String): Boolean; override;
    procedure Validate; overload;
    procedure Validate(aValidated: TList); overload;
    property DescricaoIsNull: Boolean read FNullDescricao write FNullDescricao;
    property QuantidadeIsNull: Boolean read FNullQuantidade write FNullQuantidade;
    property ValorUnitarioIsNull: Boolean read FNullValorUnitario write FNullValorUnitario;
  published
    (**
     * Chave primária
     *)
    property Id: TPersistent read FId write FId;
    (**
     * descrição
     *)
    property Descricao: String read FDescricao write SetDescricao;
    (**
     * quantidade
     *)
    property Quantidade: Double read FQuantidade write SetQuantidade;
    (**
     * valor unitário
     *)
    property ValorUnitario: Double read FValorUnitario write SetValorUnitario;
  end;
  
  TItemId = class(TPersistent)
  private
    FId: String;
  public
    property Id: String read FId write FId;
  end;
  
  TItemPageRequest = class(TPersistent)
  private
    FOffset: LongInt;
    FSize: Integer;
  public
    property Offset: LongInt read FOffset write FOffset;
    property Size: Integer read FSize write FSize;
  end;
  
  TItemPagedResults = class(TPersistent)
  private
    FContents: TList;
  public
    property Contents: TList read FContents write FContents;
  end;  
  
  (**
   * Pedido
   *)
  TPedido = class(TNullPrimitivesHandler)
  private
    FNullObservacoes: Boolean;
    FId: TPersistent;
    FData: TSDLDate;
    FObservacoes: String;
    FCliente: TCliente;
    FItens: TSDLObjectList;
    procedure SetObservacoes(aValue: String);
  public
    procedure AfterConstruction; override;
    procedure BeforeDestruction; override;
    function GetContext: String; override;
    function IsNullProperty(aPropertyName: String): Boolean; override;
    procedure Validate; overload;
    procedure Validate(aValidated: TList); overload;
    procedure AddItens(aItem: TItem);
    function GetItens(aIndex: Integer): TItem;
    property ObservacoesIsNull: Boolean read FNullObservacoes write FNullObservacoes;
  published
    (**
     * Chave primaria
     *)
    property Id: TPersistent read FId write FId;
    (**
     * Data do pedido
     *)
    property Data: TSDLDate read FData write FData;
    (**
     * Observações do pedido
     *)
    property Observacoes: String read FObservacoes write SetObservacoes;
    (**
     * Cliente do pedido
     *)
    property Cliente: TCliente read FCliente write FCliente;
    (**
     * Itens do pedido
     *)
    property Itens: TSDLObjectList read FItens;
  end;
  
  TPedidoId = class(TPersistent)
  private
    FId: String;
  public
    property Id: String read FId write FId;
  end;
  
  TPedidoPageRequest = class(TPersistent)
  private
    FOffset: LongInt;
    FSize: Integer;
  public
    property Offset: LongInt read FOffset write FOffset;
    property Size: Integer read FSize write FSize;
  end;
  
  TPedidoPagedResults = class(TPersistent)
  private
    FContents: TList;
  public
    property Contents: TList read FContents write FContents;
  end;  
  
  (**
   * Represents a regular user event notification payload
   *)
  TNotifyUserEventPayload = class(TNullPrimitivesHandler)
  private
    FNullNotificationClass: Boolean;
    FNullNotificationOrigin: Boolean;
    FNullNotificationKind: Boolean;
    FNullNotificationPriority: Boolean;
    FNullNotificationSubject: Boolean;
    FNullNotificationContent: Boolean;
    FNullSourceDomain: Boolean;
    FNullSourceService: Boolean;
    FNullDestinationUser: Boolean;
    FNullLink: Boolean;
    FNotificationClass: String;
    FNotificationOrigin: String;
    FNotificationKind: TUserNotificationKind;
    FNotificationPriority: TUserNotificationPriority;
    FNotificationSubject: String;
    FNotificationContent: String;
    FSourceDomain: String;
    FSourceService: String;
    FDestinationUser: String;
    FLink: String;
    procedure SetNotificationClass(aValue: String);
    procedure SetNotificationOrigin(aValue: String);
    procedure SetNotificationKind(aValue: TUserNotificationKind);
    procedure SetNotificationPriority(aValue: TUserNotificationPriority);
    procedure SetNotificationSubject(aValue: String);
    procedure SetNotificationContent(aValue: String);
    procedure SetSourceDomain(aValue: String);
    procedure SetSourceService(aValue: String);
    procedure SetDestinationUser(aValue: String);
    procedure SetLink(aValue: String);
  public
    procedure AfterConstruction; override;
    procedure BeforeDestruction; override;
    function GetContext: String; override;
    function IsNullProperty(aPropertyName: String): Boolean; override;
    procedure Validate; overload;
    procedure Validate(aValidated: TList); overload;
    property NotificationClassIsNull: Boolean read FNullNotificationClass write FNullNotificationClass;
    property NotificationOriginIsNull: Boolean read FNullNotificationOrigin write FNullNotificationOrigin;
    property NotificationKindIsNull: Boolean read FNullNotificationKind write FNullNotificationKind;
    property NotificationPriorityIsNull: Boolean read FNullNotificationPriority write FNullNotificationPriority;
    property NotificationSubjectIsNull: Boolean read FNullNotificationSubject write FNullNotificationSubject;
    property NotificationContentIsNull: Boolean read FNullNotificationContent write FNullNotificationContent;
    property SourceDomainIsNull: Boolean read FNullSourceDomain write FNullSourceDomain;
    property SourceServiceIsNull: Boolean read FNullSourceService write FNullSourceService;
    property DestinationUserIsNull: Boolean read FNullDestinationUser write FNullDestinationUser;
    property LinkIsNull: Boolean read FNullLink write FNullLink;
  published
    (**
     * Class of notification
     *)
    property NotificationClass: String read FNotificationClass write SetNotificationClass;
    (**
     * Origin of notification. Free text. Optional.
     *)
    property NotificationOrigin: String read FNotificationOrigin write SetNotificationOrigin;
    (**
     * Notification kind.
     *)
    property NotificationKind: TUserNotificationKind read FNotificationKind write SetNotificationKind;
    (**
     * Notification priority.
     *)
    property NotificationPriority: TUserNotificationPriority read FNotificationPriority write SetNotificationPriority;
    (**
     * Notification subject.
     *)
    property NotificationSubject: String read FNotificationSubject write SetNotificationSubject;
    (**
     * Notification content.
     *)
    property NotificationContent: String read FNotificationContent write SetNotificationContent;
    (**
     * Domain that generates the notification.
     *)
    property SourceDomain: String read FSourceDomain write SetSourceDomain;
    (**
     * Service that generates the notification.
     *)
    property SourceService: String read FSourceService write SetSourceService;
    (**
     * Username of the destination user.
     *)
    property DestinationUser: String read FDestinationUser write SetDestinationUser;
    (**
     * Notification link
     *)
    property Link: String read FLink write SetLink;
  end;
  
  (**
   * Represents an email notification payload
   *)
  TEmailNotifyUserEventPayload = class(TNotifyUserEventPayload)
  private
    FNullFrom: Boolean;
    FNullFormat: Boolean;
    FFrom: String;
    FSendTo: TSDLStringList;
    FFormat: TEventEmailFormat;
    procedure SetFrom(aValue: String);
    procedure SetFormat(aValue: TEventEmailFormat);
  public
    procedure AfterConstruction; override;
    procedure BeforeDestruction; override;
    function GetContext: String; override;
    function IsNullProperty(aPropertyName: String): Boolean; override;
    procedure Validate; overload;
    procedure Validate(aValidated: TList); overload;
    procedure AddSendTo(aItem: String);
    function GetSendTo(aIndex: Integer): String;
    property FromIsNull: Boolean read FNullFrom write FNullFrom;
    property FormatIsNull: Boolean read FNullFormat write FNullFormat;
  published
    (**
     * Email sender address
     *)
    property From: String read FFrom write SetFrom;
    (**
     * Additional recipients to send the email to
     *)
    property SendTo: TSDLStringList read FSendTo;
    (**
     * Email format
     *)
    property Format: TEventEmailFormat read FFormat write SetFormat;
  end;
  
  (**
   * Represents a push notification payload
   *)
  TPushNotifyUserEventPayload = class(TNotifyUserEventPayload)
  private
    FNullApplicationId: Boolean;
    FApplicationId: String;
    procedure SetApplicationId(aValue: String);
  public
    procedure AfterConstruction; override;
    procedure BeforeDestruction; override;
    function GetContext: String; override;
    function IsNullProperty(aPropertyName: String): Boolean; override;
    procedure Validate; overload;
    procedure Validate(aValidated: TList); overload;
    property ApplicationIdIsNull: Boolean read FNullApplicationId write FNullApplicationId;
  published
    (**
     * Apple/Google application id
     *)
    property ApplicationId: String read FApplicationId write SetApplicationId;
  end;
  
  (**
   * Default blob reference type. Every service defines its own.
   *)
  TBlobReference = class(TNullPrimitivesHandler)
  private
    FNullDomainName: Boolean;
    FNullServiceName: Boolean;
    FNullTargetObjectId: Boolean;
    FNullTargetCopyId: Boolean;
    FDomainName: String;
    FServiceName: String;
    FTargetObjectId: String;
    FTargetCopyId: String;
    procedure SetDomainName(aValue: String);
    procedure SetServiceName(aValue: String);
    procedure SetTargetObjectId(aValue: String);
    procedure SetTargetCopyId(aValue: String);
  public
    procedure AfterConstruction; override;
    procedure BeforeDestruction; override;
    function GetContext: String; override;
    function IsNullProperty(aPropertyName: String): Boolean; override;
    procedure Validate; overload;
    procedure Validate(aValidated: TList); overload;
    property DomainNameIsNull: Boolean read FNullDomainName write FNullDomainName;
    property ServiceNameIsNull: Boolean read FNullServiceName write FNullServiceName;
    property TargetObjectIdIsNull: Boolean read FNullTargetObjectId write FNullTargetObjectId;
    property TargetCopyIdIsNull: Boolean read FNullTargetCopyId write FNullTargetCopyId;
  published
    (**
     * The domain the blob belongs to.
     *)
    property DomainName: String read FDomainName write SetDomainName;
    (**
     * The service the blob belongs to.
     *)
    property ServiceName: String read FServiceName write SetServiceName;
    (**
     * The basic id of the blob.
     *)
    property TargetObjectId: String read FTargetObjectId write SetTargetObjectId;
    (**
     * The id of the blob copy.
     *)
    property TargetCopyId: String read FTargetCopyId write SetTargetCopyId;
  end;
  
  (**
   * Default error payload type. Every service defines its own.
   *)
  TBasicErrorPayload = class(TNullPrimitivesHandler)
  private
    FNullMessage: Boolean;
    FNullErrorCode: Boolean;
    FMessage: String;
    FErrorCode: String;
    procedure SetMessage(aValue: String);
    procedure SetErrorCode(aValue: String);
  public
    procedure AfterConstruction; override;
    procedure BeforeDestruction; override;
    function GetContext: String; override;
    function IsNullProperty(aPropertyName: String): Boolean; override;
    procedure Validate; overload;
    procedure Validate(aValidated: TList); overload;
    property MessageIsNull: Boolean read FNullMessage write FNullMessage;
    property ErrorCodeIsNull: Boolean read FNullErrorCode write FNullErrorCode;
  published
    (**
     * The user-facing error message, if any.
     *)
    property Message: String read FMessage write SetMessage;
    (**
     * The program-accessible (and service-specific) error code.
     *)
    property ErrorCode: String read FErrorCode write SetErrorCode;
  end;
  
  TImportError = class(TNullPrimitivesHandler)
  private
    FNullErrorType: Boolean;
    FNullLineNumber: Boolean;
    FNullBean: Boolean;
    FNullMessage: Boolean;
    FNullExceptionClass: Boolean;
    FErrorType: TErrorType;
    FLineNumber: Int64;
    FBean: String;
    FMessage: String;
    FExceptionClass: String;
    procedure SetErrorType(aValue: TErrorType);
    procedure SetLineNumber(aValue: Int64);
    procedure SetBean(aValue: String);
    procedure SetMessage(aValue: String);
    procedure SetExceptionClass(aValue: String);
  public
    procedure AfterConstruction; override;
    procedure BeforeDestruction; override;
    function GetContext: String; override;
    function IsNullProperty(aPropertyName: String): Boolean; override;
    procedure Validate; overload;
    procedure Validate(aValidated: TList); overload;
    property ErrorTypeIsNull: Boolean read FNullErrorType write FNullErrorType;
    property LineNumberIsNull: Boolean read FNullLineNumber write FNullLineNumber;
    property BeanIsNull: Boolean read FNullBean write FNullBean;
    property MessageIsNull: Boolean read FNullMessage write FNullMessage;
    property ExceptionClassIsNull: Boolean read FNullExceptionClass write FNullExceptionClass;
  published
    property ErrorType: TErrorType read FErrorType write SetErrorType;
    property LineNumber: Int64 read FLineNumber write SetLineNumber;
    property Bean: String read FBean write SetBean;
    property Message: String read FMessage write SetMessage;
    property ExceptionClass: String read FExceptionClass write SetExceptionClass;
  end;
  
  TFielddto = class(TNullPrimitivesHandler)
  private
    FNullId: Boolean;
    FNullName: Boolean;
    FNullFieldType: Boolean;
    FNullStart: Boolean;
    FNullSize: Boolean;
    FNullMaskPattern: Boolean;
    FId: Int64;
    FName: String;
    FFieldType: TFieldType;
    FStart: Int64;
    FSize: Int64;
    FMaskPattern: String;
    procedure SetId(aValue: Int64);
    procedure SetName(aValue: String);
    procedure SetFieldType(aValue: TFieldType);
    procedure SetStart(aValue: Int64);
    procedure SetSize(aValue: Int64);
    procedure SetMaskPattern(aValue: String);
  public
    procedure AfterConstruction; override;
    procedure BeforeDestruction; override;
    function GetContext: String; override;
    function IsNullProperty(aPropertyName: String): Boolean; override;
    procedure Validate; overload;
    procedure Validate(aValidated: TList); overload;
    property IdIsNull: Boolean read FNullId write FNullId;
    property NameIsNull: Boolean read FNullName write FNullName;
    property FieldTypeIsNull: Boolean read FNullFieldType write FNullFieldType;
    property StartIsNull: Boolean read FNullStart write FNullStart;
    property SizeIsNull: Boolean read FNullSize write FNullSize;
    property MaskPatternIsNull: Boolean read FNullMaskPattern write FNullMaskPattern;
  published
    property Id: Int64 read FId write SetId;
    property Name: String read FName write SetName;
    property FieldType: TFieldType read FFieldType write SetFieldType;
    property Start: Int64 read FStart write SetStart;
    property Size: Int64 read FSize write SetSize;
    property MaskPattern: String read FMaskPattern write SetMaskPattern;
  end;
  
  THookdto = class(TNullPrimitivesHandler)
  private
    FNullHookFunction: Boolean;
    FNullScript: Boolean;
    FHookFunction: THookFunction;
    FScript: String;
    procedure SetHookFunction(aValue: THookFunction);
    procedure SetScript(aValue: String);
  public
    procedure AfterConstruction; override;
    procedure BeforeDestruction; override;
    function GetContext: String; override;
    function IsNullProperty(aPropertyName: String): Boolean; override;
    procedure Validate; overload;
    procedure Validate(aValidated: TList); overload;
    property HookFunctionIsNull: Boolean read FNullHookFunction write FNullHookFunction;
    property ScriptIsNull: Boolean read FNullScript write FNullScript;
  published
    property HookFunction: THookFunction read FHookFunction write SetHookFunction;
    property Script: String read FScript write SetScript;
  end;
  
  TLayoutdto = class(TNullPrimitivesHandler)
  private
    FNullId: Boolean;
    FNullDescription: Boolean;
    FNullFileFormat: Boolean;
    FNullErrorStrategy: Boolean;
    FNullDelimiter: Boolean;
    FNullSkipLines: Boolean;
    FId: Int64;
    FDescription: String;
    FFileFormat: TFileFormat;
    FErrorStrategy: TErrorStrategy;
    FDelimiter: String;
    FSkipLines: Int64;
    FFields: TSDLObjectList;
    FHooks: TSDLObjectList;
    procedure SetId(aValue: Int64);
    procedure SetDescription(aValue: String);
    procedure SetFileFormat(aValue: TFileFormat);
    procedure SetErrorStrategy(aValue: TErrorStrategy);
    procedure SetDelimiter(aValue: String);
    procedure SetSkipLines(aValue: Int64);
  public
    procedure AfterConstruction; override;
    procedure BeforeDestruction; override;
    function GetContext: String; override;
    function IsNullProperty(aPropertyName: String): Boolean; override;
    procedure Validate; overload;
    procedure Validate(aValidated: TList); overload;
    procedure AddFields(aItem: TFielddto);
    function GetFields(aIndex: Integer): TFielddto;
    procedure AddHooks(aItem: THookdto);
    function GetHooks(aIndex: Integer): THookdto;
    property IdIsNull: Boolean read FNullId write FNullId;
    property DescriptionIsNull: Boolean read FNullDescription write FNullDescription;
    property FileFormatIsNull: Boolean read FNullFileFormat write FNullFileFormat;
    property ErrorStrategyIsNull: Boolean read FNullErrorStrategy write FNullErrorStrategy;
    property DelimiterIsNull: Boolean read FNullDelimiter write FNullDelimiter;
    property SkipLinesIsNull: Boolean read FNullSkipLines write FNullSkipLines;
  published
    property Id: Int64 read FId write SetId;
    property Description: String read FDescription write SetDescription;
    property FileFormat: TFileFormat read FFileFormat write SetFileFormat;
    property ErrorStrategy: TErrorStrategy read FErrorStrategy write SetErrorStrategy;
    property Delimiter: String read FDelimiter write SetDelimiter;
    property SkipLines: Int64 read FSkipLines write SetSkipLines;
    property Fields: TSDLObjectList read FFields;
    property Hooks: TSDLObjectList read FHooks;
  end;
  
  TImportReport = class(TNullPrimitivesHandler)
  private
    FNullId: Boolean;
    FNullUri: Boolean;
    FNullBeanClass: Boolean;
    FNullServiceClass: Boolean;
    FNullSucessCount: Boolean;
    FNullErrorsCount: Boolean;
    FNullFilteredCount: Boolean;
    FNullSkippedCount: Boolean;
    FId: String;
    FStartTime: TSDLDateTime;
    FEndTime: TSDLDateTime;
    FUri: String;
    FBeanClass: String;
    FServiceClass: String;
    FLayout: TLayoutdto;
    FSucessCount: Int64;
    FErrorsCount: Int64;
    FFilteredCount: Int64;
    FSkippedCount: Int64;
    FImportErrors: TSDLObjectList;
    procedure SetId(aValue: String);
    procedure SetUri(aValue: String);
    procedure SetBeanClass(aValue: String);
    procedure SetServiceClass(aValue: String);
    procedure SetSucessCount(aValue: Int64);
    procedure SetErrorsCount(aValue: Int64);
    procedure SetFilteredCount(aValue: Int64);
    procedure SetSkippedCount(aValue: Int64);
  public
    procedure AfterConstruction; override;
    procedure BeforeDestruction; override;
    function GetContext: String; override;
    function IsNullProperty(aPropertyName: String): Boolean; override;
    procedure Validate; overload;
    procedure Validate(aValidated: TList); overload;
    procedure AddImportErrors(aItem: TImportError);
    function GetImportErrors(aIndex: Integer): TImportError;
    property IdIsNull: Boolean read FNullId write FNullId;
    property UriIsNull: Boolean read FNullUri write FNullUri;
    property BeanClassIsNull: Boolean read FNullBeanClass write FNullBeanClass;
    property ServiceClassIsNull: Boolean read FNullServiceClass write FNullServiceClass;
    property SucessCountIsNull: Boolean read FNullSucessCount write FNullSucessCount;
    property ErrorsCountIsNull: Boolean read FNullErrorsCount write FNullErrorsCount;
    property FilteredCountIsNull: Boolean read FNullFilteredCount write FNullFilteredCount;
    property SkippedCountIsNull: Boolean read FNullSkippedCount write FNullSkippedCount;
  published
    property Id: String read FId write SetId;
    property StartTime: TSDLDateTime read FStartTime write FStartTime;
    property EndTime: TSDLDateTime read FEndTime write FEndTime;
    property Uri: String read FUri write SetUri;
    property BeanClass: String read FBeanClass write SetBeanClass;
    property ServiceClass: String read FServiceClass write SetServiceClass;
    property Layout: TLayoutdto read FLayout write FLayout;
    property SucessCount: Int64 read FSucessCount write SetSucessCount;
    property ErrorsCount: Int64 read FErrorsCount write SetErrorsCount;
    property FilteredCount: Int64 read FFilteredCount write SetFilteredCount;
    property SkippedCount: Int64 read FSkippedCount write SetSkippedCount;
    property ImportErrors: TSDLObjectList read FImportErrors;
  end;
  
  TExportEventStatus = class(TNullPrimitivesHandler)
  private
    FNullImporterId: Boolean;
    FNullEventType: Boolean;
    FNullRecordCount: Boolean;
    FImporterId: String;
    FEventType: TEventType;
    FRecordCount: Int64;
    procedure SetImporterId(aValue: String);
    procedure SetEventType(aValue: TEventType);
    procedure SetRecordCount(aValue: Int64);
  public
    procedure AfterConstruction; override;
    procedure BeforeDestruction; override;
    function GetContext: String; override;
    function IsNullProperty(aPropertyName: String): Boolean; override;
    procedure Validate; overload;
    procedure Validate(aValidated: TList); overload;
    property ImporterIdIsNull: Boolean read FNullImporterId write FNullImporterId;
    property EventTypeIsNull: Boolean read FNullEventType write FNullEventType;
    property RecordCountIsNull: Boolean read FNullRecordCount write FNullRecordCount;
  published
    property ImporterId: String read FImporterId write SetImporterId;
    property EventType: TEventType read FEventType write SetEventType;
    property RecordCount: Int64 read FRecordCount write SetRecordCount;
  end;
  
  TImportEventStatus = class(TNullPrimitivesHandler)
  private
    FNullImporterId: Boolean;
    FNullEventType: Boolean;
    FNullStatus: Boolean;
    FNullErrorMessage: Boolean;
    FNullRecordCount: Boolean;
    FImporterId: String;
    FEventType: TEventType;
    FStatus: TStatus;
    FErrorMessage: String;
    FRecordCount: Int64;
    FImportReport: TImportReport;
    procedure SetImporterId(aValue: String);
    procedure SetEventType(aValue: TEventType);
    procedure SetStatus(aValue: TStatus);
    procedure SetErrorMessage(aValue: String);
    procedure SetRecordCount(aValue: Int64);
  public
    procedure AfterConstruction; override;
    procedure BeforeDestruction; override;
    function GetContext: String; override;
    function IsNullProperty(aPropertyName: String): Boolean; override;
    procedure Validate; overload;
    procedure Validate(aValidated: TList); overload;
    property ImporterIdIsNull: Boolean read FNullImporterId write FNullImporterId;
    property EventTypeIsNull: Boolean read FNullEventType write FNullEventType;
    property StatusIsNull: Boolean read FNullStatus write FNullStatus;
    property ErrorMessageIsNull: Boolean read FNullErrorMessage write FNullErrorMessage;
    property RecordCountIsNull: Boolean read FNullRecordCount write FNullRecordCount;
  published
    property ImporterId: String read FImporterId write SetImporterId;
    property EventType: TEventType read FEventType write SetEventType;
    property Status: TStatus read FStatus write SetStatus;
    property ErrorMessage: String read FErrorMessage write SetErrorMessage;
    property RecordCount: Int64 read FRecordCount write SetRecordCount;
    property ImportReport: TImportReport read FImportReport write FImportReport;
  end;
  
  TExportConfig = class(TNullPrimitivesHandler)
  private
    FNullUri: Boolean;
    FNullAsync: Boolean;
    FNullErrorStrategy: Boolean;
    FUri: String;
    FLayout: TLayoutdto;
    FAsync: Boolean;
    FErrorStrategy: String;
    procedure SetUri(aValue: String);
    procedure SetAsync(aValue: Boolean);
    procedure SetErrorStrategy(aValue: String);
  public
    procedure AfterConstruction; override;
    procedure BeforeDestruction; override;
    function GetContext: String; override;
    function IsNullProperty(aPropertyName: String): Boolean; override;
    procedure Validate; overload;
    procedure Validate(aValidated: TList); overload;
    property UriIsNull: Boolean read FNullUri write FNullUri;
    property AsyncIsNull: Boolean read FNullAsync write FNullAsync;
    property ErrorStrategyIsNull: Boolean read FNullErrorStrategy write FNullErrorStrategy;
  published
    property Uri: String read FUri write SetUri;
    property Layout: TLayoutdto read FLayout write FLayout;
    property Async: Boolean read FAsync write SetAsync;
    property ErrorStrategy: String read FErrorStrategy write SetErrorStrategy;
  end;
  
  TImportConfig = class(TNullPrimitivesHandler)
  private
    FNullUri: Boolean;
    FNullAsync: Boolean;
    FNullBatchSize: Boolean;
    FNullErrorStrategy: Boolean;
    FUri: String;
    FLayout: TLayoutdto;
    FAsync: Boolean;
    FBatchSize: Int64;
    FErrorStrategy: TErrorStrategy;
    procedure SetUri(aValue: String);
    procedure SetAsync(aValue: Boolean);
    procedure SetBatchSize(aValue: Int64);
    procedure SetErrorStrategy(aValue: TErrorStrategy);
  public
    procedure AfterConstruction; override;
    procedure BeforeDestruction; override;
    function GetContext: String; override;
    function IsNullProperty(aPropertyName: String): Boolean; override;
    procedure Validate; overload;
    procedure Validate(aValidated: TList); overload;
    property UriIsNull: Boolean read FNullUri write FNullUri;
    property AsyncIsNull: Boolean read FNullAsync write FNullAsync;
    property BatchSizeIsNull: Boolean read FNullBatchSize write FNullBatchSize;
    property ErrorStrategyIsNull: Boolean read FNullErrorStrategy write FNullErrorStrategy;
  published
    property Uri: String read FUri write SetUri;
    property Layout: TLayoutdto read FLayout write FLayout;
    property Async: Boolean read FAsync write SetAsync;
    property BatchSize: Int64 read FBatchSize write SetBatchSize;
    property ErrorStrategy: TErrorStrategy read FErrorStrategy write SetErrorStrategy;
  end;
  
  (**
   * Represents a service dependency
   *)
  TDependency = class(TNullPrimitivesHandler)
  private
    FNullDomain: Boolean;
    FNullService: Boolean;
    FNullVersion: Boolean;
    FDomain: String;
    FService: String;
    FVersion: String;
    procedure SetDomain(aValue: String);
    procedure SetService(aValue: String);
    procedure SetVersion(aValue: String);
  public
    procedure AfterConstruction; override;
    procedure BeforeDestruction; override;
    function GetContext: String; override;
    function IsNullProperty(aPropertyName: String): Boolean; override;
    procedure Validate; overload;
    procedure Validate(aValidated: TList); overload;
    property DomainIsNull: Boolean read FNullDomain write FNullDomain;
    property ServiceIsNull: Boolean read FNullService write FNullService;
    property VersionIsNull: Boolean read FNullVersion write FNullVersion;
  published
    (**
     * Domain of the dependency service
     *)
    property Domain: String read FDomain write SetDomain;
    (**
     * Name of the dependency service
     *)
    property Service: String read FService write SetService;
    (**
     * Version of the dependency service
     *)
    property Version: String read FVersion write SetVersion;
  end;
  
  THelloWorldInput = class(TNullPrimitivesHandler)
  private
    FNullWho: Boolean;
    FWho: String;
    procedure SetWho(aValue: String);
  public
    procedure AfterConstruction; override;
    procedure BeforeDestruction; override;
    function GetContext: String; override;
    function IsNullProperty(aPropertyName: String): Boolean; override;
    procedure Validate; overload;
    procedure Validate(aValidated: TList); overload;
    property WhoIsNull: Boolean read FNullWho write FNullWho;
  published
    property Who: String read FWho write SetWho;
  end;
  
  THelloWorldOutput = class(TNullPrimitivesHandler)
  private
    FNullHelloWorldMessage: Boolean;
    FHelloWorldMessage: String;
    procedure SetHelloWorldMessage(aValue: String);
  public
    procedure AfterConstruction; override;
    procedure BeforeDestruction; override;
    function GetContext: String; override;
    function IsNullProperty(aPropertyName: String): Boolean; override;
    procedure Validate; overload;
    procedure Validate(aValidated: TList); overload;
    property HelloWorldMessageIsNull: Boolean read FNullHelloWorldMessage write FNullHelloWorldMessage;
  published
    property HelloWorldMessage: String read FHelloWorldMessage write SetHelloWorldMessage;
  end;
  
  TListaItemManualInput = class(TNullPrimitivesHandler)
  private
  public
    procedure AfterConstruction; override;
    procedure BeforeDestruction; override;
    function GetContext: String; override;
    function IsNullProperty(aPropertyName: String): Boolean; override;
    procedure Validate; overload;
    procedure Validate(aValidated: TList); overload;
  published
  end;
  
  TListaItemManualOutput = class(TNullPrimitivesHandler)
  private
    FListItens: TSDLObjectList;
  public
    procedure AfterConstruction; override;
    procedure BeforeDestruction; override;
    function GetContext: String; override;
    function IsNullProperty(aPropertyName: String): Boolean; override;
    procedure Validate; overload;
    procedure Validate(aValidated: TList); overload;
    procedure AddListItens(aItem: TItem);
    function GetListItens(aIndex: Integer): TItem;
  published
    property ListItens: TSDLObjectList read FListItens;
  end;
  
  TGetMetadataInput = class(TNullPrimitivesHandler)
  private
    FNullMetadataFormat: Boolean;
    FMetadataFormat: String;
    procedure SetMetadataFormat(aValue: String);
  public
    procedure AfterConstruction; override;
    procedure BeforeDestruction; override;
    function GetContext: String; override;
    function IsNullProperty(aPropertyName: String): Boolean; override;
    procedure Validate; overload;
    procedure Validate(aValidated: TList); overload;
    property MetadataFormatIsNull: Boolean read FNullMetadataFormat write FNullMetadataFormat;
  published
    property MetadataFormat: String read FMetadataFormat write SetMetadataFormat;
  end;
  
  TGetMetadataOutput = class(TNullPrimitivesHandler)
  private
    FNullMetadata: Boolean;
    FMetadata: String;
    procedure SetMetadata(aValue: String);
  public
    procedure AfterConstruction; override;
    procedure BeforeDestruction; override;
    function GetContext: String; override;
    function IsNullProperty(aPropertyName: String): Boolean; override;
    procedure Validate; overload;
    procedure Validate(aValidated: TList); overload;
    property MetadataIsNull: Boolean read FNullMetadata write FNullMetadata;
  published
    property Metadata: String read FMetadata write SetMetadata;
  end;
  
  TImportClienteInput = class(TNullPrimitivesHandler)
  private
    FConfig: TImportConfig;
  public
    procedure AfterConstruction; override;
    procedure BeforeDestruction; override;
    function GetContext: String; override;
    function IsNullProperty(aPropertyName: String): Boolean; override;
    procedure Validate; overload;
    procedure Validate(aValidated: TList); overload;
  published
    property Config: TImportConfig read FConfig write FConfig;
  end;
  
  TImportClienteOutput = class(TNullPrimitivesHandler)
  private
    FNullImportJobId: Boolean;
    FImportJobId: String;
    procedure SetImportJobId(aValue: String);
  public
    procedure AfterConstruction; override;
    procedure BeforeDestruction; override;
    function GetContext: String; override;
    function IsNullProperty(aPropertyName: String): Boolean; override;
    procedure Validate; overload;
    procedure Validate(aValidated: TList); overload;
    property ImportJobIdIsNull: Boolean read FNullImportJobId write FNullImportJobId;
  published
    property ImportJobId: String read FImportJobId write SetImportJobId;
  end;
  
  TExportClienteInput = class(TNullPrimitivesHandler)
  private
    FConfig: TExportConfig;
  public
    procedure AfterConstruction; override;
    procedure BeforeDestruction; override;
    function GetContext: String; override;
    function IsNullProperty(aPropertyName: String): Boolean; override;
    procedure Validate; overload;
    procedure Validate(aValidated: TList); overload;
  published
    property Config: TExportConfig read FConfig write FConfig;
  end;
  
  TExportClienteOutput = class(TNullPrimitivesHandler)
  private
    FNullExportJobId: Boolean;
    FExportJobId: String;
    procedure SetExportJobId(aValue: String);
  public
    procedure AfterConstruction; override;
    procedure BeforeDestruction; override;
    function GetContext: String; override;
    function IsNullProperty(aPropertyName: String): Boolean; override;
    procedure Validate; overload;
    procedure Validate(aValidated: TList); overload;
    property ExportJobIdIsNull: Boolean read FNullExportJobId write FNullExportJobId;
  published
    property ExportJobId: String read FExportJobId write SetExportJobId;
  end;
  
  TImportItemInput = class(TNullPrimitivesHandler)
  private
    FConfig: TImportConfig;
  public
    procedure AfterConstruction; override;
    procedure BeforeDestruction; override;
    function GetContext: String; override;
    function IsNullProperty(aPropertyName: String): Boolean; override;
    procedure Validate; overload;
    procedure Validate(aValidated: TList); overload;
  published
    property Config: TImportConfig read FConfig write FConfig;
  end;
  
  TImportItemOutput = class(TNullPrimitivesHandler)
  private
    FNullImportJobId: Boolean;
    FImportJobId: String;
    procedure SetImportJobId(aValue: String);
  public
    procedure AfterConstruction; override;
    procedure BeforeDestruction; override;
    function GetContext: String; override;
    function IsNullProperty(aPropertyName: String): Boolean; override;
    procedure Validate; overload;
    procedure Validate(aValidated: TList); overload;
    property ImportJobIdIsNull: Boolean read FNullImportJobId write FNullImportJobId;
  published
    property ImportJobId: String read FImportJobId write SetImportJobId;
  end;
  
  TExportItemInput = class(TNullPrimitivesHandler)
  private
    FConfig: TExportConfig;
  public
    procedure AfterConstruction; override;
    procedure BeforeDestruction; override;
    function GetContext: String; override;
    function IsNullProperty(aPropertyName: String): Boolean; override;
    procedure Validate; overload;
    procedure Validate(aValidated: TList); overload;
  published
    property Config: TExportConfig read FConfig write FConfig;
  end;
  
  TExportItemOutput = class(TNullPrimitivesHandler)
  private
    FNullExportJobId: Boolean;
    FExportJobId: String;
    procedure SetExportJobId(aValue: String);
  public
    procedure AfterConstruction; override;
    procedure BeforeDestruction; override;
    function GetContext: String; override;
    function IsNullProperty(aPropertyName: String): Boolean; override;
    procedure Validate; overload;
    procedure Validate(aValidated: TList); overload;
    property ExportJobIdIsNull: Boolean read FNullExportJobId write FNullExportJobId;
  published
    property ExportJobId: String read FExportJobId write SetExportJobId;
  end;
  
  TImportPedidoInput = class(TNullPrimitivesHandler)
  private
    FConfig: TImportConfig;
  public
    procedure AfterConstruction; override;
    procedure BeforeDestruction; override;
    function GetContext: String; override;
    function IsNullProperty(aPropertyName: String): Boolean; override;
    procedure Validate; overload;
    procedure Validate(aValidated: TList); overload;
  published
    property Config: TImportConfig read FConfig write FConfig;
  end;
  
  TImportPedidoOutput = class(TNullPrimitivesHandler)
  private
    FNullImportJobId: Boolean;
    FImportJobId: String;
    procedure SetImportJobId(aValue: String);
  public
    procedure AfterConstruction; override;
    procedure BeforeDestruction; override;
    function GetContext: String; override;
    function IsNullProperty(aPropertyName: String): Boolean; override;
    procedure Validate; overload;
    procedure Validate(aValidated: TList); overload;
    property ImportJobIdIsNull: Boolean read FNullImportJobId write FNullImportJobId;
  published
    property ImportJobId: String read FImportJobId write SetImportJobId;
  end;
  
  TExportPedidoInput = class(TNullPrimitivesHandler)
  private
    FConfig: TExportConfig;
  public
    procedure AfterConstruction; override;
    procedure BeforeDestruction; override;
    function GetContext: String; override;
    function IsNullProperty(aPropertyName: String): Boolean; override;
    procedure Validate; overload;
    procedure Validate(aValidated: TList); overload;
  published
    property Config: TExportConfig read FConfig write FConfig;
  end;
  
  TExportPedidoOutput = class(TNullPrimitivesHandler)
  private
    FNullExportJobId: Boolean;
    FExportJobId: String;
    procedure SetExportJobId(aValue: String);
  public
    procedure AfterConstruction; override;
    procedure BeforeDestruction; override;
    function GetContext: String; override;
    function IsNullProperty(aPropertyName: String): Boolean; override;
    procedure Validate; overload;
    procedure Validate(aValidated: TList); overload;
    property ExportJobIdIsNull: Boolean read FNullExportJobId write FNullExportJobId;
  published
    property ExportJobId: String read FExportJobId write SetExportJobId;
  end;
  
  TCreateBulkClienteInput = class(TNullPrimitivesHandler)
  private
    FEntities: TSDLObjectList;
  public
    procedure AfterConstruction; override;
    procedure BeforeDestruction; override;
    function GetContext: String; override;
    function IsNullProperty(aPropertyName: String): Boolean; override;
    procedure Validate; overload;
    procedure Validate(aValidated: TList); overload;
    procedure AddEntities(aItem: TCliente);
    function GetEntities(aIndex: Integer): TCliente;
  published
    (**
     * Entities for bulk creation
     *)
    property Entities: TSDLObjectList read FEntities;
  end;
  
  TCreateBulkClienteOutput = class(TNullPrimitivesHandler)
  private
  public
    procedure AfterConstruction; override;
    procedure BeforeDestruction; override;
    function GetContext: String; override;
    function IsNullProperty(aPropertyName: String): Boolean; override;
    procedure Validate; overload;
    procedure Validate(aValidated: TList); overload;
  published
  end;
  
  TCreateBulkItemInput = class(TNullPrimitivesHandler)
  private
    FEntities: TSDLObjectList;
  public
    procedure AfterConstruction; override;
    procedure BeforeDestruction; override;
    function GetContext: String; override;
    function IsNullProperty(aPropertyName: String): Boolean; override;
    procedure Validate; overload;
    procedure Validate(aValidated: TList); overload;
    procedure AddEntities(aItem: TItem);
    function GetEntities(aIndex: Integer): TItem;
  published
    (**
     * Entities for bulk creation
     *)
    property Entities: TSDLObjectList read FEntities;
  end;
  
  TCreateBulkItemOutput = class(TNullPrimitivesHandler)
  private
  public
    procedure AfterConstruction; override;
    procedure BeforeDestruction; override;
    function GetContext: String; override;
    function IsNullProperty(aPropertyName: String): Boolean; override;
    procedure Validate; overload;
    procedure Validate(aValidated: TList); overload;
  published
  end;
  
  TCreateBulkPedidoInput = class(TNullPrimitivesHandler)
  private
    FEntities: TSDLObjectList;
  public
    procedure AfterConstruction; override;
    procedure BeforeDestruction; override;
    function GetContext: String; override;
    function IsNullProperty(aPropertyName: String): Boolean; override;
    procedure Validate; overload;
    procedure Validate(aValidated: TList); overload;
    procedure AddEntities(aItem: TPedido);
    function GetEntities(aIndex: Integer): TPedido;
  published
    (**
     * Entities for bulk creation
     *)
    property Entities: TSDLObjectList read FEntities;
  end;
  
  TCreateBulkPedidoOutput = class(TNullPrimitivesHandler)
  private
  public
    procedure AfterConstruction; override;
    procedure BeforeDestruction; override;
    function GetContext: String; override;
    function IsNullProperty(aPropertyName: String): Boolean; override;
    procedure Validate; overload;
    procedure Validate(aValidated: TList); overload;
  published
  end;
  
  TGetDependenciesOutput = class(TNullPrimitivesHandler)
  private
    FDependencies: TSDLObjectList;
  public
    procedure AfterConstruction; override;
    procedure BeforeDestruction; override;
    function GetContext: String; override;
    function IsNullProperty(aPropertyName: String): Boolean; override;
    procedure Validate; overload;
    procedure Validate(aValidated: TList); overload;
    procedure AddDependencies(aItem: TDependency);
    function GetDependencies(aIndex: Integer): TDependency;
  published
    (**
     * List with this service dependencies
     *)
    property Dependencies: TSDLObjectList read FDependencies;
  end;
  
  TServiceStartedPayload = class(TNullPrimitivesHandler)
  private
    FNullDomain: Boolean;
    FNullService: Boolean;
    FDomain: String;
    FService: String;
    procedure SetDomain(aValue: String);
    procedure SetService(aValue: String);
  public
    procedure AfterConstruction; override;
    procedure BeforeDestruction; override;
    function GetContext: String; override;
    function IsNullProperty(aPropertyName: String): Boolean; override;
    procedure Validate; overload;
    procedure Validate(aValidated: TList); overload;
    property DomainIsNull: Boolean read FNullDomain write FNullDomain;
    property ServiceIsNull: Boolean read FNullService write FNullService;
  published
    property Domain: String read FDomain write SetDomain;
    property Service: String read FService write SetService;
  end;
  
  TImportClienteEventPayload = class(TNullPrimitivesHandler)
  private
    FEventpl: TImportEventStatus;
  public
    procedure AfterConstruction; override;
    procedure BeforeDestruction; override;
    function GetContext: String; override;
    function IsNullProperty(aPropertyName: String): Boolean; override;
    procedure Validate; overload;
    procedure Validate(aValidated: TList); overload;
  published
    property Eventpl: TImportEventStatus read FEventpl write FEventpl;
  end;
  
  TExportClienteEventPayload = class(TNullPrimitivesHandler)
  private
    FEventpl: TExportEventStatus;
  public
    procedure AfterConstruction; override;
    procedure BeforeDestruction; override;
    function GetContext: String; override;
    function IsNullProperty(aPropertyName: String): Boolean; override;
    procedure Validate; overload;
    procedure Validate(aValidated: TList); overload;
  published
    property Eventpl: TExportEventStatus read FEventpl write FEventpl;
  end;
  
  TImportItemEventPayload = class(TNullPrimitivesHandler)
  private
    FEventpl: TImportEventStatus;
  public
    procedure AfterConstruction; override;
    procedure BeforeDestruction; override;
    function GetContext: String; override;
    function IsNullProperty(aPropertyName: String): Boolean; override;
    procedure Validate; overload;
    procedure Validate(aValidated: TList); overload;
  published
    property Eventpl: TImportEventStatus read FEventpl write FEventpl;
  end;
  
  TExportItemEventPayload = class(TNullPrimitivesHandler)
  private
    FEventpl: TExportEventStatus;
  public
    procedure AfterConstruction; override;
    procedure BeforeDestruction; override;
    function GetContext: String; override;
    function IsNullProperty(aPropertyName: String): Boolean; override;
    procedure Validate; overload;
    procedure Validate(aValidated: TList); overload;
  published
    property Eventpl: TExportEventStatus read FEventpl write FEventpl;
  end;
  
  TImportPedidoEventPayload = class(TNullPrimitivesHandler)
  private
    FEventpl: TImportEventStatus;
  public
    procedure AfterConstruction; override;
    procedure BeforeDestruction; override;
    function GetContext: String; override;
    function IsNullProperty(aPropertyName: String): Boolean; override;
    procedure Validate; overload;
    procedure Validate(aValidated: TList); overload;
  published
    property Eventpl: TImportEventStatus read FEventpl write FEventpl;
  end;
  
  TExportPedidoEventPayload = class(TNullPrimitivesHandler)
  private
    FEventpl: TExportEventStatus;
  public
    procedure AfterConstruction; override;
    procedure BeforeDestruction; override;
    function GetContext: String; override;
    function IsNullProperty(aPropertyName: String): Boolean; override;
    procedure Validate; overload;
    procedure Validate(aValidated: TList); overload;
  published
    property Eventpl: TExportEventStatus read FEventpl write FEventpl;
  end;
  
  (**
   * Validators for payloads accepted/produced by endpoints in hello_world.
   *)
  THelloWorldValidator = class
  public
    class procedure Validate(aToValidate: THelloWorldInput); overload;
    class procedure Validate(aToValidate: THelloWorldInput; aValidated: TList); overload;
    class procedure Validate(aToValidate: THelloWorldOutput); overload;
    class procedure Validate(aToValidate: THelloWorldOutput; aValidated: TList); overload;
    class procedure Validate(aToValidate: TListaItemManualInput); overload;
    class procedure Validate(aToValidate: TListaItemManualInput; aValidated: TList); overload;
    class procedure Validate(aToValidate: TListaItemManualOutput); overload;
    class procedure Validate(aToValidate: TListaItemManualOutput; aValidated: TList); overload;
    class procedure Validate(aToValidate: TCliente); overload;
    class procedure Validate(aToValidate: TCliente; aValidated: TList); overload;
    class procedure Validate(aToValidate: TItem); overload;
    class procedure Validate(aToValidate: TItem; aValidated: TList); overload;
    class procedure Validate(aToValidate: TPedido); overload;
    class procedure Validate(aToValidate: TPedido; aValidated: TList); overload;
    class procedure Validate(aToValidate: TServiceStartedPayload); overload;
    class procedure Validate(aToValidate: TServiceStartedPayload; aValidated: TList); overload;
    class procedure Validate(aToValidate: TNotifyUserEventPayload); overload;
    class procedure Validate(aToValidate: TNotifyUserEventPayload; aValidated: TList); overload;
    class procedure Validate(aToValidate: TEmailNotifyUserEventPayload); overload;
    class procedure Validate(aToValidate: TEmailNotifyUserEventPayload; aValidated: TList); overload;
    class procedure Validate(aToValidate: TPushNotifyUserEventPayload); overload;
    class procedure Validate(aToValidate: TPushNotifyUserEventPayload; aValidated: TList); overload;
    class procedure Validate(aToValidate: TGetMetadataInput); overload;
    class procedure Validate(aToValidate: TGetMetadataInput; aValidated: TList); overload;
    class procedure Validate(aToValidate: TGetMetadataOutput); overload;
    class procedure Validate(aToValidate: TGetMetadataOutput; aValidated: TList); overload;
    class procedure Validate(aToValidate: TBlobReference); overload;
    class procedure Validate(aToValidate: TBlobReference; aValidated: TList); overload;
    class procedure Validate(aToValidate: TBasicErrorPayload); overload;
    class procedure Validate(aToValidate: TBasicErrorPayload; aValidated: TList); overload;
    class procedure Validate(aToValidate: TImportError); overload;
    class procedure Validate(aToValidate: TImportError; aValidated: TList); overload;
    class procedure Validate(aToValidate: TFielddto); overload;
    class procedure Validate(aToValidate: TFielddto; aValidated: TList); overload;
    class procedure Validate(aToValidate: THookdto); overload;
    class procedure Validate(aToValidate: THookdto; aValidated: TList); overload;
    class procedure Validate(aToValidate: TLayoutdto); overload;
    class procedure Validate(aToValidate: TLayoutdto; aValidated: TList); overload;
    class procedure Validate(aToValidate: TImportReport); overload;
    class procedure Validate(aToValidate: TImportReport; aValidated: TList); overload;
    class procedure Validate(aToValidate: TExportEventStatus); overload;
    class procedure Validate(aToValidate: TExportEventStatus; aValidated: TList); overload;
    class procedure Validate(aToValidate: TImportEventStatus); overload;
    class procedure Validate(aToValidate: TImportEventStatus; aValidated: TList); overload;
    class procedure Validate(aToValidate: TExportConfig); overload;
    class procedure Validate(aToValidate: TExportConfig; aValidated: TList); overload;
    class procedure Validate(aToValidate: TImportConfig); overload;
    class procedure Validate(aToValidate: TImportConfig; aValidated: TList); overload;
    class procedure Validate(aToValidate: TImportClienteInput); overload;
    class procedure Validate(aToValidate: TImportClienteInput; aValidated: TList); overload;
    class procedure Validate(aToValidate: TImportClienteOutput); overload;
    class procedure Validate(aToValidate: TImportClienteOutput; aValidated: TList); overload;
    class procedure Validate(aToValidate: TExportClienteInput); overload;
    class procedure Validate(aToValidate: TExportClienteInput; aValidated: TList); overload;
    class procedure Validate(aToValidate: TExportClienteOutput); overload;
    class procedure Validate(aToValidate: TExportClienteOutput; aValidated: TList); overload;
    class procedure Validate(aToValidate: TImportClienteEventPayload); overload;
    class procedure Validate(aToValidate: TImportClienteEventPayload; aValidated: TList); overload;
    class procedure Validate(aToValidate: TExportClienteEventPayload); overload;
    class procedure Validate(aToValidate: TExportClienteEventPayload; aValidated: TList); overload;
    class procedure Validate(aToValidate: TImportItemInput); overload;
    class procedure Validate(aToValidate: TImportItemInput; aValidated: TList); overload;
    class procedure Validate(aToValidate: TImportItemOutput); overload;
    class procedure Validate(aToValidate: TImportItemOutput; aValidated: TList); overload;
    class procedure Validate(aToValidate: TExportItemInput); overload;
    class procedure Validate(aToValidate: TExportItemInput; aValidated: TList); overload;
    class procedure Validate(aToValidate: TExportItemOutput); overload;
    class procedure Validate(aToValidate: TExportItemOutput; aValidated: TList); overload;
    class procedure Validate(aToValidate: TImportItemEventPayload); overload;
    class procedure Validate(aToValidate: TImportItemEventPayload; aValidated: TList); overload;
    class procedure Validate(aToValidate: TExportItemEventPayload); overload;
    class procedure Validate(aToValidate: TExportItemEventPayload; aValidated: TList); overload;
    class procedure Validate(aToValidate: TImportPedidoInput); overload;
    class procedure Validate(aToValidate: TImportPedidoInput; aValidated: TList); overload;
    class procedure Validate(aToValidate: TImportPedidoOutput); overload;
    class procedure Validate(aToValidate: TImportPedidoOutput; aValidated: TList); overload;
    class procedure Validate(aToValidate: TExportPedidoInput); overload;
    class procedure Validate(aToValidate: TExportPedidoInput; aValidated: TList); overload;
    class procedure Validate(aToValidate: TExportPedidoOutput); overload;
    class procedure Validate(aToValidate: TExportPedidoOutput; aValidated: TList); overload;
    class procedure Validate(aToValidate: TImportPedidoEventPayload); overload;
    class procedure Validate(aToValidate: TImportPedidoEventPayload; aValidated: TList); overload;
    class procedure Validate(aToValidate: TExportPedidoEventPayload); overload;
    class procedure Validate(aToValidate: TExportPedidoEventPayload; aValidated: TList); overload;
    class procedure Validate(aToValidate: TCreateBulkClienteInput); overload;
    class procedure Validate(aToValidate: TCreateBulkClienteInput; aValidated: TList); overload;
    class procedure Validate(aToValidate: TCreateBulkClienteOutput); overload;
    class procedure Validate(aToValidate: TCreateBulkClienteOutput; aValidated: TList); overload;
    class procedure Validate(aToValidate: TCreateBulkItemInput); overload;
    class procedure Validate(aToValidate: TCreateBulkItemInput; aValidated: TList); overload;
    class procedure Validate(aToValidate: TCreateBulkItemOutput); overload;
    class procedure Validate(aToValidate: TCreateBulkItemOutput; aValidated: TList); overload;
    class procedure Validate(aToValidate: TCreateBulkPedidoInput); overload;
    class procedure Validate(aToValidate: TCreateBulkPedidoInput; aValidated: TList); overload;
    class procedure Validate(aToValidate: TCreateBulkPedidoOutput); overload;
    class procedure Validate(aToValidate: TCreateBulkPedidoOutput; aValidated: TList); overload;
    class procedure Validate(aToValidate: TDependency); overload;
    class procedure Validate(aToValidate: TDependency; aValidated: TList); overload;
    class procedure Validate(aToValidate: TGetDependenciesOutput); overload;
    class procedure Validate(aToValidate: TGetDependenciesOutput; aValidated: TList); overload;
  end;
  
implementation

uses
  SysUtils, TypInfo;

var
  vUserNotificationKindTypeInfo: PTypeInfo = nil;
  
  vUserNotificationPriorityTypeInfo: PTypeInfo = nil;
  
  vEventEmailFormatTypeInfo: PTypeInfo = nil;
  
  vFieldTypeTypeInfo: PTypeInfo = nil;
  
  vFileFormatTypeInfo: PTypeInfo = nil;
  
  vHookFunctionTypeInfo: PTypeInfo = nil;
  
  vEventTypeTypeInfo: PTypeInfo = nil;
  
  vErrorStrategyTypeInfo: PTypeInfo = nil;
  
  vStatusTypeInfo: PTypeInfo = nil;
  
  vErrorTypeTypeInfo: PTypeInfo = nil;

{ TCommands }

class function TCommands.GetHello_World: String;
begin
  Result := 'helloWorld';
end;

class function TCommands.GetHello_World_Response: String;
begin
  Result := 'helloWorldResponse';
end;

class function TCommands.GetLista_Item_Manual: String;
begin
  Result := 'listaItemManual';
end;

class function TCommands.GetLista_Item_Manual_Response: String;
begin
  Result := 'listaItemManualResponse';
end;

class function TCommands.GetGet_Metadata: String;
begin
  Result := 'getMetadata';
end;

class function TCommands.GetGet_Metadata_Response: String;
begin
  Result := 'getMetadataResponse';
end;

class function TCommands.GetOdata: String;
begin
  Result := 'odata';
end;

class function TCommands.GetOdata_Response: String;
begin
  Result := 'odataResponse';
end;

class function TCommands.GetImport_Cliente: String;
begin
  Result := 'importCliente';
end;

class function TCommands.GetImport_Cliente_Response: String;
begin
  Result := 'importClienteResponse';
end;

class function TCommands.GetExport_Cliente: String;
begin
  Result := 'exportCliente';
end;

class function TCommands.GetExport_Cliente_Response: String;
begin
  Result := 'exportClienteResponse';
end;

class function TCommands.GetImport_Item: String;
begin
  Result := 'importItem';
end;

class function TCommands.GetImport_Item_Response: String;
begin
  Result := 'importItemResponse';
end;

class function TCommands.GetExport_Item: String;
begin
  Result := 'exportItem';
end;

class function TCommands.GetExport_Item_Response: String;
begin
  Result := 'exportItemResponse';
end;

class function TCommands.GetImport_Pedido: String;
begin
  Result := 'importPedido';
end;

class function TCommands.GetImport_Pedido_Response: String;
begin
  Result := 'importPedidoResponse';
end;

class function TCommands.GetExport_Pedido: String;
begin
  Result := 'exportPedido';
end;

class function TCommands.GetExport_Pedido_Response: String;
begin
  Result := 'exportPedidoResponse';
end;

class function TCommands.GetCreate_Cliente: String;
begin
  Result := 'createCliente';
end;

class function TCommands.GetCreate_Cliente_Response: String;
begin
  Result := 'createClienteResponse';
end;

class function TCommands.GetCreate_Bulk_Cliente: String;
begin
  Result := 'createBulkCliente';
end;

class function TCommands.GetCreate_Bulk_Cliente_Response: String;
begin
  Result := 'createBulkClienteResponse';
end;

class function TCommands.GetCreate_Merge_Cliente: String;
begin
  Result := 'createMergeCliente';
end;

class function TCommands.GetCreate_Merge_Cliente_Response: String;
begin
  Result := 'createMergeClienteResponse';
end;

class function TCommands.GetRetrieve_Cliente: String;
begin
  Result := 'retrieveCliente';
end;

class function TCommands.GetRetrieve_Cliente_Response: String;
begin
  Result := 'retrieveClienteResponse';
end;

class function TCommands.GetUpdate_Cliente: String;
begin
  Result := 'updateCliente';
end;

class function TCommands.GetUpdate_Cliente_Response: String;
begin
  Result := 'updateClienteResponse';
end;

class function TCommands.GetUpdate_Merge_Cliente: String;
begin
  Result := 'updateMergeCliente';
end;

class function TCommands.GetUpdate_Merge_Cliente_Response: String;
begin
  Result := 'updateMergeClienteResponse';
end;

class function TCommands.GetDelete_Cliente: String;
begin
  Result := 'deleteCliente';
end;

class function TCommands.GetDelete_Cliente_Response: String;
begin
  Result := 'deleteClienteResponse';
end;

class function TCommands.GetList_Cliente: String;
begin
  Result := 'listCliente';
end;

class function TCommands.GetList_Cliente_Response: String;
begin
  Result := 'listClienteResponse';
end;

class function TCommands.GetCreate_Item: String;
begin
  Result := 'createItem';
end;

class function TCommands.GetCreate_Item_Response: String;
begin
  Result := 'createItemResponse';
end;

class function TCommands.GetCreate_Bulk_Item: String;
begin
  Result := 'createBulkItem';
end;

class function TCommands.GetCreate_Bulk_Item_Response: String;
begin
  Result := 'createBulkItemResponse';
end;

class function TCommands.GetCreate_Merge_Item: String;
begin
  Result := 'createMergeItem';
end;

class function TCommands.GetCreate_Merge_Item_Response: String;
begin
  Result := 'createMergeItemResponse';
end;

class function TCommands.GetRetrieve_Item: String;
begin
  Result := 'retrieveItem';
end;

class function TCommands.GetRetrieve_Item_Response: String;
begin
  Result := 'retrieveItemResponse';
end;

class function TCommands.GetUpdate_Item: String;
begin
  Result := 'updateItem';
end;

class function TCommands.GetUpdate_Item_Response: String;
begin
  Result := 'updateItemResponse';
end;

class function TCommands.GetUpdate_Merge_Item: String;
begin
  Result := 'updateMergeItem';
end;

class function TCommands.GetUpdate_Merge_Item_Response: String;
begin
  Result := 'updateMergeItemResponse';
end;

class function TCommands.GetDelete_Item: String;
begin
  Result := 'deleteItem';
end;

class function TCommands.GetDelete_Item_Response: String;
begin
  Result := 'deleteItemResponse';
end;

class function TCommands.GetList_Item: String;
begin
  Result := 'listItem';
end;

class function TCommands.GetList_Item_Response: String;
begin
  Result := 'listItemResponse';
end;

class function TCommands.GetCreate_Pedido: String;
begin
  Result := 'createPedido';
end;

class function TCommands.GetCreate_Pedido_Response: String;
begin
  Result := 'createPedidoResponse';
end;

class function TCommands.GetCreate_Bulk_Pedido: String;
begin
  Result := 'createBulkPedido';
end;

class function TCommands.GetCreate_Bulk_Pedido_Response: String;
begin
  Result := 'createBulkPedidoResponse';
end;

class function TCommands.GetCreate_Merge_Pedido: String;
begin
  Result := 'createMergePedido';
end;

class function TCommands.GetCreate_Merge_Pedido_Response: String;
begin
  Result := 'createMergePedidoResponse';
end;

class function TCommands.GetRetrieve_Pedido: String;
begin
  Result := 'retrievePedido';
end;

class function TCommands.GetRetrieve_Pedido_Response: String;
begin
  Result := 'retrievePedidoResponse';
end;

class function TCommands.GetUpdate_Pedido: String;
begin
  Result := 'updatePedido';
end;

class function TCommands.GetUpdate_Pedido_Response: String;
begin
  Result := 'updatePedidoResponse';
end;

class function TCommands.GetUpdate_Merge_Pedido: String;
begin
  Result := 'updateMergePedido';
end;

class function TCommands.GetUpdate_Merge_Pedido_Response: String;
begin
  Result := 'updateMergePedidoResponse';
end;

class function TCommands.GetDelete_Pedido: String;
begin
  Result := 'deletePedido';
end;

class function TCommands.GetDelete_Pedido_Response: String;
begin
  Result := 'deletePedidoResponse';
end;

class function TCommands.GetList_Pedido: String;
begin
  Result := 'listPedido';
end;

class function TCommands.GetList_Pedido_Response: String;
begin
  Result := 'listPedidoResponse';
end;

class function TCommands.GetGet_Dependencies: String;
begin
  Result := 'getDependencies';
end;

class function TCommands.GetGet_Dependencies_Response: String;
begin
  Result := 'getDependenciesResponse';
end;

{ TEvents }

class function TEvents.GetService_Started: String;
begin
  Result := 'serviceStarted';
end;

class function TEvents.GetNotify_User_Event: String;
begin
  Result := 'notifyUserEvent';
end;

class function TEvents.GetImport_Cliente_Event: String;
begin
  Result := 'importClienteEvent';
end;

class function TEvents.GetExport_Cliente_Event: String;
begin
  Result := 'exportClienteEvent';
end;

class function TEvents.GetImport_Item_Event: String;
begin
  Result := 'importItemEvent';
end;

class function TEvents.GetExport_Item_Event: String;
begin
  Result := 'exportItemEvent';
end;

class function TEvents.GetImport_Pedido_Event: String;
begin
  Result := 'importPedidoEvent';
end;

class function TEvents.GetExport_Pedido_Event: String;
begin
  Result := 'exportPedidoEvent';
end;

function Contains(aList: TList; aItem: TObject): Boolean;
var
  i: Integer;
begin
  Result := False;
  i := 0;
  while (i < aList.Count) and (not Result) do
  begin
    Result := aItem = aList[i];
    Inc(i);
  end;
end;


{ TCliente }

procedure TCliente.SetNome(aValue: String);
begin
  FNome := aValue;
  FNullNome := False;
end;

procedure TCliente.SetCreditoHabilitado(aValue: Boolean);
begin
  FCreditoHabilitado := aValue;
  FNullCreditoHabilitado := False;
end;

procedure TCliente.SetCpf(aValue: String);
begin
  FCpf := aValue;
  FNullCpf := False;
end;

procedure TCliente.SetIdFoto(aValue: String);
begin
  FIdFoto := aValue;
  FNullIdFoto := False;
end;

procedure TCliente.AfterConstruction;
begin
  inherited;
  FNullNome := True;
  FNullCreditoHabilitado := True;
  FNullCpf := True;
  FNullIdFoto := True;
  FId := nil;
  FDataNascimento := nil;
end;

procedure TCliente.BeforeDestruction;
begin
  inherited;
end;

function TCliente.GetContext: String;
begin
  Result := cDomain + '.' + cService;
end;

function TCliente.IsNullProperty(aPropertyName: String): Boolean;
begin
  if SameText(aPropertyName, 'Nome') then
  begin
    Result := FNullNome;
    Exit;
  end;
  
  if SameText(aPropertyName, 'CreditoHabilitado') then
  begin
    Result := FNullCreditoHabilitado;
    Exit;
  end;
  
  if SameText(aPropertyName, 'Cpf') then
  begin
    Result := FNullCpf;
    Exit;
  end;
  
  if SameText(aPropertyName, 'IdFoto') then
  begin
    Result := FNullIdFoto;
    Exit;
  end;
  
  Result := False;
end;

procedure TCliente.Validate;
var
  xValidated: TList;
begin
  xValidated := TList.Create;
  try
    Validate(xValidated);
  finally
    xValidated.Destroy;
  end;
end;

procedure TCliente.Validate(aValidated: TList);
begin
  THelloWorldValidator.Validate(self, aValidated);
end;

{ TItem }

procedure TItem.SetDescricao(aValue: String);
begin
  FDescricao := aValue;
  FNullDescricao := False;
end;

procedure TItem.SetQuantidade(aValue: Double);
begin
  FQuantidade := aValue;
  FNullQuantidade := False;
end;

procedure TItem.SetValorUnitario(aValue: Double);
begin
  FValorUnitario := aValue;
  FNullValorUnitario := False;
end;

procedure TItem.AfterConstruction;
begin
  inherited;
  FNullDescricao := True;
  FNullQuantidade := True;
  FNullValorUnitario := True;
  FId := nil;
end;

procedure TItem.BeforeDestruction;
begin
  inherited;
end;

function TItem.GetContext: String;
begin
  Result := cDomain + '.' + cService;
end;

function TItem.IsNullProperty(aPropertyName: String): Boolean;
begin
  if SameText(aPropertyName, 'Descricao') then
  begin
    Result := FNullDescricao;
    Exit;
  end;
  
  if SameText(aPropertyName, 'Quantidade') then
  begin
    Result := FNullQuantidade;
    Exit;
  end;
  
  if SameText(aPropertyName, 'ValorUnitario') then
  begin
    Result := FNullValorUnitario;
    Exit;
  end;
  
  Result := False;
end;

procedure TItem.Validate;
var
  xValidated: TList;
begin
  xValidated := TList.Create;
  try
    Validate(xValidated);
  finally
    xValidated.Destroy;
  end;
end;

procedure TItem.Validate(aValidated: TList);
begin
  THelloWorldValidator.Validate(self, aValidated);
end;

{ TPedido }

procedure TPedido.SetObservacoes(aValue: String);
begin
  FObservacoes := aValue;
  FNullObservacoes := False;
end;

procedure TPedido.AfterConstruction;
begin
  inherited;
  FNullObservacoes := True;
  FId := nil;
  FData := nil;
  FCliente := nil;
  FItens := TSDLObjectList.Create(TItem);
end;

procedure TPedido.BeforeDestruction;
begin
  FreeAndNil(FItens);
  inherited;
end;

function TPedido.GetContext: String;
begin
  Result := cDomain + '.' + cService;
end;

function TPedido.IsNullProperty(aPropertyName: String): Boolean;
begin
  if SameText(aPropertyName, 'Observacoes') then
  begin
    Result := FNullObservacoes;
    Exit;
  end;
  
  Result := False;
end;

procedure TPedido.Validate;
var
  xValidated: TList;
begin
  xValidated := TList.Create;
  try
    Validate(xValidated);
  finally
    xValidated.Destroy;
  end;
end;

procedure TPedido.Validate(aValidated: TList);
begin
  THelloWorldValidator.Validate(self, aValidated);
end;

procedure TPedido.AddItens(aItem: TItem);
begin
  FItens.Add(aItem);
end;		

function TPedido.GetItens(aIndex: Integer): TItem;
begin
  Result := TItem(FItens[aIndex]);
end;		

{ TNotifyUserEventPayload }

procedure TNotifyUserEventPayload.SetNotificationClass(aValue: String);
begin
  FNotificationClass := aValue;
  FNullNotificationClass := False;
end;

procedure TNotifyUserEventPayload.SetNotificationOrigin(aValue: String);
begin
  FNotificationOrigin := aValue;
  FNullNotificationOrigin := False;
end;

procedure TNotifyUserEventPayload.SetNotificationKind(aValue: TUserNotificationKind);
begin
  FNotificationKind := aValue;
  FNullNotificationKind := False;
end;

procedure TNotifyUserEventPayload.SetNotificationPriority(aValue: TUserNotificationPriority);
begin
  FNotificationPriority := aValue;
  FNullNotificationPriority := False;
end;

procedure TNotifyUserEventPayload.SetNotificationSubject(aValue: String);
begin
  FNotificationSubject := aValue;
  FNullNotificationSubject := False;
end;

procedure TNotifyUserEventPayload.SetNotificationContent(aValue: String);
begin
  FNotificationContent := aValue;
  FNullNotificationContent := False;
end;

procedure TNotifyUserEventPayload.SetSourceDomain(aValue: String);
begin
  FSourceDomain := aValue;
  FNullSourceDomain := False;
end;

procedure TNotifyUserEventPayload.SetSourceService(aValue: String);
begin
  FSourceService := aValue;
  FNullSourceService := False;
end;

procedure TNotifyUserEventPayload.SetDestinationUser(aValue: String);
begin
  FDestinationUser := aValue;
  FNullDestinationUser := False;
end;

procedure TNotifyUserEventPayload.SetLink(aValue: String);
begin
  FLink := aValue;
  FNullLink := False;
end;

procedure TNotifyUserEventPayload.AfterConstruction;
begin
  inherited;
  FNullNotificationClass := True;
  FNullNotificationOrigin := True;
  FNullNotificationKind := True;
  FNullNotificationPriority := True;
  FNullNotificationSubject := True;
  FNullNotificationContent := True;
  FNullSourceDomain := True;
  FNullSourceService := True;
  FNullDestinationUser := True;
  FNullLink := True;
end;

procedure TNotifyUserEventPayload.BeforeDestruction;
begin
  inherited;
end;

function TNotifyUserEventPayload.GetContext: String;
begin
  Result := cDomain + '.' + cService;
end;

function TNotifyUserEventPayload.IsNullProperty(aPropertyName: String): Boolean;
begin
  if SameText(aPropertyName, 'NotificationClass') then
  begin
    Result := FNullNotificationClass;
    Exit;
  end;
  
  if SameText(aPropertyName, 'NotificationOrigin') then
  begin
    Result := FNullNotificationOrigin;
    Exit;
  end;
  
  if SameText(aPropertyName, 'NotificationKind') then
  begin
    Result := FNullNotificationKind;
    Exit;
  end;
  
  if SameText(aPropertyName, 'NotificationPriority') then
  begin
    Result := FNullNotificationPriority;
    Exit;
  end;
  
  if SameText(aPropertyName, 'NotificationSubject') then
  begin
    Result := FNullNotificationSubject;
    Exit;
  end;
  
  if SameText(aPropertyName, 'NotificationContent') then
  begin
    Result := FNullNotificationContent;
    Exit;
  end;
  
  if SameText(aPropertyName, 'SourceDomain') then
  begin
    Result := FNullSourceDomain;
    Exit;
  end;
  
  if SameText(aPropertyName, 'SourceService') then
  begin
    Result := FNullSourceService;
    Exit;
  end;
  
  if SameText(aPropertyName, 'DestinationUser') then
  begin
    Result := FNullDestinationUser;
    Exit;
  end;
  
  if SameText(aPropertyName, 'Link') then
  begin
    Result := FNullLink;
    Exit;
  end;
  
  Result := False;
end;

procedure TNotifyUserEventPayload.Validate;
var
  xValidated: TList;
begin
  xValidated := TList.Create;
  try
    Validate(xValidated);
  finally
    xValidated.Destroy;
  end;
end;

procedure TNotifyUserEventPayload.Validate(aValidated: TList);
begin
  THelloWorldValidator.Validate(self, aValidated);
end;

{ TEmailNotifyUserEventPayload }

procedure TEmailNotifyUserEventPayload.SetFrom(aValue: String);
begin
  FFrom := aValue;
  FNullFrom := False;
end;

procedure TEmailNotifyUserEventPayload.SetFormat(aValue: TEventEmailFormat);
begin
  FFormat := aValue;
  FNullFormat := False;
end;

procedure TEmailNotifyUserEventPayload.AfterConstruction;
begin
  inherited;
  FNullFrom := True;
  FNullFormat := True;
  FSendTo := TSDLStringList.Create;
end;

procedure TEmailNotifyUserEventPayload.BeforeDestruction;
begin
  FreeAndNil(FSendTo);
  inherited;
end;

function TEmailNotifyUserEventPayload.GetContext: String;
begin
  Result := cDomain + '.' + cService;
end;

function TEmailNotifyUserEventPayload.IsNullProperty(aPropertyName: String): Boolean;
begin
  if SameText(aPropertyName, 'From') then
  begin
    Result := FNullFrom;
    Exit;
  end;
  
  if SameText(aPropertyName, 'Format') then
  begin
    Result := FNullFormat;
    Exit;
  end;
  
  Result := False;
end;

procedure TEmailNotifyUserEventPayload.Validate;
var
  xValidated: TList;
begin
  xValidated := TList.Create;
  try
    Validate(xValidated);
  finally
    xValidated.Destroy;
  end;
end;

procedure TEmailNotifyUserEventPayload.Validate(aValidated: TList);
begin
  THelloWorldValidator.Validate(self, aValidated);
end;

procedure TEmailNotifyUserEventPayload.AddSendTo(aItem: String);
begin
  FSendTo.Add(aItem);
end;		

function TEmailNotifyUserEventPayload.GetSendTo(aIndex: Integer): String;
begin
  Result := FSendTo[aIndex];
end;		

{ TPushNotifyUserEventPayload }

procedure TPushNotifyUserEventPayload.SetApplicationId(aValue: String);
begin
  FApplicationId := aValue;
  FNullApplicationId := False;
end;

procedure TPushNotifyUserEventPayload.AfterConstruction;
begin
  inherited;
  FNullApplicationId := True;
end;

procedure TPushNotifyUserEventPayload.BeforeDestruction;
begin
  inherited;
end;

function TPushNotifyUserEventPayload.GetContext: String;
begin
  Result := cDomain + '.' + cService;
end;

function TPushNotifyUserEventPayload.IsNullProperty(aPropertyName: String): Boolean;
begin
  if SameText(aPropertyName, 'ApplicationId') then
  begin
    Result := FNullApplicationId;
    Exit;
  end;
  
  Result := False;
end;

procedure TPushNotifyUserEventPayload.Validate;
var
  xValidated: TList;
begin
  xValidated := TList.Create;
  try
    Validate(xValidated);
  finally
    xValidated.Destroy;
  end;
end;

procedure TPushNotifyUserEventPayload.Validate(aValidated: TList);
begin
  THelloWorldValidator.Validate(self, aValidated);
end;

{ TBlobReference }

procedure TBlobReference.SetDomainName(aValue: String);
begin
  FDomainName := aValue;
  FNullDomainName := False;
end;

procedure TBlobReference.SetServiceName(aValue: String);
begin
  FServiceName := aValue;
  FNullServiceName := False;
end;

procedure TBlobReference.SetTargetObjectId(aValue: String);
begin
  FTargetObjectId := aValue;
  FNullTargetObjectId := False;
end;

procedure TBlobReference.SetTargetCopyId(aValue: String);
begin
  FTargetCopyId := aValue;
  FNullTargetCopyId := False;
end;

procedure TBlobReference.AfterConstruction;
begin
  inherited;
  FNullDomainName := True;
  FNullServiceName := True;
  FNullTargetObjectId := True;
  FNullTargetCopyId := True;
end;

procedure TBlobReference.BeforeDestruction;
begin
  inherited;
end;

function TBlobReference.GetContext: String;
begin
  Result := cDomain + '.' + cService;
end;

function TBlobReference.IsNullProperty(aPropertyName: String): Boolean;
begin
  if SameText(aPropertyName, 'DomainName') then
  begin
    Result := FNullDomainName;
    Exit;
  end;
  
  if SameText(aPropertyName, 'ServiceName') then
  begin
    Result := FNullServiceName;
    Exit;
  end;
  
  if SameText(aPropertyName, 'TargetObjectId') then
  begin
    Result := FNullTargetObjectId;
    Exit;
  end;
  
  if SameText(aPropertyName, 'TargetCopyId') then
  begin
    Result := FNullTargetCopyId;
    Exit;
  end;
  
  Result := False;
end;

procedure TBlobReference.Validate;
var
  xValidated: TList;
begin
  xValidated := TList.Create;
  try
    Validate(xValidated);
  finally
    xValidated.Destroy;
  end;
end;

procedure TBlobReference.Validate(aValidated: TList);
begin
  THelloWorldValidator.Validate(self, aValidated);
end;

{ TBasicErrorPayload }

procedure TBasicErrorPayload.SetMessage(aValue: String);
begin
  FMessage := aValue;
  FNullMessage := False;
end;

procedure TBasicErrorPayload.SetErrorCode(aValue: String);
begin
  FErrorCode := aValue;
  FNullErrorCode := False;
end;

procedure TBasicErrorPayload.AfterConstruction;
begin
  inherited;
  FNullMessage := True;
  FNullErrorCode := True;
end;

procedure TBasicErrorPayload.BeforeDestruction;
begin
  inherited;
end;

function TBasicErrorPayload.GetContext: String;
begin
  Result := cDomain + '.' + cService;
end;

function TBasicErrorPayload.IsNullProperty(aPropertyName: String): Boolean;
begin
  if SameText(aPropertyName, 'Message') then
  begin
    Result := FNullMessage;
    Exit;
  end;
  
  if SameText(aPropertyName, 'ErrorCode') then
  begin
    Result := FNullErrorCode;
    Exit;
  end;
  
  Result := False;
end;

procedure TBasicErrorPayload.Validate;
var
  xValidated: TList;
begin
  xValidated := TList.Create;
  try
    Validate(xValidated);
  finally
    xValidated.Destroy;
  end;
end;

procedure TBasicErrorPayload.Validate(aValidated: TList);
begin
  THelloWorldValidator.Validate(self, aValidated);
end;

{ TImportError }

procedure TImportError.SetErrorType(aValue: TErrorType);
begin
  FErrorType := aValue;
  FNullErrorType := False;
end;

procedure TImportError.SetLineNumber(aValue: Int64);
begin
  FLineNumber := aValue;
  FNullLineNumber := False;
end;

procedure TImportError.SetBean(aValue: String);
begin
  FBean := aValue;
  FNullBean := False;
end;

procedure TImportError.SetMessage(aValue: String);
begin
  FMessage := aValue;
  FNullMessage := False;
end;

procedure TImportError.SetExceptionClass(aValue: String);
begin
  FExceptionClass := aValue;
  FNullExceptionClass := False;
end;

procedure TImportError.AfterConstruction;
begin
  inherited;
  FNullErrorType := True;
  FNullLineNumber := True;
  FNullBean := True;
  FNullMessage := True;
  FNullExceptionClass := True;
end;

procedure TImportError.BeforeDestruction;
begin
  inherited;
end;

function TImportError.GetContext: String;
begin
  Result := cDomain + '.' + cService;
end;

function TImportError.IsNullProperty(aPropertyName: String): Boolean;
begin
  if SameText(aPropertyName, 'ErrorType') then
  begin
    Result := FNullErrorType;
    Exit;
  end;
  
  if SameText(aPropertyName, 'LineNumber') then
  begin
    Result := FNullLineNumber;
    Exit;
  end;
  
  if SameText(aPropertyName, 'Bean') then
  begin
    Result := FNullBean;
    Exit;
  end;
  
  if SameText(aPropertyName, 'Message') then
  begin
    Result := FNullMessage;
    Exit;
  end;
  
  if SameText(aPropertyName, 'ExceptionClass') then
  begin
    Result := FNullExceptionClass;
    Exit;
  end;
  
  Result := False;
end;

procedure TImportError.Validate;
var
  xValidated: TList;
begin
  xValidated := TList.Create;
  try
    Validate(xValidated);
  finally
    xValidated.Destroy;
  end;
end;

procedure TImportError.Validate(aValidated: TList);
begin
  THelloWorldValidator.Validate(self, aValidated);
end;

{ TFielddto }

procedure TFielddto.SetId(aValue: Int64);
begin
  FId := aValue;
  FNullId := False;
end;

procedure TFielddto.SetName(aValue: String);
begin
  FName := aValue;
  FNullName := False;
end;

procedure TFielddto.SetFieldType(aValue: TFieldType);
begin
  FFieldType := aValue;
  FNullFieldType := False;
end;

procedure TFielddto.SetStart(aValue: Int64);
begin
  FStart := aValue;
  FNullStart := False;
end;

procedure TFielddto.SetSize(aValue: Int64);
begin
  FSize := aValue;
  FNullSize := False;
end;

procedure TFielddto.SetMaskPattern(aValue: String);
begin
  FMaskPattern := aValue;
  FNullMaskPattern := False;
end;

procedure TFielddto.AfterConstruction;
begin
  inherited;
  FNullId := True;
  FNullName := True;
  FNullFieldType := True;
  FNullStart := True;
  FNullSize := True;
  FNullMaskPattern := True;
end;

procedure TFielddto.BeforeDestruction;
begin
  inherited;
end;

function TFielddto.GetContext: String;
begin
  Result := cDomain + '.' + cService;
end;

function TFielddto.IsNullProperty(aPropertyName: String): Boolean;
begin
  if SameText(aPropertyName, 'Id') then
  begin
    Result := FNullId;
    Exit;
  end;
  
  if SameText(aPropertyName, 'Name') then
  begin
    Result := FNullName;
    Exit;
  end;
  
  if SameText(aPropertyName, 'FieldType') then
  begin
    Result := FNullFieldType;
    Exit;
  end;
  
  if SameText(aPropertyName, 'Start') then
  begin
    Result := FNullStart;
    Exit;
  end;
  
  if SameText(aPropertyName, 'Size') then
  begin
    Result := FNullSize;
    Exit;
  end;
  
  if SameText(aPropertyName, 'MaskPattern') then
  begin
    Result := FNullMaskPattern;
    Exit;
  end;
  
  Result := False;
end;

procedure TFielddto.Validate;
var
  xValidated: TList;
begin
  xValidated := TList.Create;
  try
    Validate(xValidated);
  finally
    xValidated.Destroy;
  end;
end;

procedure TFielddto.Validate(aValidated: TList);
begin
  THelloWorldValidator.Validate(self, aValidated);
end;

{ THookdto }

procedure THookdto.SetHookFunction(aValue: THookFunction);
begin
  FHookFunction := aValue;
  FNullHookFunction := False;
end;

procedure THookdto.SetScript(aValue: String);
begin
  FScript := aValue;
  FNullScript := False;
end;

procedure THookdto.AfterConstruction;
begin
  inherited;
  FNullHookFunction := True;
  FNullScript := True;
end;

procedure THookdto.BeforeDestruction;
begin
  inherited;
end;

function THookdto.GetContext: String;
begin
  Result := cDomain + '.' + cService;
end;

function THookdto.IsNullProperty(aPropertyName: String): Boolean;
begin
  if SameText(aPropertyName, 'HookFunction') then
  begin
    Result := FNullHookFunction;
    Exit;
  end;
  
  if SameText(aPropertyName, 'Script') then
  begin
    Result := FNullScript;
    Exit;
  end;
  
  Result := False;
end;

procedure THookdto.Validate;
var
  xValidated: TList;
begin
  xValidated := TList.Create;
  try
    Validate(xValidated);
  finally
    xValidated.Destroy;
  end;
end;

procedure THookdto.Validate(aValidated: TList);
begin
  THelloWorldValidator.Validate(self, aValidated);
end;

{ TLayoutdto }

procedure TLayoutdto.SetId(aValue: Int64);
begin
  FId := aValue;
  FNullId := False;
end;

procedure TLayoutdto.SetDescription(aValue: String);
begin
  FDescription := aValue;
  FNullDescription := False;
end;

procedure TLayoutdto.SetFileFormat(aValue: TFileFormat);
begin
  FFileFormat := aValue;
  FNullFileFormat := False;
end;

procedure TLayoutdto.SetErrorStrategy(aValue: TErrorStrategy);
begin
  FErrorStrategy := aValue;
  FNullErrorStrategy := False;
end;

procedure TLayoutdto.SetDelimiter(aValue: String);
begin
  FDelimiter := aValue;
  FNullDelimiter := False;
end;

procedure TLayoutdto.SetSkipLines(aValue: Int64);
begin
  FSkipLines := aValue;
  FNullSkipLines := False;
end;

procedure TLayoutdto.AfterConstruction;
begin
  inherited;
  FNullId := True;
  FNullDescription := True;
  FNullFileFormat := True;
  FNullErrorStrategy := True;
  FNullDelimiter := True;
  FNullSkipLines := True;
  FFields := TSDLObjectList.Create(TFielddto);
  FHooks := TSDLObjectList.Create(THookdto);
end;

procedure TLayoutdto.BeforeDestruction;
begin
  FreeAndNil(FFields);
  FreeAndNil(FHooks);
  inherited;
end;

function TLayoutdto.GetContext: String;
begin
  Result := cDomain + '.' + cService;
end;

function TLayoutdto.IsNullProperty(aPropertyName: String): Boolean;
begin
  if SameText(aPropertyName, 'Id') then
  begin
    Result := FNullId;
    Exit;
  end;
  
  if SameText(aPropertyName, 'Description') then
  begin
    Result := FNullDescription;
    Exit;
  end;
  
  if SameText(aPropertyName, 'FileFormat') then
  begin
    Result := FNullFileFormat;
    Exit;
  end;
  
  if SameText(aPropertyName, 'ErrorStrategy') then
  begin
    Result := FNullErrorStrategy;
    Exit;
  end;
  
  if SameText(aPropertyName, 'Delimiter') then
  begin
    Result := FNullDelimiter;
    Exit;
  end;
  
  if SameText(aPropertyName, 'SkipLines') then
  begin
    Result := FNullSkipLines;
    Exit;
  end;
  
  Result := False;
end;

procedure TLayoutdto.Validate;
var
  xValidated: TList;
begin
  xValidated := TList.Create;
  try
    Validate(xValidated);
  finally
    xValidated.Destroy;
  end;
end;

procedure TLayoutdto.Validate(aValidated: TList);
begin
  THelloWorldValidator.Validate(self, aValidated);
end;

procedure TLayoutdto.AddFields(aItem: TFielddto);
begin
  FFields.Add(aItem);
end;		

procedure TLayoutdto.AddHooks(aItem: THookdto);
begin
  FHooks.Add(aItem);
end;		

function TLayoutdto.GetFields(aIndex: Integer): TFielddto;
begin
  Result := TFielddto(FFields[aIndex]);
end;		

function TLayoutdto.GetHooks(aIndex: Integer): THookdto;
begin
  Result := THookdto(FHooks[aIndex]);
end;		

{ TImportReport }

procedure TImportReport.SetId(aValue: String);
begin
  FId := aValue;
  FNullId := False;
end;

procedure TImportReport.SetUri(aValue: String);
begin
  FUri := aValue;
  FNullUri := False;
end;

procedure TImportReport.SetBeanClass(aValue: String);
begin
  FBeanClass := aValue;
  FNullBeanClass := False;
end;

procedure TImportReport.SetServiceClass(aValue: String);
begin
  FServiceClass := aValue;
  FNullServiceClass := False;
end;

procedure TImportReport.SetSucessCount(aValue: Int64);
begin
  FSucessCount := aValue;
  FNullSucessCount := False;
end;

procedure TImportReport.SetErrorsCount(aValue: Int64);
begin
  FErrorsCount := aValue;
  FNullErrorsCount := False;
end;

procedure TImportReport.SetFilteredCount(aValue: Int64);
begin
  FFilteredCount := aValue;
  FNullFilteredCount := False;
end;

procedure TImportReport.SetSkippedCount(aValue: Int64);
begin
  FSkippedCount := aValue;
  FNullSkippedCount := False;
end;

procedure TImportReport.AfterConstruction;
begin
  inherited;
  FNullId := True;
  FNullUri := True;
  FNullBeanClass := True;
  FNullServiceClass := True;
  FNullSucessCount := True;
  FNullErrorsCount := True;
  FNullFilteredCount := True;
  FNullSkippedCount := True;
  FStartTime := nil;
  FEndTime := nil;
  FLayout := nil;
  FImportErrors := TSDLObjectList.Create(TImportError);
end;

procedure TImportReport.BeforeDestruction;
begin
  FreeAndNil(FImportErrors);
  inherited;
end;

function TImportReport.GetContext: String;
begin
  Result := cDomain + '.' + cService;
end;

function TImportReport.IsNullProperty(aPropertyName: String): Boolean;
begin
  if SameText(aPropertyName, 'Id') then
  begin
    Result := FNullId;
    Exit;
  end;
  
  if SameText(aPropertyName, 'Uri') then
  begin
    Result := FNullUri;
    Exit;
  end;
  
  if SameText(aPropertyName, 'BeanClass') then
  begin
    Result := FNullBeanClass;
    Exit;
  end;
  
  if SameText(aPropertyName, 'ServiceClass') then
  begin
    Result := FNullServiceClass;
    Exit;
  end;
  
  if SameText(aPropertyName, 'SucessCount') then
  begin
    Result := FNullSucessCount;
    Exit;
  end;
  
  if SameText(aPropertyName, 'ErrorsCount') then
  begin
    Result := FNullErrorsCount;
    Exit;
  end;
  
  if SameText(aPropertyName, 'FilteredCount') then
  begin
    Result := FNullFilteredCount;
    Exit;
  end;
  
  if SameText(aPropertyName, 'SkippedCount') then
  begin
    Result := FNullSkippedCount;
    Exit;
  end;
  
  Result := False;
end;

procedure TImportReport.Validate;
var
  xValidated: TList;
begin
  xValidated := TList.Create;
  try
    Validate(xValidated);
  finally
    xValidated.Destroy;
  end;
end;

procedure TImportReport.Validate(aValidated: TList);
begin
  THelloWorldValidator.Validate(self, aValidated);
end;

procedure TImportReport.AddImportErrors(aItem: TImportError);
begin
  FImportErrors.Add(aItem);
end;		

function TImportReport.GetImportErrors(aIndex: Integer): TImportError;
begin
  Result := TImportError(FImportErrors[aIndex]);
end;		

{ TExportEventStatus }

procedure TExportEventStatus.SetImporterId(aValue: String);
begin
  FImporterId := aValue;
  FNullImporterId := False;
end;

procedure TExportEventStatus.SetEventType(aValue: TEventType);
begin
  FEventType := aValue;
  FNullEventType := False;
end;

procedure TExportEventStatus.SetRecordCount(aValue: Int64);
begin
  FRecordCount := aValue;
  FNullRecordCount := False;
end;

procedure TExportEventStatus.AfterConstruction;
begin
  inherited;
  FNullImporterId := True;
  FNullEventType := True;
  FNullRecordCount := True;
end;

procedure TExportEventStatus.BeforeDestruction;
begin
  inherited;
end;

function TExportEventStatus.GetContext: String;
begin
  Result := cDomain + '.' + cService;
end;

function TExportEventStatus.IsNullProperty(aPropertyName: String): Boolean;
begin
  if SameText(aPropertyName, 'ImporterId') then
  begin
    Result := FNullImporterId;
    Exit;
  end;
  
  if SameText(aPropertyName, 'EventType') then
  begin
    Result := FNullEventType;
    Exit;
  end;
  
  if SameText(aPropertyName, 'RecordCount') then
  begin
    Result := FNullRecordCount;
    Exit;
  end;
  
  Result := False;
end;

procedure TExportEventStatus.Validate;
var
  xValidated: TList;
begin
  xValidated := TList.Create;
  try
    Validate(xValidated);
  finally
    xValidated.Destroy;
  end;
end;

procedure TExportEventStatus.Validate(aValidated: TList);
begin
  THelloWorldValidator.Validate(self, aValidated);
end;

{ TImportEventStatus }

procedure TImportEventStatus.SetImporterId(aValue: String);
begin
  FImporterId := aValue;
  FNullImporterId := False;
end;

procedure TImportEventStatus.SetEventType(aValue: TEventType);
begin
  FEventType := aValue;
  FNullEventType := False;
end;

procedure TImportEventStatus.SetStatus(aValue: TStatus);
begin
  FStatus := aValue;
  FNullStatus := False;
end;

procedure TImportEventStatus.SetErrorMessage(aValue: String);
begin
  FErrorMessage := aValue;
  FNullErrorMessage := False;
end;

procedure TImportEventStatus.SetRecordCount(aValue: Int64);
begin
  FRecordCount := aValue;
  FNullRecordCount := False;
end;

procedure TImportEventStatus.AfterConstruction;
begin
  inherited;
  FNullImporterId := True;
  FNullEventType := True;
  FNullStatus := True;
  FNullErrorMessage := True;
  FNullRecordCount := True;
  FImportReport := nil;
end;

procedure TImportEventStatus.BeforeDestruction;
begin
  inherited;
end;

function TImportEventStatus.GetContext: String;
begin
  Result := cDomain + '.' + cService;
end;

function TImportEventStatus.IsNullProperty(aPropertyName: String): Boolean;
begin
  if SameText(aPropertyName, 'ImporterId') then
  begin
    Result := FNullImporterId;
    Exit;
  end;
  
  if SameText(aPropertyName, 'EventType') then
  begin
    Result := FNullEventType;
    Exit;
  end;
  
  if SameText(aPropertyName, 'Status') then
  begin
    Result := FNullStatus;
    Exit;
  end;
  
  if SameText(aPropertyName, 'ErrorMessage') then
  begin
    Result := FNullErrorMessage;
    Exit;
  end;
  
  if SameText(aPropertyName, 'RecordCount') then
  begin
    Result := FNullRecordCount;
    Exit;
  end;
  
  Result := False;
end;

procedure TImportEventStatus.Validate;
var
  xValidated: TList;
begin
  xValidated := TList.Create;
  try
    Validate(xValidated);
  finally
    xValidated.Destroy;
  end;
end;

procedure TImportEventStatus.Validate(aValidated: TList);
begin
  THelloWorldValidator.Validate(self, aValidated);
end;

{ TExportConfig }

procedure TExportConfig.SetUri(aValue: String);
begin
  FUri := aValue;
  FNullUri := False;
end;

procedure TExportConfig.SetAsync(aValue: Boolean);
begin
  FAsync := aValue;
  FNullAsync := False;
end;

procedure TExportConfig.SetErrorStrategy(aValue: String);
begin
  FErrorStrategy := aValue;
  FNullErrorStrategy := False;
end;

procedure TExportConfig.AfterConstruction;
begin
  inherited;
  FNullUri := True;
  FNullAsync := True;
  FNullErrorStrategy := True;
  FLayout := nil;
end;

procedure TExportConfig.BeforeDestruction;
begin
  inherited;
end;

function TExportConfig.GetContext: String;
begin
  Result := cDomain + '.' + cService;
end;

function TExportConfig.IsNullProperty(aPropertyName: String): Boolean;
begin
  if SameText(aPropertyName, 'Uri') then
  begin
    Result := FNullUri;
    Exit;
  end;
  
  if SameText(aPropertyName, 'Async') then
  begin
    Result := FNullAsync;
    Exit;
  end;
  
  if SameText(aPropertyName, 'ErrorStrategy') then
  begin
    Result := FNullErrorStrategy;
    Exit;
  end;
  
  Result := False;
end;

procedure TExportConfig.Validate;
var
  xValidated: TList;
begin
  xValidated := TList.Create;
  try
    Validate(xValidated);
  finally
    xValidated.Destroy;
  end;
end;

procedure TExportConfig.Validate(aValidated: TList);
begin
  THelloWorldValidator.Validate(self, aValidated);
end;

{ TImportConfig }

procedure TImportConfig.SetUri(aValue: String);
begin
  FUri := aValue;
  FNullUri := False;
end;

procedure TImportConfig.SetAsync(aValue: Boolean);
begin
  FAsync := aValue;
  FNullAsync := False;
end;

procedure TImportConfig.SetBatchSize(aValue: Int64);
begin
  FBatchSize := aValue;
  FNullBatchSize := False;
end;

procedure TImportConfig.SetErrorStrategy(aValue: TErrorStrategy);
begin
  FErrorStrategy := aValue;
  FNullErrorStrategy := False;
end;

procedure TImportConfig.AfterConstruction;
begin
  inherited;
  FNullUri := True;
  FNullAsync := True;
  FNullBatchSize := True;
  FNullErrorStrategy := True;
  FLayout := nil;
end;

procedure TImportConfig.BeforeDestruction;
begin
  inherited;
end;

function TImportConfig.GetContext: String;
begin
  Result := cDomain + '.' + cService;
end;

function TImportConfig.IsNullProperty(aPropertyName: String): Boolean;
begin
  if SameText(aPropertyName, 'Uri') then
  begin
    Result := FNullUri;
    Exit;
  end;
  
  if SameText(aPropertyName, 'Async') then
  begin
    Result := FNullAsync;
    Exit;
  end;
  
  if SameText(aPropertyName, 'BatchSize') then
  begin
    Result := FNullBatchSize;
    Exit;
  end;
  
  if SameText(aPropertyName, 'ErrorStrategy') then
  begin
    Result := FNullErrorStrategy;
    Exit;
  end;
  
  Result := False;
end;

procedure TImportConfig.Validate;
var
  xValidated: TList;
begin
  xValidated := TList.Create;
  try
    Validate(xValidated);
  finally
    xValidated.Destroy;
  end;
end;

procedure TImportConfig.Validate(aValidated: TList);
begin
  THelloWorldValidator.Validate(self, aValidated);
end;

{ TDependency }

procedure TDependency.SetDomain(aValue: String);
begin
  FDomain := aValue;
  FNullDomain := False;
end;

procedure TDependency.SetService(aValue: String);
begin
  FService := aValue;
  FNullService := False;
end;

procedure TDependency.SetVersion(aValue: String);
begin
  FVersion := aValue;
  FNullVersion := False;
end;

procedure TDependency.AfterConstruction;
begin
  inherited;
  FNullDomain := True;
  FNullService := True;
  FNullVersion := True;
end;

procedure TDependency.BeforeDestruction;
begin
  inherited;
end;

function TDependency.GetContext: String;
begin
  Result := cDomain + '.' + cService;
end;

function TDependency.IsNullProperty(aPropertyName: String): Boolean;
begin
  if SameText(aPropertyName, 'Domain') then
  begin
    Result := FNullDomain;
    Exit;
  end;
  
  if SameText(aPropertyName, 'Service') then
  begin
    Result := FNullService;
    Exit;
  end;
  
  if SameText(aPropertyName, 'Version') then
  begin
    Result := FNullVersion;
    Exit;
  end;
  
  Result := False;
end;

procedure TDependency.Validate;
var
  xValidated: TList;
begin
  xValidated := TList.Create;
  try
    Validate(xValidated);
  finally
    xValidated.Destroy;
  end;
end;

procedure TDependency.Validate(aValidated: TList);
begin
  THelloWorldValidator.Validate(self, aValidated);
end;


{ THelloWorldInput }

procedure THelloWorldInput.SetWho(aValue: String);
begin
  FWho := aValue;
  FNullWho := False;
end;

procedure THelloWorldInput.AfterConstruction;
begin
  inherited;
  FNullWho := True;
end;

procedure THelloWorldInput.BeforeDestruction;
begin
  inherited;
end;

function THelloWorldInput.GetContext: String;
begin
  Result := cDomain + '.' + cService;
end;

function THelloWorldInput.IsNullProperty(aPropertyName: String): Boolean;
begin
  if SameText(aPropertyName, 'Who') then
  begin
    Result := FNullWho;
    Exit;
  end;
  
  Result := False;
end;

procedure THelloWorldInput.Validate;
var
  xValidated: TList;
begin
  xValidated := TList.Create;
  try
    Validate(xValidated);
  finally
    xValidated.Destroy;
  end;
end;

procedure THelloWorldInput.Validate(aValidated: TList);
begin
  THelloWorldValidator.Validate(self, aValidated);
end;

{ THelloWorldOutput }

procedure THelloWorldOutput.SetHelloWorldMessage(aValue: String);
begin
  FHelloWorldMessage := aValue;
  FNullHelloWorldMessage := False;
end;

procedure THelloWorldOutput.AfterConstruction;
begin
  inherited;
  FNullHelloWorldMessage := True;
end;

procedure THelloWorldOutput.BeforeDestruction;
begin
  inherited;
end;

function THelloWorldOutput.GetContext: String;
begin
  Result := cDomain + '.' + cService;
end;

function THelloWorldOutput.IsNullProperty(aPropertyName: String): Boolean;
begin
  if SameText(aPropertyName, 'HelloWorldMessage') then
  begin
    Result := FNullHelloWorldMessage;
    Exit;
  end;
  
  Result := False;
end;

procedure THelloWorldOutput.Validate;
var
  xValidated: TList;
begin
  xValidated := TList.Create;
  try
    Validate(xValidated);
  finally
    xValidated.Destroy;
  end;
end;

procedure THelloWorldOutput.Validate(aValidated: TList);
begin
  THelloWorldValidator.Validate(self, aValidated);
end;

{ TListaItemManualInput }

procedure TListaItemManualInput.AfterConstruction;
begin
  inherited;
end;

procedure TListaItemManualInput.BeforeDestruction;
begin
  inherited;
end;

function TListaItemManualInput.GetContext: String;
begin
  Result := cDomain + '.' + cService;
end;

function TListaItemManualInput.IsNullProperty(aPropertyName: String): Boolean;
begin
  Result := False;
end;

procedure TListaItemManualInput.Validate;
var
  xValidated: TList;
begin
  xValidated := TList.Create;
  try
    Validate(xValidated);
  finally
    xValidated.Destroy;
  end;
end;

procedure TListaItemManualInput.Validate(aValidated: TList);
begin
  THelloWorldValidator.Validate(self, aValidated);
end;

{ TListaItemManualOutput }

procedure TListaItemManualOutput.AfterConstruction;
begin
  inherited;
  FListItens := TSDLObjectList.Create(TItem);
end;

procedure TListaItemManualOutput.BeforeDestruction;
begin
  FreeAndNil(FListItens);
  inherited;
end;

function TListaItemManualOutput.GetContext: String;
begin
  Result := cDomain + '.' + cService;
end;

function TListaItemManualOutput.IsNullProperty(aPropertyName: String): Boolean;
begin
  Result := False;
end;

procedure TListaItemManualOutput.Validate;
var
  xValidated: TList;
begin
  xValidated := TList.Create;
  try
    Validate(xValidated);
  finally
    xValidated.Destroy;
  end;
end;

procedure TListaItemManualOutput.Validate(aValidated: TList);
begin
  THelloWorldValidator.Validate(self, aValidated);
end;

procedure TListaItemManualOutput.AddListItens(aItem: TItem);
begin
  FListItens.Add(aItem);
end;		

function TListaItemManualOutput.GetListItens(aIndex: Integer): TItem;
begin
  Result := TItem(FListItens[aIndex]);
end;		

{ TGetMetadataInput }

procedure TGetMetadataInput.SetMetadataFormat(aValue: String);
begin
  FMetadataFormat := aValue;
  FNullMetadataFormat := False;
end;

procedure TGetMetadataInput.AfterConstruction;
begin
  inherited;
  FNullMetadataFormat := True;
end;

procedure TGetMetadataInput.BeforeDestruction;
begin
  inherited;
end;

function TGetMetadataInput.GetContext: String;
begin
  Result := cDomain + '.' + cService;
end;

function TGetMetadataInput.IsNullProperty(aPropertyName: String): Boolean;
begin
  if SameText(aPropertyName, 'MetadataFormat') then
  begin
    Result := FNullMetadataFormat;
    Exit;
  end;
  
  Result := False;
end;

procedure TGetMetadataInput.Validate;
var
  xValidated: TList;
begin
  xValidated := TList.Create;
  try
    Validate(xValidated);
  finally
    xValidated.Destroy;
  end;
end;

procedure TGetMetadataInput.Validate(aValidated: TList);
begin
  THelloWorldValidator.Validate(self, aValidated);
end;

{ TGetMetadataOutput }

procedure TGetMetadataOutput.SetMetadata(aValue: String);
begin
  FMetadata := aValue;
  FNullMetadata := False;
end;

procedure TGetMetadataOutput.AfterConstruction;
begin
  inherited;
  FNullMetadata := True;
end;

procedure TGetMetadataOutput.BeforeDestruction;
begin
  inherited;
end;

function TGetMetadataOutput.GetContext: String;
begin
  Result := cDomain + '.' + cService;
end;

function TGetMetadataOutput.IsNullProperty(aPropertyName: String): Boolean;
begin
  if SameText(aPropertyName, 'Metadata') then
  begin
    Result := FNullMetadata;
    Exit;
  end;
  
  Result := False;
end;

procedure TGetMetadataOutput.Validate;
var
  xValidated: TList;
begin
  xValidated := TList.Create;
  try
    Validate(xValidated);
  finally
    xValidated.Destroy;
  end;
end;

procedure TGetMetadataOutput.Validate(aValidated: TList);
begin
  THelloWorldValidator.Validate(self, aValidated);
end;

{ TImportClienteInput }

procedure TImportClienteInput.AfterConstruction;
begin
  inherited;
  FConfig := nil;
end;

procedure TImportClienteInput.BeforeDestruction;
begin
  inherited;
end;

function TImportClienteInput.GetContext: String;
begin
  Result := cDomain + '.' + cService;
end;

function TImportClienteInput.IsNullProperty(aPropertyName: String): Boolean;
begin
  Result := False;
end;

procedure TImportClienteInput.Validate;
var
  xValidated: TList;
begin
  xValidated := TList.Create;
  try
    Validate(xValidated);
  finally
    xValidated.Destroy;
  end;
end;

procedure TImportClienteInput.Validate(aValidated: TList);
begin
  THelloWorldValidator.Validate(self, aValidated);
end;

{ TImportClienteOutput }

procedure TImportClienteOutput.SetImportJobId(aValue: String);
begin
  FImportJobId := aValue;
  FNullImportJobId := False;
end;

procedure TImportClienteOutput.AfterConstruction;
begin
  inherited;
  FNullImportJobId := True;
end;

procedure TImportClienteOutput.BeforeDestruction;
begin
  inherited;
end;

function TImportClienteOutput.GetContext: String;
begin
  Result := cDomain + '.' + cService;
end;

function TImportClienteOutput.IsNullProperty(aPropertyName: String): Boolean;
begin
  if SameText(aPropertyName, 'ImportJobId') then
  begin
    Result := FNullImportJobId;
    Exit;
  end;
  
  Result := False;
end;

procedure TImportClienteOutput.Validate;
var
  xValidated: TList;
begin
  xValidated := TList.Create;
  try
    Validate(xValidated);
  finally
    xValidated.Destroy;
  end;
end;

procedure TImportClienteOutput.Validate(aValidated: TList);
begin
  THelloWorldValidator.Validate(self, aValidated);
end;

{ TExportClienteInput }

procedure TExportClienteInput.AfterConstruction;
begin
  inherited;
  FConfig := nil;
end;

procedure TExportClienteInput.BeforeDestruction;
begin
  inherited;
end;

function TExportClienteInput.GetContext: String;
begin
  Result := cDomain + '.' + cService;
end;

function TExportClienteInput.IsNullProperty(aPropertyName: String): Boolean;
begin
  Result := False;
end;

procedure TExportClienteInput.Validate;
var
  xValidated: TList;
begin
  xValidated := TList.Create;
  try
    Validate(xValidated);
  finally
    xValidated.Destroy;
  end;
end;

procedure TExportClienteInput.Validate(aValidated: TList);
begin
  THelloWorldValidator.Validate(self, aValidated);
end;

{ TExportClienteOutput }

procedure TExportClienteOutput.SetExportJobId(aValue: String);
begin
  FExportJobId := aValue;
  FNullExportJobId := False;
end;

procedure TExportClienteOutput.AfterConstruction;
begin
  inherited;
  FNullExportJobId := True;
end;

procedure TExportClienteOutput.BeforeDestruction;
begin
  inherited;
end;

function TExportClienteOutput.GetContext: String;
begin
  Result := cDomain + '.' + cService;
end;

function TExportClienteOutput.IsNullProperty(aPropertyName: String): Boolean;
begin
  if SameText(aPropertyName, 'ExportJobId') then
  begin
    Result := FNullExportJobId;
    Exit;
  end;
  
  Result := False;
end;

procedure TExportClienteOutput.Validate;
var
  xValidated: TList;
begin
  xValidated := TList.Create;
  try
    Validate(xValidated);
  finally
    xValidated.Destroy;
  end;
end;

procedure TExportClienteOutput.Validate(aValidated: TList);
begin
  THelloWorldValidator.Validate(self, aValidated);
end;

{ TImportItemInput }

procedure TImportItemInput.AfterConstruction;
begin
  inherited;
  FConfig := nil;
end;

procedure TImportItemInput.BeforeDestruction;
begin
  inherited;
end;

function TImportItemInput.GetContext: String;
begin
  Result := cDomain + '.' + cService;
end;

function TImportItemInput.IsNullProperty(aPropertyName: String): Boolean;
begin
  Result := False;
end;

procedure TImportItemInput.Validate;
var
  xValidated: TList;
begin
  xValidated := TList.Create;
  try
    Validate(xValidated);
  finally
    xValidated.Destroy;
  end;
end;

procedure TImportItemInput.Validate(aValidated: TList);
begin
  THelloWorldValidator.Validate(self, aValidated);
end;

{ TImportItemOutput }

procedure TImportItemOutput.SetImportJobId(aValue: String);
begin
  FImportJobId := aValue;
  FNullImportJobId := False;
end;

procedure TImportItemOutput.AfterConstruction;
begin
  inherited;
  FNullImportJobId := True;
end;

procedure TImportItemOutput.BeforeDestruction;
begin
  inherited;
end;

function TImportItemOutput.GetContext: String;
begin
  Result := cDomain + '.' + cService;
end;

function TImportItemOutput.IsNullProperty(aPropertyName: String): Boolean;
begin
  if SameText(aPropertyName, 'ImportJobId') then
  begin
    Result := FNullImportJobId;
    Exit;
  end;
  
  Result := False;
end;

procedure TImportItemOutput.Validate;
var
  xValidated: TList;
begin
  xValidated := TList.Create;
  try
    Validate(xValidated);
  finally
    xValidated.Destroy;
  end;
end;

procedure TImportItemOutput.Validate(aValidated: TList);
begin
  THelloWorldValidator.Validate(self, aValidated);
end;

{ TExportItemInput }

procedure TExportItemInput.AfterConstruction;
begin
  inherited;
  FConfig := nil;
end;

procedure TExportItemInput.BeforeDestruction;
begin
  inherited;
end;

function TExportItemInput.GetContext: String;
begin
  Result := cDomain + '.' + cService;
end;

function TExportItemInput.IsNullProperty(aPropertyName: String): Boolean;
begin
  Result := False;
end;

procedure TExportItemInput.Validate;
var
  xValidated: TList;
begin
  xValidated := TList.Create;
  try
    Validate(xValidated);
  finally
    xValidated.Destroy;
  end;
end;

procedure TExportItemInput.Validate(aValidated: TList);
begin
  THelloWorldValidator.Validate(self, aValidated);
end;

{ TExportItemOutput }

procedure TExportItemOutput.SetExportJobId(aValue: String);
begin
  FExportJobId := aValue;
  FNullExportJobId := False;
end;

procedure TExportItemOutput.AfterConstruction;
begin
  inherited;
  FNullExportJobId := True;
end;

procedure TExportItemOutput.BeforeDestruction;
begin
  inherited;
end;

function TExportItemOutput.GetContext: String;
begin
  Result := cDomain + '.' + cService;
end;

function TExportItemOutput.IsNullProperty(aPropertyName: String): Boolean;
begin
  if SameText(aPropertyName, 'ExportJobId') then
  begin
    Result := FNullExportJobId;
    Exit;
  end;
  
  Result := False;
end;

procedure TExportItemOutput.Validate;
var
  xValidated: TList;
begin
  xValidated := TList.Create;
  try
    Validate(xValidated);
  finally
    xValidated.Destroy;
  end;
end;

procedure TExportItemOutput.Validate(aValidated: TList);
begin
  THelloWorldValidator.Validate(self, aValidated);
end;

{ TImportPedidoInput }

procedure TImportPedidoInput.AfterConstruction;
begin
  inherited;
  FConfig := nil;
end;

procedure TImportPedidoInput.BeforeDestruction;
begin
  inherited;
end;

function TImportPedidoInput.GetContext: String;
begin
  Result := cDomain + '.' + cService;
end;

function TImportPedidoInput.IsNullProperty(aPropertyName: String): Boolean;
begin
  Result := False;
end;

procedure TImportPedidoInput.Validate;
var
  xValidated: TList;
begin
  xValidated := TList.Create;
  try
    Validate(xValidated);
  finally
    xValidated.Destroy;
  end;
end;

procedure TImportPedidoInput.Validate(aValidated: TList);
begin
  THelloWorldValidator.Validate(self, aValidated);
end;

{ TImportPedidoOutput }

procedure TImportPedidoOutput.SetImportJobId(aValue: String);
begin
  FImportJobId := aValue;
  FNullImportJobId := False;
end;

procedure TImportPedidoOutput.AfterConstruction;
begin
  inherited;
  FNullImportJobId := True;
end;

procedure TImportPedidoOutput.BeforeDestruction;
begin
  inherited;
end;

function TImportPedidoOutput.GetContext: String;
begin
  Result := cDomain + '.' + cService;
end;

function TImportPedidoOutput.IsNullProperty(aPropertyName: String): Boolean;
begin
  if SameText(aPropertyName, 'ImportJobId') then
  begin
    Result := FNullImportJobId;
    Exit;
  end;
  
  Result := False;
end;

procedure TImportPedidoOutput.Validate;
var
  xValidated: TList;
begin
  xValidated := TList.Create;
  try
    Validate(xValidated);
  finally
    xValidated.Destroy;
  end;
end;

procedure TImportPedidoOutput.Validate(aValidated: TList);
begin
  THelloWorldValidator.Validate(self, aValidated);
end;

{ TExportPedidoInput }

procedure TExportPedidoInput.AfterConstruction;
begin
  inherited;
  FConfig := nil;
end;

procedure TExportPedidoInput.BeforeDestruction;
begin
  inherited;
end;

function TExportPedidoInput.GetContext: String;
begin
  Result := cDomain + '.' + cService;
end;

function TExportPedidoInput.IsNullProperty(aPropertyName: String): Boolean;
begin
  Result := False;
end;

procedure TExportPedidoInput.Validate;
var
  xValidated: TList;
begin
  xValidated := TList.Create;
  try
    Validate(xValidated);
  finally
    xValidated.Destroy;
  end;
end;

procedure TExportPedidoInput.Validate(aValidated: TList);
begin
  THelloWorldValidator.Validate(self, aValidated);
end;

{ TExportPedidoOutput }

procedure TExportPedidoOutput.SetExportJobId(aValue: String);
begin
  FExportJobId := aValue;
  FNullExportJobId := False;
end;

procedure TExportPedidoOutput.AfterConstruction;
begin
  inherited;
  FNullExportJobId := True;
end;

procedure TExportPedidoOutput.BeforeDestruction;
begin
  inherited;
end;

function TExportPedidoOutput.GetContext: String;
begin
  Result := cDomain + '.' + cService;
end;

function TExportPedidoOutput.IsNullProperty(aPropertyName: String): Boolean;
begin
  if SameText(aPropertyName, 'ExportJobId') then
  begin
    Result := FNullExportJobId;
    Exit;
  end;
  
  Result := False;
end;

procedure TExportPedidoOutput.Validate;
var
  xValidated: TList;
begin
  xValidated := TList.Create;
  try
    Validate(xValidated);
  finally
    xValidated.Destroy;
  end;
end;

procedure TExportPedidoOutput.Validate(aValidated: TList);
begin
  THelloWorldValidator.Validate(self, aValidated);
end;

{ TCreateBulkClienteInput }

procedure TCreateBulkClienteInput.AfterConstruction;
begin
  inherited;
  FEntities := TSDLObjectList.Create(TCliente);
end;

procedure TCreateBulkClienteInput.BeforeDestruction;
begin
  FreeAndNil(FEntities);
  inherited;
end;

function TCreateBulkClienteInput.GetContext: String;
begin
  Result := cDomain + '.' + cService;
end;

function TCreateBulkClienteInput.IsNullProperty(aPropertyName: String): Boolean;
begin
  Result := False;
end;

procedure TCreateBulkClienteInput.Validate;
var
  xValidated: TList;
begin
  xValidated := TList.Create;
  try
    Validate(xValidated);
  finally
    xValidated.Destroy;
  end;
end;

procedure TCreateBulkClienteInput.Validate(aValidated: TList);
begin
  THelloWorldValidator.Validate(self, aValidated);
end;

procedure TCreateBulkClienteInput.AddEntities(aItem: TCliente);
begin
  FEntities.Add(aItem);
end;		

function TCreateBulkClienteInput.GetEntities(aIndex: Integer): TCliente;
begin
  Result := TCliente(FEntities[aIndex]);
end;		

{ TCreateBulkClienteOutput }

procedure TCreateBulkClienteOutput.AfterConstruction;
begin
  inherited;
end;

procedure TCreateBulkClienteOutput.BeforeDestruction;
begin
  inherited;
end;

function TCreateBulkClienteOutput.GetContext: String;
begin
  Result := cDomain + '.' + cService;
end;

function TCreateBulkClienteOutput.IsNullProperty(aPropertyName: String): Boolean;
begin
  Result := False;
end;

procedure TCreateBulkClienteOutput.Validate;
var
  xValidated: TList;
begin
  xValidated := TList.Create;
  try
    Validate(xValidated);
  finally
    xValidated.Destroy;
  end;
end;

procedure TCreateBulkClienteOutput.Validate(aValidated: TList);
begin
  THelloWorldValidator.Validate(self, aValidated);
end;

{ TCreateBulkItemInput }

procedure TCreateBulkItemInput.AfterConstruction;
begin
  inherited;
  FEntities := TSDLObjectList.Create(TItem);
end;

procedure TCreateBulkItemInput.BeforeDestruction;
begin
  FreeAndNil(FEntities);
  inherited;
end;

function TCreateBulkItemInput.GetContext: String;
begin
  Result := cDomain + '.' + cService;
end;

function TCreateBulkItemInput.IsNullProperty(aPropertyName: String): Boolean;
begin
  Result := False;
end;

procedure TCreateBulkItemInput.Validate;
var
  xValidated: TList;
begin
  xValidated := TList.Create;
  try
    Validate(xValidated);
  finally
    xValidated.Destroy;
  end;
end;

procedure TCreateBulkItemInput.Validate(aValidated: TList);
begin
  THelloWorldValidator.Validate(self, aValidated);
end;

procedure TCreateBulkItemInput.AddEntities(aItem: TItem);
begin
  FEntities.Add(aItem);
end;		

function TCreateBulkItemInput.GetEntities(aIndex: Integer): TItem;
begin
  Result := TItem(FEntities[aIndex]);
end;		

{ TCreateBulkItemOutput }

procedure TCreateBulkItemOutput.AfterConstruction;
begin
  inherited;
end;

procedure TCreateBulkItemOutput.BeforeDestruction;
begin
  inherited;
end;

function TCreateBulkItemOutput.GetContext: String;
begin
  Result := cDomain + '.' + cService;
end;

function TCreateBulkItemOutput.IsNullProperty(aPropertyName: String): Boolean;
begin
  Result := False;
end;

procedure TCreateBulkItemOutput.Validate;
var
  xValidated: TList;
begin
  xValidated := TList.Create;
  try
    Validate(xValidated);
  finally
    xValidated.Destroy;
  end;
end;

procedure TCreateBulkItemOutput.Validate(aValidated: TList);
begin
  THelloWorldValidator.Validate(self, aValidated);
end;

{ TCreateBulkPedidoInput }

procedure TCreateBulkPedidoInput.AfterConstruction;
begin
  inherited;
  FEntities := TSDLObjectList.Create(TPedido);
end;

procedure TCreateBulkPedidoInput.BeforeDestruction;
begin
  FreeAndNil(FEntities);
  inherited;
end;

function TCreateBulkPedidoInput.GetContext: String;
begin
  Result := cDomain + '.' + cService;
end;

function TCreateBulkPedidoInput.IsNullProperty(aPropertyName: String): Boolean;
begin
  Result := False;
end;

procedure TCreateBulkPedidoInput.Validate;
var
  xValidated: TList;
begin
  xValidated := TList.Create;
  try
    Validate(xValidated);
  finally
    xValidated.Destroy;
  end;
end;

procedure TCreateBulkPedidoInput.Validate(aValidated: TList);
begin
  THelloWorldValidator.Validate(self, aValidated);
end;

procedure TCreateBulkPedidoInput.AddEntities(aItem: TPedido);
begin
  FEntities.Add(aItem);
end;		

function TCreateBulkPedidoInput.GetEntities(aIndex: Integer): TPedido;
begin
  Result := TPedido(FEntities[aIndex]);
end;		

{ TCreateBulkPedidoOutput }

procedure TCreateBulkPedidoOutput.AfterConstruction;
begin
  inherited;
end;

procedure TCreateBulkPedidoOutput.BeforeDestruction;
begin
  inherited;
end;

function TCreateBulkPedidoOutput.GetContext: String;
begin
  Result := cDomain + '.' + cService;
end;

function TCreateBulkPedidoOutput.IsNullProperty(aPropertyName: String): Boolean;
begin
  Result := False;
end;

procedure TCreateBulkPedidoOutput.Validate;
var
  xValidated: TList;
begin
  xValidated := TList.Create;
  try
    Validate(xValidated);
  finally
    xValidated.Destroy;
  end;
end;

procedure TCreateBulkPedidoOutput.Validate(aValidated: TList);
begin
  THelloWorldValidator.Validate(self, aValidated);
end;

{ TGetDependenciesOutput }

procedure TGetDependenciesOutput.AfterConstruction;
begin
  inherited;
  FDependencies := TSDLObjectList.Create(TDependency);
end;

procedure TGetDependenciesOutput.BeforeDestruction;
begin
  FreeAndNil(FDependencies);
  inherited;
end;

function TGetDependenciesOutput.GetContext: String;
begin
  Result := cDomain + '.' + cService;
end;

function TGetDependenciesOutput.IsNullProperty(aPropertyName: String): Boolean;
begin
  Result := False;
end;

procedure TGetDependenciesOutput.Validate;
var
  xValidated: TList;
begin
  xValidated := TList.Create;
  try
    Validate(xValidated);
  finally
    xValidated.Destroy;
  end;
end;

procedure TGetDependenciesOutput.Validate(aValidated: TList);
begin
  THelloWorldValidator.Validate(self, aValidated);
end;

procedure TGetDependenciesOutput.AddDependencies(aItem: TDependency);
begin
  FDependencies.Add(aItem);
end;		

function TGetDependenciesOutput.GetDependencies(aIndex: Integer): TDependency;
begin
  Result := TDependency(FDependencies[aIndex]);
end;		

{ TServiceStartedPayload }

procedure TServiceStartedPayload.SetDomain(aValue: String);
begin
  FDomain := aValue;
  FNullDomain := False;
end;

procedure TServiceStartedPayload.SetService(aValue: String);
begin
  FService := aValue;
  FNullService := False;
end;

procedure TServiceStartedPayload.AfterConstruction;
begin
  inherited;
  FNullDomain := True;
  FNullService := True;
end;

procedure TServiceStartedPayload.BeforeDestruction;
begin
  inherited;
end;

function TServiceStartedPayload.GetContext: String;
begin
  Result := cDomain + '.' + cService;
end;

function TServiceStartedPayload.IsNullProperty(aPropertyName: String): Boolean;
begin
  if SameText(aPropertyName, 'Domain') then
  begin
    Result := FNullDomain;
    Exit;
  end;
  
  if SameText(aPropertyName, 'Service') then
  begin
    Result := FNullService;
    Exit;
  end;
  
  Result := False;
end;

procedure TServiceStartedPayload.Validate;
var
  xValidated: TList;
begin
  xValidated := TList.Create;
  try
    Validate(xValidated);
  finally
    xValidated.Destroy;
  end;
end;

procedure TServiceStartedPayload.Validate(aValidated: TList);
begin
  THelloWorldValidator.Validate(self, aValidated);
end;

{ TImportClienteEventPayload }

procedure TImportClienteEventPayload.AfterConstruction;
begin
  inherited;
  FEventpl := nil;
end;

procedure TImportClienteEventPayload.BeforeDestruction;
begin
  inherited;
end;

function TImportClienteEventPayload.GetContext: String;
begin
  Result := cDomain + '.' + cService;
end;

function TImportClienteEventPayload.IsNullProperty(aPropertyName: String): Boolean;
begin
  Result := False;
end;

procedure TImportClienteEventPayload.Validate;
var
  xValidated: TList;
begin
  xValidated := TList.Create;
  try
    Validate(xValidated);
  finally
    xValidated.Destroy;
  end;
end;

procedure TImportClienteEventPayload.Validate(aValidated: TList);
begin
  THelloWorldValidator.Validate(self, aValidated);
end;

{ TExportClienteEventPayload }

procedure TExportClienteEventPayload.AfterConstruction;
begin
  inherited;
  FEventpl := nil;
end;

procedure TExportClienteEventPayload.BeforeDestruction;
begin
  inherited;
end;

function TExportClienteEventPayload.GetContext: String;
begin
  Result := cDomain + '.' + cService;
end;

function TExportClienteEventPayload.IsNullProperty(aPropertyName: String): Boolean;
begin
  Result := False;
end;

procedure TExportClienteEventPayload.Validate;
var
  xValidated: TList;
begin
  xValidated := TList.Create;
  try
    Validate(xValidated);
  finally
    xValidated.Destroy;
  end;
end;

procedure TExportClienteEventPayload.Validate(aValidated: TList);
begin
  THelloWorldValidator.Validate(self, aValidated);
end;

{ TImportItemEventPayload }

procedure TImportItemEventPayload.AfterConstruction;
begin
  inherited;
  FEventpl := nil;
end;

procedure TImportItemEventPayload.BeforeDestruction;
begin
  inherited;
end;

function TImportItemEventPayload.GetContext: String;
begin
  Result := cDomain + '.' + cService;
end;

function TImportItemEventPayload.IsNullProperty(aPropertyName: String): Boolean;
begin
  Result := False;
end;

procedure TImportItemEventPayload.Validate;
var
  xValidated: TList;
begin
  xValidated := TList.Create;
  try
    Validate(xValidated);
  finally
    xValidated.Destroy;
  end;
end;

procedure TImportItemEventPayload.Validate(aValidated: TList);
begin
  THelloWorldValidator.Validate(self, aValidated);
end;

{ TExportItemEventPayload }

procedure TExportItemEventPayload.AfterConstruction;
begin
  inherited;
  FEventpl := nil;
end;

procedure TExportItemEventPayload.BeforeDestruction;
begin
  inherited;
end;

function TExportItemEventPayload.GetContext: String;
begin
  Result := cDomain + '.' + cService;
end;

function TExportItemEventPayload.IsNullProperty(aPropertyName: String): Boolean;
begin
  Result := False;
end;

procedure TExportItemEventPayload.Validate;
var
  xValidated: TList;
begin
  xValidated := TList.Create;
  try
    Validate(xValidated);
  finally
    xValidated.Destroy;
  end;
end;

procedure TExportItemEventPayload.Validate(aValidated: TList);
begin
  THelloWorldValidator.Validate(self, aValidated);
end;

{ TImportPedidoEventPayload }

procedure TImportPedidoEventPayload.AfterConstruction;
begin
  inherited;
  FEventpl := nil;
end;

procedure TImportPedidoEventPayload.BeforeDestruction;
begin
  inherited;
end;

function TImportPedidoEventPayload.GetContext: String;
begin
  Result := cDomain + '.' + cService;
end;

function TImportPedidoEventPayload.IsNullProperty(aPropertyName: String): Boolean;
begin
  Result := False;
end;

procedure TImportPedidoEventPayload.Validate;
var
  xValidated: TList;
begin
  xValidated := TList.Create;
  try
    Validate(xValidated);
  finally
    xValidated.Destroy;
  end;
end;

procedure TImportPedidoEventPayload.Validate(aValidated: TList);
begin
  THelloWorldValidator.Validate(self, aValidated);
end;

{ TExportPedidoEventPayload }

procedure TExportPedidoEventPayload.AfterConstruction;
begin
  inherited;
  FEventpl := nil;
end;

procedure TExportPedidoEventPayload.BeforeDestruction;
begin
  inherited;
end;

function TExportPedidoEventPayload.GetContext: String;
begin
  Result := cDomain + '.' + cService;
end;

function TExportPedidoEventPayload.IsNullProperty(aPropertyName: String): Boolean;
begin
  Result := False;
end;

procedure TExportPedidoEventPayload.Validate;
var
  xValidated: TList;
begin
  xValidated := TList.Create;
  try
    Validate(xValidated);
  finally
    xValidated.Destroy;
  end;
end;

procedure TExportPedidoEventPayload.Validate(aValidated: TList);
begin
  THelloWorldValidator.Validate(self, aValidated);
end;

{ THelloWorldValidator }
  
class procedure THelloWorldValidator.Validate(aToValidate: THelloWorldInput);
var
  xValidated: TList;
begin
  xValidated := TList.Create;
  try
    Validate(aToValidate, xValidated);
  finally
    xValidated.Destroy;
  end;
end;

class procedure THelloWorldValidator.Validate(aToValidate: THelloWorldInput; aValidated: TList);
begin
  if Contains(aValidated, aToValidate) then
    Exit;
  aValidated.Add(aToValidate);
  if (aToValidate.WhoIsNull) then
    raise EIllegalArgumentException.Create('Who is required');    
end;

class procedure THelloWorldValidator.Validate(aToValidate: THelloWorldOutput);
var
  xValidated: TList;
begin
  xValidated := TList.Create;
  try
    Validate(aToValidate, xValidated);
  finally
    xValidated.Destroy;
  end;
end;

class procedure THelloWorldValidator.Validate(aToValidate: THelloWorldOutput; aValidated: TList);
begin
  if Contains(aValidated, aToValidate) then
    Exit;
  aValidated.Add(aToValidate);
  if (aToValidate.HelloWorldMessageIsNull) then
    raise EIllegalArgumentException.Create('HelloWorldMessage is required');    
end;

class procedure THelloWorldValidator.Validate(aToValidate: TListaItemManualInput);
var
  xValidated: TList;
begin
  xValidated := TList.Create;
  try
    Validate(aToValidate, xValidated);
  finally
    xValidated.Destroy;
  end;
end;

class procedure THelloWorldValidator.Validate(aToValidate: TListaItemManualInput; aValidated: TList);
begin
  if Contains(aValidated, aToValidate) then
    Exit;
  aValidated.Add(aToValidate);
  // no validation required
end;

class procedure THelloWorldValidator.Validate(aToValidate: TListaItemManualOutput);
var
  xValidated: TList;
begin
  xValidated := TList.Create;
  try
    Validate(aToValidate, xValidated);
  finally
    xValidated.Destroy;
  end;
end;

class procedure THelloWorldValidator.Validate(aToValidate: TListaItemManualOutput; aValidated: TList);
var
  i: Integer;
begin
  if Contains(aValidated, aToValidate) then
    Exit;
  aValidated.Add(aToValidate);
  if (aToValidate.ListItens = nil) or (aToValidate.ListItens.Count = 0) then
    raise EIllegalArgumentException.Create('listItens is required, at least one value must be present');
  for i := 0 to aToValidate.ListItens.Count - 1 do
    Validate(TItem(aToValidate.ListItens[i]), aValidated);
end;

class procedure THelloWorldValidator.Validate(aToValidate: TCliente);
var
  xValidated: TList;
begin
  xValidated := TList.Create;
  try
    Validate(aToValidate, xValidated);
  finally
    xValidated.Destroy;
  end;
end;

class procedure THelloWorldValidator.Validate(aToValidate: TCliente; aValidated: TList);
begin
  if Contains(aValidated, aToValidate) then
    Exit;
  aValidated.Add(aToValidate);
  if (aToValidate.NomeIsNull) then
    raise EIllegalArgumentException.Create('Nome is required');    
  if (aToValidate.DataNascimento = nil) then
    raise EIllegalArgumentException.Create('DataNascimento is required');    
  if (aToValidate.CpfIsNull) then
    raise EIllegalArgumentException.Create('Cpf is required');    
end;

class procedure THelloWorldValidator.Validate(aToValidate: TItem);
var
  xValidated: TList;
begin
  xValidated := TList.Create;
  try
    Validate(aToValidate, xValidated);
  finally
    xValidated.Destroy;
  end;
end;

class procedure THelloWorldValidator.Validate(aToValidate: TItem; aValidated: TList);
begin
  if Contains(aValidated, aToValidate) then
    Exit;
  aValidated.Add(aToValidate);
  if (aToValidate.DescricaoIsNull) then
    raise EIllegalArgumentException.Create('Descricao is required');    
  if (aToValidate.QuantidadeIsNull) then
    raise EIllegalArgumentException.Create('Quantidade is required');    
  if (aToValidate.ValorUnitarioIsNull) then
    raise EIllegalArgumentException.Create('ValorUnitario is required');    
end;

class procedure THelloWorldValidator.Validate(aToValidate: TPedido);
var
  xValidated: TList;
begin
  xValidated := TList.Create;
  try
    Validate(aToValidate, xValidated);
  finally
    xValidated.Destroy;
  end;
end;

class procedure THelloWorldValidator.Validate(aToValidate: TPedido; aValidated: TList);
var
  i: Integer;
begin
  if Contains(aValidated, aToValidate) then
    Exit;
  aValidated.Add(aToValidate);
  if (aToValidate.Data = nil) then
    raise EIllegalArgumentException.Create('Data is required');    
  if (aToValidate.Cliente = nil) then
    raise EIllegalArgumentException.Create('Cliente is required');    
  Validate(aToValidate.Cliente, aValidated);
  if (aToValidate.Itens = nil) or (aToValidate.Itens.Count = 0) then
    raise EIllegalArgumentException.Create('itens is required, at least one value must be present');
  for i := 0 to aToValidate.Itens.Count - 1 do
    Validate(TItem(aToValidate.Itens[i]), aValidated);
end;

class procedure THelloWorldValidator.Validate(aToValidate: TServiceStartedPayload);
var
  xValidated: TList;
begin
  xValidated := TList.Create;
  try
    Validate(aToValidate, xValidated);
  finally
    xValidated.Destroy;
  end;
end;

class procedure THelloWorldValidator.Validate(aToValidate: TServiceStartedPayload; aValidated: TList);
begin
  if Contains(aValidated, aToValidate) then
    Exit;
  aValidated.Add(aToValidate);
  if (aToValidate.DomainIsNull) then
    raise EIllegalArgumentException.Create('Domain is required');    
  if (aToValidate.ServiceIsNull) then
    raise EIllegalArgumentException.Create('Service is required');    
end;

class procedure THelloWorldValidator.Validate(aToValidate: TNotifyUserEventPayload);
var
  xValidated: TList;
begin
  xValidated := TList.Create;
  try
    Validate(aToValidate, xValidated);
  finally
    xValidated.Destroy;
  end;
end;

class procedure THelloWorldValidator.Validate(aToValidate: TNotifyUserEventPayload; aValidated: TList);
begin
  if Contains(aValidated, aToValidate) then
    Exit;
  aValidated.Add(aToValidate);
  if (aToValidate.NotificationKindIsNull) then
    raise EIllegalArgumentException.Create('NotificationKind is required');    
  if (aToValidate.NotificationPriorityIsNull) then
    raise EIllegalArgumentException.Create('NotificationPriority is required');    
  if (aToValidate.NotificationSubjectIsNull) then
    raise EIllegalArgumentException.Create('NotificationSubject is required');    
  if (aToValidate.NotificationContentIsNull) then
    raise EIllegalArgumentException.Create('NotificationContent is required');    
  if (aToValidate.SourceDomainIsNull) then
    raise EIllegalArgumentException.Create('SourceDomain is required');    
  if (aToValidate.SourceServiceIsNull) then
    raise EIllegalArgumentException.Create('SourceService is required');    
  if (aToValidate.DestinationUserIsNull) then
    raise EIllegalArgumentException.Create('DestinationUser is required');    
end;

class procedure THelloWorldValidator.Validate(aToValidate: TEmailNotifyUserEventPayload);
var
  xValidated: TList;
begin
  xValidated := TList.Create;
  try
    Validate(aToValidate, xValidated);
  finally
    xValidated.Destroy;
  end;
end;

class procedure THelloWorldValidator.Validate(aToValidate: TEmailNotifyUserEventPayload; aValidated: TList);
begin
  if Contains(aValidated, aToValidate) then
    Exit;
  aValidated.Add(aToValidate);
  Validate(TNotifyUserEventPayload(aToValidate), aValidated);
  if (aToValidate.FromIsNull) then
    raise EIllegalArgumentException.Create('From is required');    
end;

class procedure THelloWorldValidator.Validate(aToValidate: TPushNotifyUserEventPayload);
var
  xValidated: TList;
begin
  xValidated := TList.Create;
  try
    Validate(aToValidate, xValidated);
  finally
    xValidated.Destroy;
  end;
end;

class procedure THelloWorldValidator.Validate(aToValidate: TPushNotifyUserEventPayload; aValidated: TList);
begin
  if Contains(aValidated, aToValidate) then
    Exit;
  aValidated.Add(aToValidate);
  Validate(TNotifyUserEventPayload(aToValidate), aValidated);
  if (aToValidate.ApplicationIdIsNull) then
    raise EIllegalArgumentException.Create('ApplicationId is required');    
end;

class procedure THelloWorldValidator.Validate(aToValidate: TGetMetadataInput);
var
  xValidated: TList;
begin
  xValidated := TList.Create;
  try
    Validate(aToValidate, xValidated);
  finally
    xValidated.Destroy;
  end;
end;

class procedure THelloWorldValidator.Validate(aToValidate: TGetMetadataInput; aValidated: TList);
begin
  if Contains(aValidated, aToValidate) then
    Exit;
  aValidated.Add(aToValidate);
  // no validation required
end;

class procedure THelloWorldValidator.Validate(aToValidate: TGetMetadataOutput);
var
  xValidated: TList;
begin
  xValidated := TList.Create;
  try
    Validate(aToValidate, xValidated);
  finally
    xValidated.Destroy;
  end;
end;

class procedure THelloWorldValidator.Validate(aToValidate: TGetMetadataOutput; aValidated: TList);
begin
  if Contains(aValidated, aToValidate) then
    Exit;
  aValidated.Add(aToValidate);
  if (aToValidate.MetadataIsNull) then
    raise EIllegalArgumentException.Create('Metadata is required');    
end;

class procedure THelloWorldValidator.Validate(aToValidate: TBlobReference);
var
  xValidated: TList;
begin
  xValidated := TList.Create;
  try
    Validate(aToValidate, xValidated);
  finally
    xValidated.Destroy;
  end;
end;

class procedure THelloWorldValidator.Validate(aToValidate: TBlobReference; aValidated: TList);
begin
  if Contains(aValidated, aToValidate) then
    Exit;
  aValidated.Add(aToValidate);
  if (aToValidate.TargetObjectIdIsNull) then
    raise EIllegalArgumentException.Create('TargetObjectId is required');    
end;

class procedure THelloWorldValidator.Validate(aToValidate: TBasicErrorPayload);
var
  xValidated: TList;
begin
  xValidated := TList.Create;
  try
    Validate(aToValidate, xValidated);
  finally
    xValidated.Destroy;
  end;
end;

class procedure THelloWorldValidator.Validate(aToValidate: TBasicErrorPayload; aValidated: TList);
begin
  if Contains(aValidated, aToValidate) then
    Exit;
  aValidated.Add(aToValidate);
  // no validation required
end;

class procedure THelloWorldValidator.Validate(aToValidate: TImportError);
var
  xValidated: TList;
begin
  xValidated := TList.Create;
  try
    Validate(aToValidate, xValidated);
  finally
    xValidated.Destroy;
  end;
end;

class procedure THelloWorldValidator.Validate(aToValidate: TImportError; aValidated: TList);
begin
  if Contains(aValidated, aToValidate) then
    Exit;
  aValidated.Add(aToValidate);
  if (aToValidate.ErrorTypeIsNull) then
    raise EIllegalArgumentException.Create('ErrorType is required');    
  if (aToValidate.LineNumberIsNull) then
    raise EIllegalArgumentException.Create('LineNumber is required');    
  if (aToValidate.BeanIsNull) then
    raise EIllegalArgumentException.Create('Bean is required');    
  if (aToValidate.MessageIsNull) then
    raise EIllegalArgumentException.Create('Message is required');    
  if (aToValidate.ExceptionClassIsNull) then
    raise EIllegalArgumentException.Create('ExceptionClass is required');    
end;

class procedure THelloWorldValidator.Validate(aToValidate: TFielddto);
var
  xValidated: TList;
begin
  xValidated := TList.Create;
  try
    Validate(aToValidate, xValidated);
  finally
    xValidated.Destroy;
  end;
end;

class procedure THelloWorldValidator.Validate(aToValidate: TFielddto; aValidated: TList);
begin
  if Contains(aValidated, aToValidate) then
    Exit;
  aValidated.Add(aToValidate);
  if (aToValidate.IdIsNull) then
    raise EIllegalArgumentException.Create('Id is required');    
  if (aToValidate.NameIsNull) then
    raise EIllegalArgumentException.Create('Name is required');    
  if (aToValidate.FieldTypeIsNull) then
    raise EIllegalArgumentException.Create('FieldType is required');    
end;

class procedure THelloWorldValidator.Validate(aToValidate: THookdto);
var
  xValidated: TList;
begin
  xValidated := TList.Create;
  try
    Validate(aToValidate, xValidated);
  finally
    xValidated.Destroy;
  end;
end;

class procedure THelloWorldValidator.Validate(aToValidate: THookdto; aValidated: TList);
begin
  if Contains(aValidated, aToValidate) then
    Exit;
  aValidated.Add(aToValidate);
  if (aToValidate.HookFunctionIsNull) then
    raise EIllegalArgumentException.Create('HookFunction is required');    
  if (aToValidate.ScriptIsNull) then
    raise EIllegalArgumentException.Create('Script is required');    
end;

class procedure THelloWorldValidator.Validate(aToValidate: TLayoutdto);
var
  xValidated: TList;
begin
  xValidated := TList.Create;
  try
    Validate(aToValidate, xValidated);
  finally
    xValidated.Destroy;
  end;
end;

class procedure THelloWorldValidator.Validate(aToValidate: TLayoutdto; aValidated: TList);
var
  i: Integer;
begin
  if Contains(aValidated, aToValidate) then
    Exit;
  aValidated.Add(aToValidate);
  if (aToValidate.IdIsNull) then
    raise EIllegalArgumentException.Create('Id is required');    
  if (aToValidate.DescriptionIsNull) then
    raise EIllegalArgumentException.Create('Description is required');    
  if (aToValidate.FileFormatIsNull) then
    raise EIllegalArgumentException.Create('FileFormat is required');    
  if (aToValidate.ErrorStrategyIsNull) then
    raise EIllegalArgumentException.Create('ErrorStrategy is required');    
  if (aToValidate.SkipLinesIsNull) then
    raise EIllegalArgumentException.Create('SkipLines is required');    
  if (aToValidate.Fields = nil) or (aToValidate.Fields.Count = 0) then
    raise EIllegalArgumentException.Create('fields is required, at least one value must be present');
  for i := 0 to aToValidate.Fields.Count - 1 do
    Validate(TFielddto(aToValidate.Fields[i]), aValidated);
  if (aToValidate.Hooks <> nil) then
    for i := 0 to aToValidate.Hooks.Count - 1 do
      Validate(THookdto(aToValidate.Hooks[i]), aValidated);
end;

class procedure THelloWorldValidator.Validate(aToValidate: TImportReport);
var
  xValidated: TList;
begin
  xValidated := TList.Create;
  try
    Validate(aToValidate, xValidated);
  finally
    xValidated.Destroy;
  end;
end;

class procedure THelloWorldValidator.Validate(aToValidate: TImportReport; aValidated: TList);
var
  i: Integer;
begin
  if Contains(aValidated, aToValidate) then
    Exit;
  aValidated.Add(aToValidate);
  if (aToValidate.IdIsNull) then
    raise EIllegalArgumentException.Create('Id is required');    
  if (aToValidate.StartTime = nil) then
    raise EIllegalArgumentException.Create('StartTime is required');    
  if (aToValidate.EndTime = nil) then
    raise EIllegalArgumentException.Create('EndTime is required');    
  if (aToValidate.UriIsNull) then
    raise EIllegalArgumentException.Create('Uri is required');    
  if (aToValidate.BeanClassIsNull) then
    raise EIllegalArgumentException.Create('BeanClass is required');    
  if (aToValidate.ServiceClassIsNull) then
    raise EIllegalArgumentException.Create('ServiceClass is required');    
  if (aToValidate.Layout = nil) then
    raise EIllegalArgumentException.Create('Layout is required');    
  Validate(aToValidate.Layout, aValidated);
  if (aToValidate.SucessCountIsNull) then
    raise EIllegalArgumentException.Create('SucessCount is required');    
  if (aToValidate.ErrorsCountIsNull) then
    raise EIllegalArgumentException.Create('ErrorsCount is required');    
  if (aToValidate.FilteredCountIsNull) then
    raise EIllegalArgumentException.Create('FilteredCount is required');    
  if (aToValidate.SkippedCountIsNull) then
    raise EIllegalArgumentException.Create('SkippedCount is required');    
  if (aToValidate.ImportErrors <> nil) then
    for i := 0 to aToValidate.ImportErrors.Count - 1 do
      Validate(TImportError(aToValidate.ImportErrors[i]), aValidated);
end;

class procedure THelloWorldValidator.Validate(aToValidate: TExportEventStatus);
var
  xValidated: TList;
begin
  xValidated := TList.Create;
  try
    Validate(aToValidate, xValidated);
  finally
    xValidated.Destroy;
  end;
end;

class procedure THelloWorldValidator.Validate(aToValidate: TExportEventStatus; aValidated: TList);
begin
  if Contains(aValidated, aToValidate) then
    Exit;
  aValidated.Add(aToValidate);
  if (aToValidate.ImporterIdIsNull) then
    raise EIllegalArgumentException.Create('ImporterId is required');    
  if (aToValidate.EventTypeIsNull) then
    raise EIllegalArgumentException.Create('EventType is required');    
  if (aToValidate.RecordCountIsNull) then
    raise EIllegalArgumentException.Create('RecordCount is required');    
end;

class procedure THelloWorldValidator.Validate(aToValidate: TImportEventStatus);
var
  xValidated: TList;
begin
  xValidated := TList.Create;
  try
    Validate(aToValidate, xValidated);
  finally
    xValidated.Destroy;
  end;
end;

class procedure THelloWorldValidator.Validate(aToValidate: TImportEventStatus; aValidated: TList);
begin
  if Contains(aValidated, aToValidate) then
    Exit;
  aValidated.Add(aToValidate);
  if (aToValidate.ImporterIdIsNull) then
    raise EIllegalArgumentException.Create('ImporterId is required');    
  if (aToValidate.EventTypeIsNull) then
    raise EIllegalArgumentException.Create('EventType is required');    
  if (aToValidate.StatusIsNull) then
    raise EIllegalArgumentException.Create('Status is required');    
  if (aToValidate.RecordCountIsNull) then
    raise EIllegalArgumentException.Create('RecordCount is required');    
  if (aToValidate.ImportReport <> nil) then
    Validate(aToValidate.ImportReport, aValidated);
end;

class procedure THelloWorldValidator.Validate(aToValidate: TExportConfig);
var
  xValidated: TList;
begin
  xValidated := TList.Create;
  try
    Validate(aToValidate, xValidated);
  finally
    xValidated.Destroy;
  end;
end;

class procedure THelloWorldValidator.Validate(aToValidate: TExportConfig; aValidated: TList);
begin
  if Contains(aValidated, aToValidate) then
    Exit;
  aValidated.Add(aToValidate);
  if (aToValidate.UriIsNull) then
    raise EIllegalArgumentException.Create('Uri is required');    
  if (aToValidate.Layout = nil) then
    raise EIllegalArgumentException.Create('Layout is required');    
  Validate(aToValidate.Layout, aValidated);
  if (aToValidate.AsyncIsNull) then
    raise EIllegalArgumentException.Create('Async is required');    
  if (aToValidate.ErrorStrategyIsNull) then
    raise EIllegalArgumentException.Create('ErrorStrategy is required');    
end;

class procedure THelloWorldValidator.Validate(aToValidate: TImportConfig);
var
  xValidated: TList;
begin
  xValidated := TList.Create;
  try
    Validate(aToValidate, xValidated);
  finally
    xValidated.Destroy;
  end;
end;

class procedure THelloWorldValidator.Validate(aToValidate: TImportConfig; aValidated: TList);
begin
  if Contains(aValidated, aToValidate) then
    Exit;
  aValidated.Add(aToValidate);
  if (aToValidate.UriIsNull) then
    raise EIllegalArgumentException.Create('Uri is required');    
  if (aToValidate.Layout = nil) then
    raise EIllegalArgumentException.Create('Layout is required');    
  Validate(aToValidate.Layout, aValidated);
  if (aToValidate.AsyncIsNull) then
    raise EIllegalArgumentException.Create('Async is required');    
  if (aToValidate.BatchSizeIsNull) then
    raise EIllegalArgumentException.Create('BatchSize is required');    
  if (aToValidate.ErrorStrategyIsNull) then
    raise EIllegalArgumentException.Create('ErrorStrategy is required');    
end;

class procedure THelloWorldValidator.Validate(aToValidate: TImportClienteInput);
var
  xValidated: TList;
begin
  xValidated := TList.Create;
  try
    Validate(aToValidate, xValidated);
  finally
    xValidated.Destroy;
  end;
end;

class procedure THelloWorldValidator.Validate(aToValidate: TImportClienteInput; aValidated: TList);
begin
  if Contains(aValidated, aToValidate) then
    Exit;
  aValidated.Add(aToValidate);
  if (aToValidate.Config = nil) then
    raise EIllegalArgumentException.Create('Config is required');    
  Validate(aToValidate.Config, aValidated);
end;

class procedure THelloWorldValidator.Validate(aToValidate: TImportClienteOutput);
var
  xValidated: TList;
begin
  xValidated := TList.Create;
  try
    Validate(aToValidate, xValidated);
  finally
    xValidated.Destroy;
  end;
end;

class procedure THelloWorldValidator.Validate(aToValidate: TImportClienteOutput; aValidated: TList);
begin
  if Contains(aValidated, aToValidate) then
    Exit;
  aValidated.Add(aToValidate);
  if (aToValidate.ImportJobIdIsNull) then
    raise EIllegalArgumentException.Create('ImportJobId is required');    
end;

class procedure THelloWorldValidator.Validate(aToValidate: TExportClienteInput);
var
  xValidated: TList;
begin
  xValidated := TList.Create;
  try
    Validate(aToValidate, xValidated);
  finally
    xValidated.Destroy;
  end;
end;

class procedure THelloWorldValidator.Validate(aToValidate: TExportClienteInput; aValidated: TList);
begin
  if Contains(aValidated, aToValidate) then
    Exit;
  aValidated.Add(aToValidate);
  if (aToValidate.Config = nil) then
    raise EIllegalArgumentException.Create('Config is required');    
  Validate(aToValidate.Config, aValidated);
end;

class procedure THelloWorldValidator.Validate(aToValidate: TExportClienteOutput);
var
  xValidated: TList;
begin
  xValidated := TList.Create;
  try
    Validate(aToValidate, xValidated);
  finally
    xValidated.Destroy;
  end;
end;

class procedure THelloWorldValidator.Validate(aToValidate: TExportClienteOutput; aValidated: TList);
begin
  if Contains(aValidated, aToValidate) then
    Exit;
  aValidated.Add(aToValidate);
  if (aToValidate.ExportJobIdIsNull) then
    raise EIllegalArgumentException.Create('ExportJobId is required');    
end;

class procedure THelloWorldValidator.Validate(aToValidate: TImportClienteEventPayload);
var
  xValidated: TList;
begin
  xValidated := TList.Create;
  try
    Validate(aToValidate, xValidated);
  finally
    xValidated.Destroy;
  end;
end;

class procedure THelloWorldValidator.Validate(aToValidate: TImportClienteEventPayload; aValidated: TList);
begin
  if Contains(aValidated, aToValidate) then
    Exit;
  aValidated.Add(aToValidate);
  if (aToValidate.Eventpl = nil) then
    raise EIllegalArgumentException.Create('Eventpl is required');    
  Validate(aToValidate.Eventpl, aValidated);
end;

class procedure THelloWorldValidator.Validate(aToValidate: TExportClienteEventPayload);
var
  xValidated: TList;
begin
  xValidated := TList.Create;
  try
    Validate(aToValidate, xValidated);
  finally
    xValidated.Destroy;
  end;
end;

class procedure THelloWorldValidator.Validate(aToValidate: TExportClienteEventPayload; aValidated: TList);
begin
  if Contains(aValidated, aToValidate) then
    Exit;
  aValidated.Add(aToValidate);
  if (aToValidate.Eventpl = nil) then
    raise EIllegalArgumentException.Create('Eventpl is required');    
  Validate(aToValidate.Eventpl, aValidated);
end;

class procedure THelloWorldValidator.Validate(aToValidate: TImportItemInput);
var
  xValidated: TList;
begin
  xValidated := TList.Create;
  try
    Validate(aToValidate, xValidated);
  finally
    xValidated.Destroy;
  end;
end;

class procedure THelloWorldValidator.Validate(aToValidate: TImportItemInput; aValidated: TList);
begin
  if Contains(aValidated, aToValidate) then
    Exit;
  aValidated.Add(aToValidate);
  if (aToValidate.Config = nil) then
    raise EIllegalArgumentException.Create('Config is required');    
  Validate(aToValidate.Config, aValidated);
end;

class procedure THelloWorldValidator.Validate(aToValidate: TImportItemOutput);
var
  xValidated: TList;
begin
  xValidated := TList.Create;
  try
    Validate(aToValidate, xValidated);
  finally
    xValidated.Destroy;
  end;
end;

class procedure THelloWorldValidator.Validate(aToValidate: TImportItemOutput; aValidated: TList);
begin
  if Contains(aValidated, aToValidate) then
    Exit;
  aValidated.Add(aToValidate);
  if (aToValidate.ImportJobIdIsNull) then
    raise EIllegalArgumentException.Create('ImportJobId is required');    
end;

class procedure THelloWorldValidator.Validate(aToValidate: TExportItemInput);
var
  xValidated: TList;
begin
  xValidated := TList.Create;
  try
    Validate(aToValidate, xValidated);
  finally
    xValidated.Destroy;
  end;
end;

class procedure THelloWorldValidator.Validate(aToValidate: TExportItemInput; aValidated: TList);
begin
  if Contains(aValidated, aToValidate) then
    Exit;
  aValidated.Add(aToValidate);
  if (aToValidate.Config = nil) then
    raise EIllegalArgumentException.Create('Config is required');    
  Validate(aToValidate.Config, aValidated);
end;

class procedure THelloWorldValidator.Validate(aToValidate: TExportItemOutput);
var
  xValidated: TList;
begin
  xValidated := TList.Create;
  try
    Validate(aToValidate, xValidated);
  finally
    xValidated.Destroy;
  end;
end;

class procedure THelloWorldValidator.Validate(aToValidate: TExportItemOutput; aValidated: TList);
begin
  if Contains(aValidated, aToValidate) then
    Exit;
  aValidated.Add(aToValidate);
  if (aToValidate.ExportJobIdIsNull) then
    raise EIllegalArgumentException.Create('ExportJobId is required');    
end;

class procedure THelloWorldValidator.Validate(aToValidate: TImportItemEventPayload);
var
  xValidated: TList;
begin
  xValidated := TList.Create;
  try
    Validate(aToValidate, xValidated);
  finally
    xValidated.Destroy;
  end;
end;

class procedure THelloWorldValidator.Validate(aToValidate: TImportItemEventPayload; aValidated: TList);
begin
  if Contains(aValidated, aToValidate) then
    Exit;
  aValidated.Add(aToValidate);
  if (aToValidate.Eventpl = nil) then
    raise EIllegalArgumentException.Create('Eventpl is required');    
  Validate(aToValidate.Eventpl, aValidated);
end;

class procedure THelloWorldValidator.Validate(aToValidate: TExportItemEventPayload);
var
  xValidated: TList;
begin
  xValidated := TList.Create;
  try
    Validate(aToValidate, xValidated);
  finally
    xValidated.Destroy;
  end;
end;

class procedure THelloWorldValidator.Validate(aToValidate: TExportItemEventPayload; aValidated: TList);
begin
  if Contains(aValidated, aToValidate) then
    Exit;
  aValidated.Add(aToValidate);
  if (aToValidate.Eventpl = nil) then
    raise EIllegalArgumentException.Create('Eventpl is required');    
  Validate(aToValidate.Eventpl, aValidated);
end;

class procedure THelloWorldValidator.Validate(aToValidate: TImportPedidoInput);
var
  xValidated: TList;
begin
  xValidated := TList.Create;
  try
    Validate(aToValidate, xValidated);
  finally
    xValidated.Destroy;
  end;
end;

class procedure THelloWorldValidator.Validate(aToValidate: TImportPedidoInput; aValidated: TList);
begin
  if Contains(aValidated, aToValidate) then
    Exit;
  aValidated.Add(aToValidate);
  if (aToValidate.Config = nil) then
    raise EIllegalArgumentException.Create('Config is required');    
  Validate(aToValidate.Config, aValidated);
end;

class procedure THelloWorldValidator.Validate(aToValidate: TImportPedidoOutput);
var
  xValidated: TList;
begin
  xValidated := TList.Create;
  try
    Validate(aToValidate, xValidated);
  finally
    xValidated.Destroy;
  end;
end;

class procedure THelloWorldValidator.Validate(aToValidate: TImportPedidoOutput; aValidated: TList);
begin
  if Contains(aValidated, aToValidate) then
    Exit;
  aValidated.Add(aToValidate);
  if (aToValidate.ImportJobIdIsNull) then
    raise EIllegalArgumentException.Create('ImportJobId is required');    
end;

class procedure THelloWorldValidator.Validate(aToValidate: TExportPedidoInput);
var
  xValidated: TList;
begin
  xValidated := TList.Create;
  try
    Validate(aToValidate, xValidated);
  finally
    xValidated.Destroy;
  end;
end;

class procedure THelloWorldValidator.Validate(aToValidate: TExportPedidoInput; aValidated: TList);
begin
  if Contains(aValidated, aToValidate) then
    Exit;
  aValidated.Add(aToValidate);
  if (aToValidate.Config = nil) then
    raise EIllegalArgumentException.Create('Config is required');    
  Validate(aToValidate.Config, aValidated);
end;

class procedure THelloWorldValidator.Validate(aToValidate: TExportPedidoOutput);
var
  xValidated: TList;
begin
  xValidated := TList.Create;
  try
    Validate(aToValidate, xValidated);
  finally
    xValidated.Destroy;
  end;
end;

class procedure THelloWorldValidator.Validate(aToValidate: TExportPedidoOutput; aValidated: TList);
begin
  if Contains(aValidated, aToValidate) then
    Exit;
  aValidated.Add(aToValidate);
  if (aToValidate.ExportJobIdIsNull) then
    raise EIllegalArgumentException.Create('ExportJobId is required');    
end;

class procedure THelloWorldValidator.Validate(aToValidate: TImportPedidoEventPayload);
var
  xValidated: TList;
begin
  xValidated := TList.Create;
  try
    Validate(aToValidate, xValidated);
  finally
    xValidated.Destroy;
  end;
end;

class procedure THelloWorldValidator.Validate(aToValidate: TImportPedidoEventPayload; aValidated: TList);
begin
  if Contains(aValidated, aToValidate) then
    Exit;
  aValidated.Add(aToValidate);
  if (aToValidate.Eventpl = nil) then
    raise EIllegalArgumentException.Create('Eventpl is required');    
  Validate(aToValidate.Eventpl, aValidated);
end;

class procedure THelloWorldValidator.Validate(aToValidate: TExportPedidoEventPayload);
var
  xValidated: TList;
begin
  xValidated := TList.Create;
  try
    Validate(aToValidate, xValidated);
  finally
    xValidated.Destroy;
  end;
end;

class procedure THelloWorldValidator.Validate(aToValidate: TExportPedidoEventPayload; aValidated: TList);
begin
  if Contains(aValidated, aToValidate) then
    Exit;
  aValidated.Add(aToValidate);
  if (aToValidate.Eventpl = nil) then
    raise EIllegalArgumentException.Create('Eventpl is required');    
  Validate(aToValidate.Eventpl, aValidated);
end;

class procedure THelloWorldValidator.Validate(aToValidate: TCreateBulkClienteInput);
var
  xValidated: TList;
begin
  xValidated := TList.Create;
  try
    Validate(aToValidate, xValidated);
  finally
    xValidated.Destroy;
  end;
end;

class procedure THelloWorldValidator.Validate(aToValidate: TCreateBulkClienteInput; aValidated: TList);
begin
  if Contains(aValidated, aToValidate) then
    Exit;
  aValidated.Add(aToValidate);
  if (aToValidate.Entities = nil) or (aToValidate.Entities.Count = 0) then
    raise EIllegalArgumentException.Create('entities is required, at least one value must be present');
end;

class procedure THelloWorldValidator.Validate(aToValidate: TCreateBulkClienteOutput);
var
  xValidated: TList;
begin
  xValidated := TList.Create;
  try
    Validate(aToValidate, xValidated);
  finally
    xValidated.Destroy;
  end;
end;

class procedure THelloWorldValidator.Validate(aToValidate: TCreateBulkClienteOutput; aValidated: TList);
begin
  if Contains(aValidated, aToValidate) then
    Exit;
  aValidated.Add(aToValidate);
  // no validation required
end;

class procedure THelloWorldValidator.Validate(aToValidate: TCreateBulkItemInput);
var
  xValidated: TList;
begin
  xValidated := TList.Create;
  try
    Validate(aToValidate, xValidated);
  finally
    xValidated.Destroy;
  end;
end;

class procedure THelloWorldValidator.Validate(aToValidate: TCreateBulkItemInput; aValidated: TList);
begin
  if Contains(aValidated, aToValidate) then
    Exit;
  aValidated.Add(aToValidate);
  if (aToValidate.Entities = nil) or (aToValidate.Entities.Count = 0) then
    raise EIllegalArgumentException.Create('entities is required, at least one value must be present');
end;

class procedure THelloWorldValidator.Validate(aToValidate: TCreateBulkItemOutput);
var
  xValidated: TList;
begin
  xValidated := TList.Create;
  try
    Validate(aToValidate, xValidated);
  finally
    xValidated.Destroy;
  end;
end;

class procedure THelloWorldValidator.Validate(aToValidate: TCreateBulkItemOutput; aValidated: TList);
begin
  if Contains(aValidated, aToValidate) then
    Exit;
  aValidated.Add(aToValidate);
  // no validation required
end;

class procedure THelloWorldValidator.Validate(aToValidate: TCreateBulkPedidoInput);
var
  xValidated: TList;
begin
  xValidated := TList.Create;
  try
    Validate(aToValidate, xValidated);
  finally
    xValidated.Destroy;
  end;
end;

class procedure THelloWorldValidator.Validate(aToValidate: TCreateBulkPedidoInput; aValidated: TList);
begin
  if Contains(aValidated, aToValidate) then
    Exit;
  aValidated.Add(aToValidate);
  if (aToValidate.Entities = nil) or (aToValidate.Entities.Count = 0) then
    raise EIllegalArgumentException.Create('entities is required, at least one value must be present');
end;

class procedure THelloWorldValidator.Validate(aToValidate: TCreateBulkPedidoOutput);
var
  xValidated: TList;
begin
  xValidated := TList.Create;
  try
    Validate(aToValidate, xValidated);
  finally
    xValidated.Destroy;
  end;
end;

class procedure THelloWorldValidator.Validate(aToValidate: TCreateBulkPedidoOutput; aValidated: TList);
begin
  if Contains(aValidated, aToValidate) then
    Exit;
  aValidated.Add(aToValidate);
  // no validation required
end;

class procedure THelloWorldValidator.Validate(aToValidate: TDependency);
var
  xValidated: TList;
begin
  xValidated := TList.Create;
  try
    Validate(aToValidate, xValidated);
  finally
    xValidated.Destroy;
  end;
end;

class procedure THelloWorldValidator.Validate(aToValidate: TDependency; aValidated: TList);
begin
  if Contains(aValidated, aToValidate) then
    Exit;
  aValidated.Add(aToValidate);
  if (aToValidate.DomainIsNull) then
    raise EIllegalArgumentException.Create('Domain is required');    
  if (aToValidate.ServiceIsNull) then
    raise EIllegalArgumentException.Create('Service is required');    
  if (aToValidate.VersionIsNull) then
    raise EIllegalArgumentException.Create('Version is required');    
end;

class procedure THelloWorldValidator.Validate(aToValidate: TGetDependenciesOutput);
var
  xValidated: TList;
begin
  xValidated := TList.Create;
  try
    Validate(aToValidate, xValidated);
  finally
    xValidated.Destroy;
  end;
end;

class procedure THelloWorldValidator.Validate(aToValidate: TGetDependenciesOutput; aValidated: TList);
var
  i: Integer;
begin
  if Contains(aValidated, aToValidate) then
    Exit;
  aValidated.Add(aToValidate);
  if (aToValidate.Dependencies = nil) or (aToValidate.Dependencies.Count = 0) then
    raise EIllegalArgumentException.Create('dependencies is required, at least one value must be present');
  for i := 0 to aToValidate.Dependencies.Count - 1 do
    Validate(TDependency(aToValidate.Dependencies[i]), aValidated);
end;

type

  { TExamples_Hello_worldTypeInfoHelper }

  TExamples_Hello_worldTypeInfoHelper = class(TPersistent)
  private
    FUserNotificationKind: TUserNotificationKind;
    FUserNotificationPriority: TUserNotificationPriority;
    FEventEmailFormat: TEventEmailFormat;
    FFieldType: TFieldType;
    FFileFormat: TFileFormat;
    FHookFunction: THookFunction;
    FEventType: TEventType;
    FErrorStrategy: TErrorStrategy;
    FStatus: TStatus;
    FErrorType: TErrorType;
  published
    property UserNotificationKind: TUserNotificationKind read FUserNotificationKind;
    property UserNotificationPriority: TUserNotificationPriority read FUserNotificationPriority;
    property EventEmailFormat: TEventEmailFormat read FEventEmailFormat;
    property FieldType: TFieldType read FFieldType;
    property FileFormat: TFileFormat read FFileFormat;
    property HookFunction: THookFunction read FHookFunction;
    property EventType: TEventType read FEventType;
    property ErrorStrategy: TErrorStrategy read FErrorStrategy;
    property Status: TStatus read FStatus;
    property ErrorType: TErrorType read FErrorType;
  end;

procedure InitializeTypeInfos;
begin
  vUserNotificationKindTypeInfo := GetPropInfo(TExamples_Hello_worldTypeInfoHelper, 'UserNotificationKind').PropType^;
  
  vUserNotificationPriorityTypeInfo := GetPropInfo(TExamples_Hello_worldTypeInfoHelper, 'UserNotificationPriority').PropType^;
  
  vEventEmailFormatTypeInfo := GetPropInfo(TExamples_Hello_worldTypeInfoHelper, 'EventEmailFormat').PropType^;
  
  vFieldTypeTypeInfo := GetPropInfo(TExamples_Hello_worldTypeInfoHelper, 'FieldType').PropType^;
  
  vFileFormatTypeInfo := GetPropInfo(TExamples_Hello_worldTypeInfoHelper, 'FileFormat').PropType^;
  
  vHookFunctionTypeInfo := GetPropInfo(TExamples_Hello_worldTypeInfoHelper, 'HookFunction').PropType^;
  
  vEventTypeTypeInfo := GetPropInfo(TExamples_Hello_worldTypeInfoHelper, 'EventType').PropType^;
  
  vErrorStrategyTypeInfo := GetPropInfo(TExamples_Hello_worldTypeInfoHelper, 'ErrorStrategy').PropType^;
  
  vStatusTypeInfo := GetPropInfo(TExamples_Hello_worldTypeInfoHelper, 'Status').PropType^;
  
  vErrorTypeTypeInfo := GetPropInfo(TExamples_Hello_worldTypeInfoHelper, 'ErrorType').PropType^;
end;

initialization

  RegisterJsonClass('examples.hello_world', TBasicErrorPayload);
  RegisterJsonClass('examples.hello_world', TBlobReference);
  RegisterJsonClass('examples.hello_world', TCliente);
  RegisterJsonClass('examples.hello_world', TClientePageRequest);
  RegisterJsonClass('examples.hello_world', TClientePagedResults);
  RegisterJsonClass('examples.hello_world', TCreateBulkClienteInput);
  RegisterJsonClass('examples.hello_world', TCreateBulkClienteOutput);
  RegisterJsonClass('examples.hello_world', TCreateBulkItemInput);
  RegisterJsonClass('examples.hello_world', TCreateBulkItemOutput);
  RegisterJsonClass('examples.hello_world', TCreateBulkPedidoInput);
  RegisterJsonClass('examples.hello_world', TCreateBulkPedidoOutput);
  RegisterJsonClass('examples.hello_world', TDependency);
  RegisterJsonClass('examples.hello_world', TEmailNotifyUserEventPayload);
  RegisterJsonClass('examples.hello_world', TExportClienteEventPayload);
  RegisterJsonClass('examples.hello_world', TExportClienteInput);
  RegisterJsonClass('examples.hello_world', TExportClienteOutput);
  RegisterJsonClass('examples.hello_world', TExportConfig);
  RegisterJsonClass('examples.hello_world', TExportEventStatus);
  RegisterJsonClass('examples.hello_world', TExportItemEventPayload);
  RegisterJsonClass('examples.hello_world', TExportItemInput);
  RegisterJsonClass('examples.hello_world', TExportItemOutput);
  RegisterJsonClass('examples.hello_world', TExportPedidoEventPayload);
  RegisterJsonClass('examples.hello_world', TExportPedidoInput);
  RegisterJsonClass('examples.hello_world', TExportPedidoOutput);
  RegisterJsonClass('examples.hello_world', TFielddto);
  RegisterJsonClass('examples.hello_world', TGetDependenciesOutput);
  RegisterJsonClass('examples.hello_world', TGetMetadataInput);
  RegisterJsonClass('examples.hello_world', TGetMetadataOutput);
  RegisterJsonClass('examples.hello_world', THelloWorldInput);
  RegisterJsonClass('examples.hello_world', THelloWorldOutput);
  RegisterJsonClass('examples.hello_world', THookdto);
  RegisterJsonClass('examples.hello_world', TImportClienteEventPayload);
  RegisterJsonClass('examples.hello_world', TImportClienteInput);
  RegisterJsonClass('examples.hello_world', TImportClienteOutput);
  RegisterJsonClass('examples.hello_world', TImportConfig);
  RegisterJsonClass('examples.hello_world', TImportError);
  RegisterJsonClass('examples.hello_world', TImportEventStatus);
  RegisterJsonClass('examples.hello_world', TImportItemEventPayload);
  RegisterJsonClass('examples.hello_world', TImportItemInput);
  RegisterJsonClass('examples.hello_world', TImportItemOutput);
  RegisterJsonClass('examples.hello_world', TImportPedidoEventPayload);
  RegisterJsonClass('examples.hello_world', TImportPedidoInput);
  RegisterJsonClass('examples.hello_world', TImportPedidoOutput);
  RegisterJsonClass('examples.hello_world', TImportReport);
  RegisterJsonClass('examples.hello_world', TItem);
  RegisterJsonClass('examples.hello_world', TItemPageRequest);
  RegisterJsonClass('examples.hello_world', TItemPagedResults);
  RegisterJsonClass('examples.hello_world', TLayoutdto);
  RegisterJsonClass('examples.hello_world', TListaItemManualInput);
  RegisterJsonClass('examples.hello_world', TListaItemManualOutput);
  RegisterJsonClass('examples.hello_world', TNotifyUserEventPayload);
  RegisterJsonClass('examples.hello_world', TPedido);
  RegisterJsonClass('examples.hello_world', TPedidoPageRequest);
  RegisterJsonClass('examples.hello_world', TPedidoPagedResults);
  RegisterJsonClass('examples.hello_world', TPushNotifyUserEventPayload);
  RegisterJsonClass('examples.hello_world', TServiceStartedPayload);
  
  InitializeTypeInfos;
  
  RegisterEnum(vUserNotificationKindTypeInfo, cUserNotificationKindNames, 'examples.hello_world');
  RegisterEnum(vUserNotificationPriorityTypeInfo, cUserNotificationPriorityNames, 'examples.hello_world');
  RegisterEnum(vEventEmailFormatTypeInfo, cEventEmailFormatNames, 'examples.hello_world');
  RegisterEnum(vFieldTypeTypeInfo, cFieldTypeNames, 'examples.hello_world');
  RegisterEnum(vFileFormatTypeInfo, cFileFormatNames, 'examples.hello_world');
  RegisterEnum(vHookFunctionTypeInfo, cHookFunctionNames, 'examples.hello_world');
  RegisterEnum(vEventTypeTypeInfo, cEventTypeNames, 'examples.hello_world');
  RegisterEnum(vErrorStrategyTypeInfo, cErrorStrategyNames, 'examples.hello_world');
  RegisterEnum(vStatusTypeInfo, cStatusNames, 'examples.hello_world');
  RegisterEnum(vErrorTypeTypeInfo, cErrorTypeNames, 'examples.hello_world');
  
end.
