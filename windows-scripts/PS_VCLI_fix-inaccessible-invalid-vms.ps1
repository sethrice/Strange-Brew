Import-Module VMware.PowerCLI
Connect-VIServer vcs7-01.cooldomain.local
#Find all invalid and inaccessible VMs in vCenter and reload it.
(Get-View -ViewType VirtualMachine) |?{$_.Runtime.ConnectionState -eq "invalid"  -or $_.Runtime.ConnectionState -eq "inaccessible"} |%{$_.reload()}
