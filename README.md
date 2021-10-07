# o365recon
script to retrieve information via O365 and AzureAD with a valid cred

## setup
Install these two modules
```
Install-Module MSOnline
Install-Module AzureAD
```

#### Usage:
```
.\o365recon.ps1 -azure
```

There is only one flag (-azure) and it is optional. You will be prompted to auth. You may be prompted twice if MFA is enabled.

![ScreenShot](https://raw.github.com/nyxgeek/o365recon/master/screenshot.png)
