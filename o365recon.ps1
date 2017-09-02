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
    Connect-MsolService
  }catch{
    echo "Could not connect!"
  }

#get company info
echo "Retrieving Company Info:"
Get-MsolCompanyInformation
echo "-------------------------------------------"

#get other domain info
echo "Retrieving Domain Information:"
Get-MsolDomain | ft
echo "-------------------------------------------"

# get all usernames
echo "Retrieving Usernames:"
Get-MsolUser -All | ft
echo "-------------------------------------------"

# get all group names
echo "Retrieving Groups:"
Get-MsolGroup -All | ft
echo "-------------------------------------------"

# get all group memberships
echo "Retrieving Group Membership:"
Get-MsolGroup -All | % {"Retrieving Membership for $($_.DisplayName)";$memberlist=$(Get-MsolGroupMember -GroupObjectid $_.objectid);if ($memberlist -ne $null){$memberlist}else{"no group members found"};echo "--------"} | ft
echo "-------------------------------------------"
