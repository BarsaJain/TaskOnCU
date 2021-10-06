codeunit 50111 AddedNewfieldonGL
{
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Item Jnl.-Post Line", 'OnAfterInitItemLedgEntry', '', true, true)]
    local procedure postItemEntry(var NewItemLedgEntry: Record "Item Ledger Entry"; ItemJournalLine: Record "Item Journal Line"; var ItemLedgEntryNo: Integer)
    begin
        NewItemLedgEntry.Demofield2 := ItemJournalLine.Demofield2;
    end;

    [EventSubscriber(ObjectType::Table, Database::"Item Journal Line", 'OnAfterCopyItemJnlLineFromSalesHeader', '', true, true)]
    local procedure copyfromsalesheader(var ItemJnlLine: Record "Item Journal Line"; SalesHeader: Record "Sales Header")
    begin
        ItemJnlLine.Demofield2 := SalesHeader.Demofield2;
    end;
    
}
