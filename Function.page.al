page 50148 ExchangeRate
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    Caption = 'ExchangeRate';

    layout
    {
        area(Content)
        {
            group(Moneys)
            {
                Caption = 'Moneys';
                field(ExchangeRateAmount; ExchangeRateAmount)
                {
                    caption = 'Forex Rate';
                    Editable = false;


                }


                field(UgxAmount; UgxAmount)
                {
                    Caption = 'Shilling value';
                    trigger OnValidate()
                    var
                        myInt: Integer;
                    begin
                        CalculateForeignExchange();
                    end;

                }


                field(UsdAmount; UsdAmount)
                {
                    Caption = 'Dollars Value';
                    Editable = false;
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            /*  action(ConvertFx)
             {
                 ApplicationArea = All;

                 trigger OnAction()
                 begin
                     CalculateForeignExchange();
                 end;
             } */

            action(Clear)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin
                    Clear(UsdAmount);
                    Clear(UgxAmount);
                end;
            }

            action(ClearAll)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin
                    ClearAll();
                end;
            }
        }
    }

    var
        ExchangeRateAmount, UgxAmount, UsdAmount : Decimal;


    // We are going to multiply UgxAmount by ExchangeRateAmount to get UsdAmount

    local procedure CalculateForeignExchange()
    // var
    //     myInt: Integer;
    begin
        //UgxAmount := 300000;
        UsdAmount := Abs(UgxAmount) / ExchangeRateAmount;
        // Message('%1', UsdAmount);
    end;

    trigger OnOpenPage()
    begin
        ExchangeRateAmount := 3750;
    end;

}