$DataClass = new-object PSObject -Property @{
    ID = New-AmoebaMLDataClassObject -ColumnType Column -Type float -Ordinal "0"
    Date = New-AmoebaMLDataClassObject -ColumnType Column -Type float -Ordinal "1"
    Price = New-AmoebaMLDataClassObject -ColumnType Column -Type float -Ordinal "2" -Name "Label"
    Bedrooms = New-AmoebaMLDataClassObject -ColumnType Column -Type float -Ordinal "3"
    Bathrooms = New-AmoebaMLDataClassObject -ColumnType Column -Type float -Ordinal "4"
    SqftLiving = New-AmoebaMLDataClassObject -ColumnType Column -Type float -Ordinal "5"
    SqftLot = New-AmoebaMLDataClassObject -ColumnType Column -Type float -Ordinal "6"
    Floors = New-AmoebaMLDataClassObject -ColumnType Column -Type float -Ordinal "7"
    Waterfront = New-AmoebaMLDataClassObject -ColumnType Column -Type float -Ordinal "8"
    View = New-AmoebaMLDataClassObject -ColumnType Column -Type float -Ordinal "9"
    Condition = New-AmoebaMLDataClassObject -ColumnType Column -Type float -Ordinal "10"
    Grade = New-AmoebaMLDataClassObject -ColumnType Column -Type float -Ordinal "11"
    SqftAbove = New-AmoebaMLDataClassObject -ColumnType Column -Type float -Ordinal "12"
    SqftBasement = New-AmoebaMLDataClassObject -ColumnType Column -Type float -Ordinal "13"
    YearBuilt = New-AmoebaMLDataClassObject -ColumnType Column -Type float -Ordinal "14"
    YearRenovated = New-AmoebaMLDataClassObject -ColumnType Column -Type float -Ordinal "15"
    Zipcode = New-AmoebaMLDataClassObject -ColumnType Column -Type float -Ordinal "16"
    Lat = New-AmoebaMLDataClassObject -ColumnType Column -Type float -Ordinal "17"
    Long = New-AmoebaMLDataClassObject -ColumnType Column -Type float -Ordinal "18"
    SqftLiving15 = New-AmoebaMLDataClassObject -ColumnType Column -Type float -Ordinal "19"
    SqftLot15 = New-AmoebaMLDataClassObject -ColumnType Column -Type float -Ordinal "20"
}
New-AmoebaMLDataClass -ClassName "HousePriceData" -inputobject $DataClass

$DataClass = new-object PSObject -Property @{
    Price = New-AmoebaMLDataClassObject -ColumnType ColumnName -Type float -Name "Score"
}
New-AmoebaMLDataClass -ClassName "HousePricePrediction" -inputobject $DataClass
