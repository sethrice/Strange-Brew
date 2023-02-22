Import-Module VMware.PowerCLI
Connect-VIServer vcs7-01.cooldomain.local
#$FOLDER = "lab-A-servers"
#foreach($folder in Get-Folder -Name "$FOLDER*" | where {$_.Name -notlike "$FOLDER"}){
#    echo "Folder: $folder"
#    Get-Folder -Name "$folder" | Get-VM | Get-NetworkAdapter |
#    Select @{N="VM";E={$_.Parent.Name}},Name,Type,NetworkName |ft -Autosize
#}

Get-VMHostNetworkAdapter -VMHost "esx01.cooldomain.local"|
select VMHost,DeviceName,PortGroupName,Mac,Mtu |ft -AutoSize

Get-VMHostNetworkAdapter -VMHost "esx02.cooldomain.local"|
select VMHost,DeviceName,PortGroupName,Mac,Mtu |ft -AutoSize

Get-VMHostNetworkAdapter -VMHost "esx03.cooldomain.local"|
select VMHost,DeviceName,PortGroupName,Mac,Mtu |ft -AutoSize

Get-VMHostNetworkAdapter -VMHost "esx04.cooldomain.local"|
select VMHost,DeviceName,PortGroupName,Mac,Mtu |ft -AutoSize

#get-vmhost | Select Name, @{N=”Cluster”;E={Get-Cluster -VMHost $_}},@{N=”Datacenter”;E={Get-Datacenter -VMHost $_}} |ft -AutoSize
