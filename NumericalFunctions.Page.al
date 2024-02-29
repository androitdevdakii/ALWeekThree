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
                    Caption = 'Armstrong Digits';
                    Editable = false;
                }

                field(IsArmstrong; IsArmstrong)
                {
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
                    IsArmstrong := CheckArmstrongNo(MyArmstrongNo);
                end;
            }
        }
    }

    var
        MyArmstrongNo: Integer;
        MyArmstrongNoDigits: Text[10];
        IsArmstrong: Boolean;

    local procedure CheckArmstrongNo(NoToCheck: Integer): Boolean
    var
        NumberOfDigits, TempNo, Sum, Digit, i : Integer;
        IssaArmstrongNumber: Boolean;
        MyArmstrongSingleDigits: List of [Integer];

    begin
        // Convert Armstrong Number to string to count digits
        MyArmstrongNoDigits := Format(NoToCheck);
        NumberOfDigits := StrLen(MyArmstrongNoDigits);

        for i := 1 to NumberOfDigits do begin

        end;

        /*foreach Value in EnumerableCollection do begin
            
        end;*/

        // Calculate Armstrong Number
        TempNo := NoToCheck;
        while TempNo > 0 do begin
            Digit := TempNo MOD 10;
            Sum += Power(Digit, NumberOfDigits);
            TempNo := TempNo DIV 10;
        end;

        IssaArmstrongNumber := Sum = NoToCheck;
        Message('The Armstrong No is %1, It has %2 digits and its sum is %3', NoToCheck, NumberOfDigits, IssaArmstrongNumber);
        exit(IssaArmstrongNumber);
    end;

}