  $Policies = Get-ChildItem -Path "HKLM:\SOFTWARE\Altiris\Altiris Agent\Patch Management\Software Update\Policies" | Select-Object Name -ExpandProperty Name
 
 if($Policies -eq $null) {$patched = "altirispatchpending=false"}
 else {$patched = "altirispatchpending=true"}
 
# Srv.sys check finished, print vulnerabiliy state
Write-Host $patched
