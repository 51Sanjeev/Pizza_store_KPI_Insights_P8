$file = "E:\MYSQL\Pizza_store_P8\pizza_sales.csv"

$bytes = [System.IO.File]::ReadAllBytes($file)

$crlf = 0
$lf = 0

for ($i = 0; $i -lt $bytes.Length; $i++) {
    if ($bytes[$i] -eq 10) {
        $lf++

        if ($i -gt 0 -and $bytes[$i-1] -eq 13) {
            $crlf++
        }
    }
}

Write-Host "LF count   : $lf"
Write-Host "CRLF count : $crlf"
