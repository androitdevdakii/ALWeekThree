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
                    CheckArmstrongNo(MyArmstrongNo);
                end;
            }
        }
    }

    var
        MyArmstrongNo: Integer;
        MyArmstrongNoDigits: Text[10];

    local procedure CheckArmstrongNo(NoToCheck: Integer; IssaArmstrongNumber: Boolean)
    var
        NumberOfDigits, TempNo, Sum, Digit : Integer;


    begin
        // Convert Armstrong Number to string to count digits
        MyArmstrongNoDigits := Format(NoToCheck);
        NumberOfDigits := StrLen(MyArmstrongNoDigits);

        // Calculate Armstrong Number
        TempNo := NoToCheck;
        while TempNo > 0 do begin
            Digit := TempNo MOD 10;
            Sum += Power(Digit, NumberOfDigits);
        end;
        IssaArmstrongNumber := Sum = NoToCheck;
        Message('The Armstrong No is %1, It has %2 digits', NoToCheck, NumberOfDigits);
        exit(IssaArmstrongNumber);
    end;

}