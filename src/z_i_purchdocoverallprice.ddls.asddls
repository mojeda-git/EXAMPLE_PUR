@AbapCatalog.sqlViewName: 'ZIPURCHDOCPRICE'
@EndUserText.label: 'Purchase Document Item'
@AccessControl.authorizationCheck: #CHECK
@ObjectModel.representativeKey: 'PurchaseDocument'
@ObjectModel.semanticKey: ['PurchaseDocument']

define view Z_I_PurchDocOverallPrice
  as select from Z_I_PURCHASEDOC as a 
  association [0..1] to I_Currency as _Currency on $projection.currency = _Currency.Currency
{

  key PurchaseDocument,

      @Semantics.amount.currencyCode: 'Currency'

      sum( _PurchaseDocumentItem.OverallItemPrice )  as OverallPrice,
      @ObjectModel.foreignKey.association: '_Currency'
      @Semantics.currencyCode: true
      _PurchaseDocumentItem.Currency,

      PurchasingOrganization,

      Description,
      Status,
      Priority,
      
      PurchaseDocumentImageURL,

      // BOPF Admin Data
      crea_date_time,
      crea_uname,
      lchg_date_time,
      lchg_uname,

      /* Associations */
      _PurchaseDocumentItem,
      _Currency,
      _Priority,
      _Status,
      _PurchasingOrganization

}
group by
  PurchaseDocument,
  _PurchaseDocumentItem.Currency,

  PurchasingOrganization,
  Description,
  Status,
  Priority,
  PurchaseDocumentImageURL,
  crea_date_time,
  crea_uname,
  lchg_date_time,
  lchg_uname
