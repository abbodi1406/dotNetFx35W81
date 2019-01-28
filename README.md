# .NET 3.5 Feature Installer for Windows 8.1 x86/x64

* Standalone Offline Multilingual Installer to enable (install) .NET Framework 3.5 feature for Windows 8.1 and Windows Server 2012 R2  
this is basically an AIO for iso\sources\sxs directory which contains the required files for all languages.

* Important: only/best workable on a freshly installed system with no updates applied.

* Usage:  
- Run as administrator  
- Click Next to begin the process  
- Wait for the extraction process to complete  
- Wait for the installation/adding process to complete  

* Command line switches:
```
Automatically install the package and display progress:  
dotNetFx35_W8.1_x86_x64_2017.exe /SILENT /NORESTART  

Silently install the package and display no progress:  
dotNetFx35_W8.1_x86_x64_2017.exe /VERYSILENT /NORESTART
```

* Older 7zsfx release (no command line switches available)  

* Credits for the GUI module by [ricktendo64](https://forums.mydigitallife.net/members/28038/).
