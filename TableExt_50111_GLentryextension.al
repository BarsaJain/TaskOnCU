tableextension 50111 MyExtension1 extends "G/L Entry"
{
    fields
    {
        // Add changes to table fields here
        field(50001; Demofield; code[10])
        {
            Caption = 'Demofield';
            DataClassification = ToBeClassified;
        }
    }

    var
        myInt: Integer;
}