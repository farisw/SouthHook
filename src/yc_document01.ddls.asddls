@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumtion Document01'
@Metadata.allowExtensions: true

define root view entity YC_DOCUMENT01 
provider contract transactional_query as projection on  YI_DOCUMENT01
//composition of target_data_source_name as _association_name
{
    key Invoice,
    Comments,
    Attachment,
    MimeType,
    Filename,
    LocalLastChangedAt
//    _association_name // Make association public
}
