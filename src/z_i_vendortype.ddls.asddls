@AbapCatalog.sqlViewName: 'ZPRCHVNDRTYPE'
@AccessControl.authorizationCheck: #NOT_ALLOWED
@EndUserText.label: 'Vendor Type'
@ObjectModel.representativeKey: 'VendorType'
@ObjectModel.semanticKey: ['VendorType']
define view Z_I_VendorType
  as select from zpurchvendortyp
{
  key vendortype     as VendorType,
      vendortypetext as VendorTypeText
}
