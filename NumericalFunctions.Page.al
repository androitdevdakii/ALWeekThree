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
                field(MyArmstrongNo; MyArmstrongNo)
                {
                    Caption = 'No';
                }
            }

            group("Armstrong number Digits")
            {
                field(MyArmstrongNoDigits; MyArmstrongNoDigits)
                {
                    Caption = 'No';
                    Editable = false;
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(CheckArmstrong)
            {
                ApplicationArea = All;
                Caption = 'Check ArmStrong No';
                trigger OnAction()
                begin
                    CheckArmstrongNo();
                end;
            }
        }
    }

    var
        MyArmstrongNo: Integer;

    local procedure CheckArmstrongNo(NoToCheck: Integer)
    var
        MyArmstrongNoDigits: Text[10];

    begin
        MyArmstrongNoDigits := Format(NoToCheck);
    end;

}