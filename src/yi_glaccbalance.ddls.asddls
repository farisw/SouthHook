@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'GL Account Balance'
define view entity YI_GLACCBALANCE as select from I_GLAccountInCompanyCode
left outer join I_JournalEntryItem       on I_GLAccountInCompanyCode.CompanyCode = I_JournalEntryItem.CompanyCode
                                        and I_GLAccountInCompanyCode.GLAccount   = I_JournalEntryItem.GLAccount
{
    
    key I_GLAccountInCompanyCode.CompanyCode as CompanyCodeSkb1,
    key I_GLAccountInCompanyCode.GLAccount as GLAccountSkb1,
    key I_JournalEntryItem.SourceLedger,    
    key I_JournalEntryItem.CompanyCode,
    key I_JournalEntryItem.FiscalYear,
    key I_JournalEntryItem.AccountingDocument,
    key I_JournalEntryItem.LedgerGLLineItem,
    key I_JournalEntryItem.Ledger,
    I_JournalEntryItem.LedgerFiscalYear,
    I_JournalEntryItem.GLRecordType,
    I_JournalEntryItem.JrnlEntrAltvFYConsecutiveID,
    I_JournalEntryItem.ChartOfAccounts,
    I_JournalEntryItem.ControllingArea,
    
    I_JournalEntryItem.GLAccount,
    I_JournalEntryItem.AssignmentReference,
    I_JournalEntryItem.AccountingDocumentType,
    I_JournalEntryItem.PostingDate,
    I_JournalEntryItem.PostingKey,
    I_JournalEntryItem.CompanyCodeCurrency,
    @DefaultAggregation: #SUM
    @Semantics: { amount : {currencyCode: 'CompanyCodeCurrency'} } 
    I_JournalEntryItem.AmountInCompanyCodeCurrency,
    I_JournalEntryItem.TaxCode,
    I_JournalEntryItem.ClearingJournalEntry,
    I_JournalEntryItem.ProfitCenter,
    I_JournalEntryItem.Segment,
    I_JournalEntryItem.DocumentItemText,
    
    case 
        when I_JournalEntryItem.AccountingDocument = '' 
          or I_JournalEntryItem.AccountingDocument is null 
        then 'X'
        else ''
    end as isnotpostedto
        
   

}
