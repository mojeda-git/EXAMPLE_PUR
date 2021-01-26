@AbapCatalog.sqlViewName: 'ZIPURDOCUMENT'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Purchase Document'
define view Z_B_PURDOCUMENT
  as select from zpurdocument
{
  key purchasedocument         as PurchaseDocument,
      description              as Description,
      status                   as Status,
      priority                 as Priority,
      purchasingorganization   as PurchasingOrganization,
      purchasedocumentimageurl as PurchaseDocumentImageURL,
      crea_date_time           as CreaDateTime,
      crea_uname               as CreaUname,
      lchg_date_time           as LchgDateTime,
      lchg_uname               as LchgUname
}
