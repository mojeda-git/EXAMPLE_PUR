@AbapCatalog.sqlViewName: 'ZIPURCHDOCMNT'
@EndUserText.label: 'Purchase Document'
@AccessControl.authorizationCheck: #CHECK
@AbapCatalog.preserveKey: true
@ObjectModel.representativeKey: 'PurchaseDocument'
@ObjectModel.semanticKey: ['PurchaseDocument']
@Metadata.allowExtensions: true

define view Z_I_PURCHASEDOC
  as select from zpurdocument
  association [0..*] to Z_I_PURCHASEDOCITEM          as _PurchaseDocumentItem   on $projection.PurchaseDocument = _PurchaseDocumentItem.PurchaseDocument
  association [0..1] to Z_I_PurchaseDocumentPriority as _Priority               on $projection.Priority = _Priority.Priority
  association [0..1] to Z_I_PurchaseDocumentStatus   as _Status                 on $projection.Status = _Status.Status
  association [0..1] to Z_I_PurchasingOrganization   as _PurchasingOrganization on $projection.PurchasingOrganization = _PurchasingOrganization.PurchasingOrganization
{
      @ObjectModel.text.element: ['Description']
  key purchasedocument         as PurchaseDocument,
      @Semantics.text: true
      description              as Description,
      @ObjectModel.foreignKey.association: '_Status'
      status                   as Status,
      @ObjectModel.foreignKey.association: '_Priority'
      priority                 as Priority,
      @ObjectModel.foreignKey.association: '_PurchasingOrganization'
      purchasingorganization   as PurchasingOrganization,
      purchasedocumentimageurl as PurchaseDocumentImageURL,

      // Admin Data
      crea_date_time,
      crea_uname,
      lchg_date_time,
      lchg_uname,

      // Associations
      _PurchaseDocumentItem,
      _Priority,
      _Status,
      _PurchasingOrganization
}
