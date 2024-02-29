page 50125 NumericalFunctions
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Documents;
    Caption = 'Numerical Functions';
    // SourceTable = Customer;

    layout
    {
        area(Content)
        {
            group("Armstrong number")
            {
                field(MNumber; MNumber)
                {
                    Caption = 'No';
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        MNumber: Integer;
}