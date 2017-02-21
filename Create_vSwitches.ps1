$hosts = "host1","host2"

Foreach ($i in $hosts){
$vswitch = Get-VirtualSwitch -VMHost $i -Name vSwitch-DMZ
New-VirtualPortGroup -Name "VLAN226" -VLANID 226 -VirtualSwitch $vswitch

$vswitch = Get-VirtualSwitch -VMHost $i -Name vSwitch-Prod
New-VirtualPortGroup -Name "VLAN 235 Servers" -VLANID 235 -VirtualSwitch $vswitch
New-VirtualPortGroup -Name "VLAN 236 Servers" -VLANID 236 -VirtualSwitch $vswitch
New-VirtualPortGroup -Name "VLAN 237 Servers" -VLANID 237 -VirtualSwitch $vswitch
New-VirtualPortGroup -Name "VLAN 239 Servers" -VLANID 239 -VirtualSwitch $vswitch
}
