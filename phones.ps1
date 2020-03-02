# Author: Marek Slabicki 2020-03-01
function Read-Product-List 
{
    Param
    (
        [parameter(Mandatory=$true)]
        [String] $JsonFile,
        [parameter(Mandatory=$true)]
        [String]  $CsvFile ,
        [parameter(Mandatory=$true)]
        [Int]  $MinPrice 
    )

    Get-Content -Raw -Path $JsonFile |
        ConvertFrom-Json |
        Select-Object -expand Products |
        Where-Object -Property Price -GE -Value 50 |
        Export-Csv -Path $CsvFile
}

Read-Product-List -JsonFile 'products.json' -CsvFile "products.csv" -MinPrice 50