@AbapCatalog.sqlViewName: 'ZIPURDOCITM'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Purchase Document Item'
define view Z_B_PURDOCUMENT_ITEM
  as select from zpurdocitem
{
  key purchasedocument             as PurchaseDocument,
  key purchasedocumentitem         as PurchaseDocumentItem,
      description                  as Description,
      price                        as Price,
      currency                     as Currency,
      quantity                     as Quantity,
      quantityunit                 as QuantityUnit,
      vendor                       as Vendor,
      vendortype                   as VendorType,
      purchasedocumentitemimageurl as PurchaseDocumentItemImageUrl,
      crea_date_time               ,
      crea_uname                   ,
      lchg_date_time               ,
      lchg_uname                   
}
