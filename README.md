# o365recon
script to retrieve information via O365 with a valid cred

## setup
For most people, you will just have to install the MsOnline module
```
Install-Module MSOnline
```

If you want to use the commented out Azure stuff, you will have to install AzureAD
```
Install-Module -Name AzureAD
```

## usage
````
Usage:

.\o365recon.ps1 | tee -filePath .\output-file.txt
````
No parameters. It will prompt you to log in, and then it will retrieve all information it can about that account's O365 configuration.

Retrieves:
- Company Info (address, etc)
- Domain Info (other domains)
- Full user list
- Full group list
- Group membership for every group


You'll see that the code for the Azure version is commented out, but it all works if you prefer that method.
