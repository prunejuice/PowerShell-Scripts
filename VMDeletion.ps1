#This script is useful for scheduling VM deletions
#Schedule the task using Windows Task Scheduler ensuring the task is run under the same Domain user you connect to vCenter with 
#It is a prerequisite that you connect to vCenter via PowerCLI and save your credentials in your profile prior to scheduling
#For testing purposes, add the -whatif switch to the Remove-VM command 

add-pssnapin VMware.VimAutomation.Core                                                 #loads powercli module
connect-viserver vcenter01                                                             #connects to vcenter (using saved credentials)
Remove-VM -VM virtualmachine1,virtualmachine2 -DeletePermanently -confirm:$false       #deletes vms and supresses confirmation prompt
