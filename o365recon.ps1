# o365recon - retrieve information on o365 accounts
#
# 2017 @nyxgeek, @Spoonman1091 - TrustedSec
#
# Requirements: 
# -Install Microsoft On-line Services Sign-In Assistant for IT Professionals RTW
#        https://www.microsoft.com/en-us/download/details.aspx?id=41950
# Then run "Install-Module MsOnline"
#



#connect to MsolService
try {
    #old way
    Connect-MsolService -ErrorAction Stop
    
    #new way - to be switched over soon
    #Connect-AzureAD

}catch{
    echo "Could not connect!"
    throw $_
  }

#get company info
echo "Retrieving Company Info:"

#old way
Get-MsolCompanyInformation

#new way
#????

echo "-------------------------------------------"

#get other domain info
echo "Retrieving Domain Information:"

#old way
Get-MsolDomain | ft

#new way - to be switched over soon
#Get-AzureADDomain | ft

echo "-------------------------------------------"

# get all usernames
echo "Retrieving Usernames:"
Get-MsolUser -All | ft
echo "-------------------------------------------"

# get all group names
echo "Retrieving Groups:"
#old way
Get-MsolGroup -All | ft

#new way
#Get-AzureADGroup -All | ft

echo "-------------------------------------------"

# get all group memberships
echo "Retrieving Group Membership:"

#old way
Get-MsolGroup -All | % {"Retrieving Membership for $($_.DisplayName)";$memberlist=$(Get-MsolGroupMember -GroupObjectid $_.objectid);if ($memberlist -ne $null){$memberlist}else{"no group members found"};echo "--------"} | ft

#new way
#Get-AzureADGroup -All | % {"Retrieving Membership for $($_.DisplayName)";$memberlist=$(Get-AzureADGroupMember -GroupObjectid $_.objectid);if ($memberlist -ne $null){$memberlist}else{"no group members found"};echo "--------"} | ft


echo "-------------------------------------------"
