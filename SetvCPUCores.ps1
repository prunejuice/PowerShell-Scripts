$vmm = "TestVM1"
$cpu = 7

if ($cpu % 8 -eq 0 -And $cpu -gt 8){

	$corecount = 8

	#The next code line creates the customisation specification
	#numCPUs is the total number of CPU cores for the VM, numcorespersocket is how many cores each socket will be configured with
	$spec = new-object -typename VMware.VIM.virtualmachineconfigspec -property @{'numcorespersocket'=$corecount;'numCPUs'=$cpu}
	#This line reconfigures the VM with the customisation specification $spec
	(Get-VM $vmm).ExtensionData.ReconfigVM_Task($spec)
}


elseif ($cpu % 4 -eq 0){

	$corecount = 4

	#The next code line creates the customisation specification
	#numCPUs is the total number of CPU cores for the VM, numcorespersocket is how many cores each socket will be configured with
	$spec = new-object -typename VMware.VIM.virtualmachineconfigspec -property @{'numcorespersocket'=$corecount;'numCPUs'=$cpu}
	#This line reconfigures the VM with the customisation specification $spec
	(Get-VM $vmm).ExtensionData.ReconfigVM_Task($spec)
}

elseif ($cpu % 2 -eq 0){

	$corecount = 2

	#This line creates the customisation specification
	#numCPUs is the total number of CPU cores for the VM, numcorespersocket is how many cores each socket will be configured with
	$spec = new-object -typename VMware.VIM.virtualmachineconfigspec -property @{'numcorespersocket'=$corecount;'numCPUs'=$cpu}
	#This line reconfigures the VM with the customisation specification $spec
	(Get-VM $vmm).ExtensionData.ReconfigVM_Task($spec)
}

else {"Cores not divisible by 2 or 4"}
