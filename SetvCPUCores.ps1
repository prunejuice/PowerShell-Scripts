$vmm = "TestVM1"
$cpu = 8

#The following statements will determine if the number of CPUs are divisible by 2, 4 and 8 without a remainder
#to set the number of cores per socket

if ($cpu % 8 -eq 0 -And $cpu -gt 8){$corecount = 8}

elseif ($cpu % 4 -eq 0){$corecount = 4}

elseif ($cpu % 2 -eq 0){$corecount = 2}

else {$corecount = 1}

#This following line creates the customisation specification
#numCPUs is the total number of CPU cores for the VM, numcorespersocket is how many cores each socket will be configured with

$spec = new-object -typename VMware.VIM.virtualmachineconfigspec -property @{'numcorespersocket'=$corecount;'numCPUs'=$cpu}

#This line reconfigures the VM with the customisation specification $spec

(Get-VM $vmm).ExtensionData.ReconfigVM_Task($spec)
