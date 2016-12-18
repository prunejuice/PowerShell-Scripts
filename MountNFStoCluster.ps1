#This script will mount an NFS datastore to the specified cluster
#Fill in the variables then run the script to execute

$cluster = ""
$datastorename = ""
$nfspath = ""
$nfsip = ""

get-cluster $cluster | get-vmhost | New-Datastore -Nfs -Name $datastorename -Path $nfspath -NfsHost $nfsip
