# o365recon
script to retrieve information via O365 with a valid cred
````
Usage:

.\o365recon.ps1
````
No parameters. It will prompt you to log in, and then it will retrieve all information it can about that account's O365 configuration.

Retrieves:
- Company Info (address, etc)
- Domain Info (other domains)
- Full user list
- Full group list
- Group membership for every group


You'll see that the code for the Azure version is commented out, but it all works if you prefer that method.
