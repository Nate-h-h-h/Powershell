$MyModulePath = "C:\Users\nateh\Documents\PowerShell\Modules\HellWorld"
$MyModule = @"
# HellWorld.PSM1
Function Get-HelloWorld {
    "Hello World from Nate"
}
"@
New-Item -Path $MyModulePath -ItemType Directory -Force | Out-Null
$MyModule | Out-File -FilePath $MyModulePath\HelloWorld.PSM1
Get-Module -Name HelloWorld -ListAvailable