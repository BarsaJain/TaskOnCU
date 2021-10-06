pageextension 50111 PageExtnSalesOrder extends "Sales Order"
{
    layout
    {
        addafter(Status)
        {
            field(demofield2; rec.demofield2)
            {
                ApplicationArea = all;
            }
        }

    }

}
