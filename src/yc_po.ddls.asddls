@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'PO'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity YC_PO
  as select from I_PurchaseOrderAPI01
{
      @UI.facet: [    {
                  label: 'Purchase Order',
                  id: 'PO',
                  type: #COLLECTION,
                  position: 10
                  },
                    {
                        id: 'Administration',
                        purpose: #STANDARD,
                        type: #FIELDGROUP_REFERENCE,
                        parentId: 'GeneralInfo',
                        label: 'Upload Invoice',
                        position: 20,
                        targetQualifier: 'Upload'
                    } ]

      @UI: {  selectionField: [ { position: 10 }],
              lineItem:       [ { position: 10, importance: #HIGH , label: 'Purchase Order'} ] ,
              identification: [ { position: 10 , label: 'Purchase Order' } ] }
  key PurchaseOrder,
      @UI: {  selectionField: [ { position: 20 }],
              lineItem:       [ { position: 20, importance: #HIGH } ] ,
              identification: [ { position: 20 } ] }
      PurchaseOrderType,
      @UI: {  
              lineItem:       [ { position: 30, importance: #HIGH } ] ,
              identification: [ { position: 30 } ] }
      PurchaseOrderSubtype,
      PurchasingDocumentOrigin,

      @UI:
      { fieldGroup:     [ { position: 50, qualifier: 'Administration' } ]}
      CreatedByUser,
      @UI:
      { fieldGroup:     [ { position: 60, qualifier: 'Administration' } ]}
      CreationDate,
      PurchaseOrderDate,
      Language,
      CorrespncExternalReference,
      CorrespncInternalReference,
      PurchasingDocumentDeletionCode,
      ReleaseIsNotCompleted,
      PurchasingCompletenessStatus,
      PurchasingProcessingStatus,
      PurgReleaseSequenceStatus,
      ReleaseCode,
      CompanyCode,
      PurchasingOrganization,
      PurchasingGroup,
      Supplier,
      ManualSupplierAddressID,
      SupplierRespSalesPersonName,
      SupplierPhoneNumber,
      SupplyingSupplier,
      SupplyingPlant,
      InvoicingParty,
      Customer,
      SupplierQuotationExternalID,
      PaymentTerms,
      CashDiscount1Days,
      CashDiscount2Days,
      NetPaymentDays,
      CashDiscount1Percent,
      CashDiscount2Percent,
      DownPaymentType,
      DownPaymentPercentageOfTotAmt,
      @Semantics.amount.currencyCode: 'DocumentCurrency'
      DownPaymentAmount,
      DownPaymentDueDate,
      IncotermsClassification,
      IncotermsTransferLocation,
      IncotermsVersion,
      IncotermsLocation1,
      IncotermsLocation2,
      IsIntrastatReportingRelevant,
      IsIntrastatReportingExcluded,
      PricingDocument,
      PricingProcedure,
      DocumentCurrency,
      ValidityStartDate,
      ValidityEndDate,
      ExchangeRate,
      ExchangeRateIsFixed,
      LastChangeDateTime,
      TaxReturnCountry,
      VATRegistrationCountry,
      PurgReasonForDocCancellation,
      @Semantics.amount.currencyCode: 'DocumentCurrency'
      PurgReleaseTimeTotalAmount,
      PurgAggrgdProdCmplncSuplrSts,
      PurgAggrgdProdMarketabilitySts,
      PurgAggrgdSftyDataSheetStatus,
      PurgProdCmplncTotDngrsGoodsSts,
      YY1_PO_TYPE_PDH,
      YY1_DraftImage_PDH,
      YY1_PurchasingComplete_PDH,
      /* Associations */
      _PurchaseOrderItem
}
