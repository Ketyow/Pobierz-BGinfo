$ZrodloSerwer = "#################"
$ZrodloShare = "\\$ZrodloSerwer\E$"


$ZrodloToolsyNazwa = "TOOLS"
$ZrodloToolsy= "$ZrodloShare\$ZrodloToolsyNazwa"

$ZrodloPlikStartowyNazwa = "Bginfo.lnk"
$ZrodloPlikStartowy = "$ZrodloShare\$ZrodloPlikStartowyNazwa"

<#
$DoceloweToolsyNazwa = $ZrodloToolsyNazwa
$DoceloweToolsy = "C:\Users\##############################\Desktop\$DoceloweToolsyNazwa"

$DocelowyPlikStartowyNazwa = $ZrodloPlikStartowyNazwa
$DocelowyPlikStartowy = "C:\Users\##############################\Desktop\$DocelowyPlikStartowyNazwa"
#>

$DoceloweToolsyNazwa = $ZrodloToolsyNazwa
$DoceloweToolsy = "C:\$DoceloweToolsyNazwa"

$DocelowyPlikStartowyNazwa = $ZrodloPlikStartowyNazwa
$DocelowyPlikStartowy = "$env:ALLUSERSPROFILE\Microsoft\Windows\Start Menu\Programs\StartUp\$DocelowyPlikStartowyNazwa"

$ZrodloToolsy
$DoceloweToolsy

$ZrodloPlikStartowy
$DocelowyPlikStartowy

Copy-Item -Path $ZrodloToolsy -Destination $DoceloweToolsy -Recurse -Force
Copy-Item -Path $ZrodloPlikStartowy -Destination $DocelowyPlikStartowy -Force

Start-Process $DocelowyPlikStartowy