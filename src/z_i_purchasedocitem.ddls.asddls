@AbapCatalog.sqlViewName: 'ZIPURCHDOCITEM'
@EndUserText.label: 'Purchase Document Item'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@ObjectModel.representativeKey: 'PurchaseDocumentItem'
@ObjectModel.semanticKey: ['PurchaseDocumentItem','PurchaseDocument']
@Metadata.allowExtensions: true

define view Z_I_PURCHASEDOCITEM
  as select from Z_B_PURDOCUMENT_ITEM
  association [1..1] to Z_I_PURCHASEDOC as _PurchaseDocument      on $projection.PurchaseDocument = _PurchaseDocument.PurchaseDocument
  association [0..1] to I_UnitOfMeasure as _QuantityUnitOfMeasure on $projection.QuantityUnit = _QuantityUnitOfMeasure.UnitOfMeasure
  association [0..1] to Z_I_VendorType  as _VendorType            on $projection.VendorType = _VendorType.VendorType
  association [0..1] to I_Currency      as _Currency              on $projection.Currency = _Currency.Currency
{

      @ObjectModel.text.element: ['Description']
  key PurchaseDocumentItem         as PurchaseDocumentItem,
      @ObjectModel.foreignKey.association: '_PurchaseDocument'
  key PurchaseDocument             as PurchaseDocument,
      @Semantics.text: true
      Description                  as Description,
      Vendor                       as Vendor,
      @ObjectModel.foreignKey.association: '_VendorType'
      VendorType                   as VendorType,
      @Semantics.amount.currencyCode: 'Currency'
      Price                        as Price,
      @Semantics.currencyCode: true
      @ObjectModel.foreignKey.association: '_Currency'
      Currency                     as Currency,
      @Semantics.quantity.unitOfMeasure: 'QuantityUnit'
      Quantity                     as Quantity,
      @Semantics.unitOfMeasure: true
      @ObjectModel.foreignKey.association: '_QuantityUnitOfMeasure'
      QuantityUnit                 as QuantityUnit,
      @Semantics.amount.currencyCode: 'Currency'
      Quantity  *   Price          as OverallItemPrice,
      PurchaseDocumentItemImageUrl as PurchaseDocumentItemImageURL,

      // Admin Data
      crea_date_time,
      crea_uname,
      lchg_date_time,
      lchg_uname,

      // Associations
      _PurchaseDocument,
      _QuantityUnitOfMeasure,
      _Currency,
      _VendorType

}
