Start-Transcript vmdeletion.txt                                                        #starts transcript 
add-pssnapin VMware.VimAutomation.Core                                                 #loads powercli module
connect-viserver vcenter01                                                             #connects to vcenter (using saved credentials)
Remove-VM -VM virtualmachine1,virtualmachine2 -DeletePermanently -confirm:$false       #deletes vms and supresses confirmation prompt
stop-transcript                                                                        #stops transcript
