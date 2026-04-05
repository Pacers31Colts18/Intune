# Intune Settings Catalog Policy Report

**Generated:** 2026-04-05 10:43

## Policies

| Policy Name | Platform | Top-Level Settings |
| --- | --- | --- |
| CIS (L1) Admin Templates - System (4.10) - Windows 11 Intune 4.0.0 | windows10 | 24 |
| CIS (L1) Admin Templates - Windows Components (4.11) - Windows 11 Intune 4.0.0 | windows10 | 44 |
| CIS (L1) Auditing (6) - Windows 11 Intune 4.0.0 | windows10 | 27 |
| CIS (L1) Autopilot - Windows 11 Intune 4.0.0 | windows10 | 6 |
| CIS (L1) Defender - Windows 11 Intune 4.0.0 | windows10 | 16 |
| CIS (L1) Device Lock & WHFB - Windows 11 Intune 4.0.0  | windows10 | 6 |
| CIS (L1) Firewall (38) - Windows 11 Intune 4.0.0  | windows10 | 3 |
| CIS (L1) Local Policies Security Options (49) - Windows 11 Intune 4.0.0  | windows10 | 31 |
| CIS (L1) Section 1 - 4.9.1.1 - Windows 11 Intune 4.0.0  | windows10 | 31 |
| CIS (L1) Section 15 - 104 - Windows 11 Intune 4.0.0 | windows10 | 38 |
| CIS (L1) User Rights (89) - Windows 11 Intune 4.0.0 | windows10 | 34 |
| CIS (L1) Windows LAPS (105) - Windows 11 Intune 4.4.0 | windows10 | 5 |
| CIS (L1) Windows Update (103) - Windows 11 Intune 4.0.0  | windows10 | 6 |
| Windows Intune Baseline | windows10 | 327 |

>  **Bold** = same setting in multiple policies with the same value.

> *Italic* = same setting in multiple policies with differing values.

---

### CIS (L1) Admin Templates - System (4.10) - Windows 11 Intune 4.0.0

*CIS Recommendation Numbers:

4.10.4.1
4.10.5.1
4.10.5.2
4.10.9.2
4.10.13.1
4.10.19.1
4.10.19.2
4.10.20.1.2
4.10.20.1.5
4.10.26.1
4.10.26.2
4.10.26.3
4.10.26.4
4.10.26.5
4.10.26.6
4.10.26.7
4.10.29.5.1
4.10.29.5.2
4.10.30.1
4.10.30.2
4.10.31.1
4.10.31.2
4.10.44.1.1
4.10.44.1.2
*

**Platform:** windows10

| Setting | Sub-Setting | Value | Supported Platform | Supported SKUs | Unsupported SKUs |
| --- | --- | --- | --- | --- | --- |
| **[Include command line in process creation events](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-admx-auditsettings#admx-auditsettings-includecmdline)** |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval<br>holographicForBusiness | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise |
| **[Encryption Oracle Remediation](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-admx-credssp#admx-credssp-allowencryptionoracle)** |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval<br>holographicForBusiness | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise |
|  | **Protection Level: (Device)** | Force Updated Clients | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval<br>holographicForBusiness | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise |
| **[Remote host allows delegation of non-exportable credentials](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-credentialsdelegation#credentialsdelegation-remotehostallowsdelegationofnonexportablecredentials)** |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Prevent automatic download of applications associated with device metadata](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-deviceinstallation) |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>MultiSession<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Boot-Start Driver Initialization Policy](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-system#system-bootstartdriverinitialization)** |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
|  | **Choose the boot-start drivers that can be initialized:** | Good, unknown and bad but critical | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Continue experiences on this device](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-admx-grouppolicy#admx-grouppolicy-enablecdp) |  | Disabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval<br>holographicForBusiness | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise |
| [Turn off background refresh of Group Policy](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-admx-grouppolicy#admx-grouppolicy-disablebackgroundpolicy) |  | Disabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval<br>holographicForBusiness | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise |
| **[Turn off downloading of print drivers over HTTP](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-connectivity#connectivity-disabledownloadingofprintdriversoverhttp)** |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>MultiSession<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Turn off Internet download for Web publishing and online ordering wizards](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-connectivity#connectivity-disableinternetdownloadforwebpublishingandonlineorderingwizards)** |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>MultiSession<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Block user from showing account details on sign-in](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-admx-logon#admx-logon-blockuserfromshowingaccountdetailsonsignin) |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval<br>holographicForBusiness | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise |
| [Do not display network selection UI](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-windowslogon#windowslogon-dontdisplaynetworkselectionui) |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>MultiSession<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Do not enumerate connected users on domain-joined computers](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-admx-logon#admx-logon-dontenumerateconnectedusers) |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval<br>holographicForBusiness | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise |
| [Enumerate local users on domain-joined computers](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-windowslogon#windowslogon-enumeratelocalusersondomainjoinedcomputers) |  | Disabled | windows10 | Professional<br>Enterprise<br>Education<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>MultiSession<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Turn off app notifications on the lock screen](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-windowslogon#windowslogon-disablelockscreenappnotifications) |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>MultiSession<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Turn off picture password sign-in](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-credentialproviders#credentialproviders-blockpicturepassword) |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Turn on convenience PIN sign-in](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-credentialproviders#credentialproviders-allowpinlogon) |  | Disabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Require a password when a computer wakes (on battery)](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-power#power-requirepasswordwhencomputerwakesonbattery)** |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>MultiSession<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Require a password when a computer wakes (plugged in)](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-power#power-requirepasswordwhencomputerwakespluggedin)** |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>MultiSession<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Configure Offer Remote Assistance](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-remoteassistance#remoteassistance-unsolicitedremoteassistance) |  | Disabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Configure Solicited Remote Assistance](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-remoteassistance#remoteassistance-solicitedremoteassistance)** |  | Disabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Enable RPC Endpoint Mapper Client Authentication](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-remoteprocedurecall#remoteprocedurecall-rpcendpointmapperclientauthentication) |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Restrict Unauthenticated RPC clients](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-remoteprocedurecall#remoteprocedurecall-restrictunauthenticatedrpcclients)** |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
|  | **RPC Runtime Unauthenticated Client Restriction to Apply:** | Authenticated | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Enable Windows NTP Client](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-admx-w32time#admx-w32time-w32time-policy-enable-ntpclient) |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval<br>holographicForBusiness | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise |
| [Enable Windows NTP Server](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-admx-w32time#admx-w32time-w32time-policy-enable-ntpserver) |  | Disabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval<br>holographicForBusiness | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise |

---

### CIS (L1) Admin Templates - Windows Components (4.11) - Windows 11 Intune 4.0.0

*CIS Recommendation Numbers:

4.11.3.1
4.11.5.1
4.11.5.2
4.11.6.1
4.11.6.2
4.11.6.3
4.11.8.1
4.11.8.2
4.11.8.3
4.11.10.1
4.11.10.2
4.11.10.3
4.11.15.1.1
4.11.15.1.2
4.11.15.2.1
4.11.15.2.2
4.11.15.3.1
4.11.15.3.2
4.11.15.4.1
4.11.15.4.2
4.11.18.1
4.11.18.2
4.11.18.3
4.11.18.4
4.11.27.1
4.11.31.1
4.11.36.3.2
4.11.36.4.3.2
4.11.36.4.9.1
4.11.36.4.9.2
4.11.36.4.9.3
4.11.36.4.9.4
4.11.36.4.9.5
4.11.36.4.11.1
4.11.37.1
4.11.42.1
4.11.50.1
4.11.50.2
4.11.55.1.1
4.11.55.1.2
4.11.55.1.3
4.11.55.2.1
4.11.55.2.3
4.11.55.2.4
*

**Platform:** windows10

| Setting | Sub-Setting | Value | Supported Platform | Supported SKUs | Unsupported SKUs |
| --- | --- | --- | --- | --- | --- |
| **[Allow Microsoft accounts to be optional](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-appruntime#appruntime-allowmicrosoftaccountstobeoptional)** |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Do not preserve zone information in file attachments (User)](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-attachmentmanager#attachmentmanager-donotpreservezoneinformation) |  | Disabled | windows10 | Professional<br>Enterprise<br>Education<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>MultiSession<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Notify antivirus programs when opening attachments (User)](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-attachmentmanager#attachmentmanager-notifyantivirusprograms) |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>MultiSession<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Disallow Autoplay for non-volume devices](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-autoplay#autoplay-disallowautoplayfornonvolumedevices)** |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>MultiSession<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Set the default behavior for AutoRun](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-autoplay#autoplay-setdefaultautorunbehavior)** |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>MultiSession<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
|  | **Default AutoRun Behavior** | Do not execute any autorun commands | windows10 | Professional<br>Enterprise<br>Education<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>MultiSession<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Turn off Autoplay](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-autoplay#autoplay-turnoffautoplay)** |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>MultiSession<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
|  | **Turn off Autoplay on:** | All drives | windows10 | Professional<br>Enterprise<br>Education<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>MultiSession<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Do not display the password reveal button](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-credentialsui#credentialsui-disablepasswordreveal) |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Enumerate administrator accounts on elevation](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-credentialsui#credentialsui-enumerateadministrators)** |  | Disabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Prevent the use of security questions for local accounts](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-admx-credui#admx-credui-nolocalpasswordresetquestions) |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval<br>holographicForBusiness | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise |
| [Enable App Installer Experimental Features](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-desktopappinstaller#desktopappinstaller-enableexperimentalfeatures) |  | Disabled | windows10 | Professional<br>Enterprise<br>Education<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>MultiSession<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Enable App Installer Hash Override](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-desktopappinstaller#desktopappinstaller-enablehashoverride) |  | Disabled | windows10 | Professional<br>Enterprise<br>Education<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>MultiSession<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Enable App Installer ms-appinstaller protocol](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-desktopappinstaller#desktopappinstaller-enablemsappinstallerprotocol) |  | Disabled | windows10 | Professional<br>Enterprise<br>Education<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>MultiSession<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Control Event Log behavior when the log file reaches its maximum size](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-eventlogservice#eventlogservice-controleventlogbehavior) |  | Disabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Specify the maximum log file size (KB)](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-eventlogservice#eventlogservice-specifymaximumfilesizeapplicationlog)** |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
|  | **Maximum Log Size (KB)** | 32768 | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Control Event Log behavior when the log file reaches its maximum size](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-admx-eventlog#admx-eventlog-channel-log-retention-2) |  | Disabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval<br>holographicForBusiness | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise |
| **[Specify the maximum log file size (KB)](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-eventlogservice#eventlogservice-specifymaximumfilesizesecuritylog)** |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
|  | **Maximum Log Size (KB)** | 196608 | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Control Event Log behavior when the log file reaches its maximum size](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-admx-eventlog#admx-eventlog-channel-log-retention-3) |  | Disabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval<br>holographicForBusiness | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise |
| [Specify the maximum log file size (KB)](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-admx-eventlog#admx-eventlog-channel-logmaxsize-3) |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval<br>holographicForBusiness | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise |
|  | Maximum Log Size (KB) (Device) | 32768 | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval<br>holographicForBusiness | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise |
| [Control Event Log behavior when the log file reaches its maximum size](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-admx-eventlog#admx-eventlog-channel-log-retention-4) |  | Disabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval<br>holographicForBusiness | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise |
| **[Specify the maximum log file size (KB)](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-eventlogservice#eventlogservice-specifymaximumfilesizesystemlog)** |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
|  | **Maximum Log Size (KB)** | 32768 | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Configure Windows Defender SmartScreen](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-admx-windowsexplorer#admx-windowsexplorer-enablesmartscreen)** |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval<br>holographicForBusiness | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise |
|  | **Pick one of the following settings: (Device)** | Warn and prevent bypass | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval<br>holographicForBusiness | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise |
| **[Turn off Data Execution Prevention for Explorer](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-fileexplorer#fileexplorer-turnoffdataexecutionpreventionforexplorer)** |  | Disabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Turn off heap termination on corruption](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-fileexplorer#fileexplorer-turnoffheapterminationoncorruption)** |  | Disabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Turn off shell protocol protected mode](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-admx-windowsexplorer#admx-windowsexplorer-shellprotocolprotectedmodetitle-2) |  | Disabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval<br>holographicForBusiness | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise |
| [Block all consumer Microsoft account user authentication](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-admx-msapolicy#admx-msapolicy-microsoftaccount-disableuserauth) |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval<br>holographicForBusiness | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise |
| [Prevent users from sharing files within their profile. (User)](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-admx-sharing#admx-sharing-noinplacesharing) |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval<br>holographicForBusiness | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise |
| **[Do not allow passwords to be saved](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-remotedesktopservices#remotedesktopservices-donotallowpasswordsaving)** |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Do not allow drive redirection](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-remotedesktopservices#remotedesktopservices-donotallowdriveredirection)** |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Always prompt for password upon connection](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-remotedesktopservices#remotedesktopservices-promptforpassworduponconnection)** |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Require secure RPC communication](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-remotedesktopservices#remotedesktopservices-requiresecurerpccommunication)** |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Require use of specific security layer for remote (RDP) connections](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-admx-terminalserver#admx-terminalserver-ts-security-layer-policy) |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval<br>holographicForBusiness | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise |
|  | Security Layer (Device) | SSL | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval<br>holographicForBusiness | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise |
| [Require user authentication for remote connections by using Network Level Authentication](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-admx-terminalserver#admx-terminalserver-ts-user-authentication-policy) |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval<br>holographicForBusiness | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise |
| **[Set client connection encryption level](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-remotedesktopservices#remotedesktopservices-clientconnectionencryptionlevel)** |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
|  | **Encryption Level** | High Level | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Do not delete temp folders upon exit](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-admx-terminalserver#admx-terminalserver-ts-temp-delete) |  | Disabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval<br>holographicForBusiness | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise |
| **[Prevent downloading of enclosures](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-internetexplorer#internetexplorer-disableenclosuredownloading)** |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Turn off the offer to update to the latest version of Windows](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-admx-windowsstore#admx-windowsstore-disableosupgrade-2) |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval<br>holographicForBusiness | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise |
| **[Configure the transmission of the user's password in the content of MPR notifications sent by winlogon.](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-windowslogon#windowslogon-enablemprnotifications)** |  | Disabled | windows10 | Professional<br>Enterprise<br>Education<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>MultiSession<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Sign-in and lock last interactive user automatically after a restart](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-windowslogon#windowslogon-allowautomaticrestartsignon)** |  | Disabled | windows10 | Home<br>Professional<br>Enterprise<br>Education<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | MultiSession<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Allow Basic authentication](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-remotemanagement#remotemanagement-allowbasicauthentication-client)** |  | Disabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Allow unencrypted traffic](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-remotemanagement#remotemanagement-allowunencryptedtraffic-client)** |  | Disabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Disallow Digest authentication](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-remotemanagement#remotemanagement-disallowdigestauthentication)** |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Allow Basic authentication](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-remotemanagement#remotemanagement-allowbasicauthentication-service)** |  | Disabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Allow unencrypted traffic](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-remotemanagement#remotemanagement-allowunencryptedtraffic-service)** |  | Disabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Disallow WinRM from storing RunAs credentials](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-remotemanagement#remotemanagement-disallowstoringofrunascredentials)** |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |

---

### CIS (L1) Auditing (6) - Windows 11 Intune 4.0.0

*CIS Recommendation Numbers:

6.1
6.2
6.3
6.4
6.5
6.6
6.7
6.8
6.9
6.10
6.11
6.12
6.13
6.14
6.15
6.16
6.17
6.18
6.19
6.20
6.21
6.22
6.23
6.24
6.25
6.26
6.27
*

**Platform:** windows10

| Setting | Sub-Setting | Value | Supported Platform | Supported SKUs | Unsupported SKUs |
| --- | --- | --- | --- | --- | --- |
| **[Account Logon Audit Credential Validation](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-Audit#accountlogon_auditcredentialvalidation)** |  | Success+ Failure | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Account Logon Logoff Audit Account Lockout](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-Audit#accountlogonlogoff_auditaccountlockout)** |  | Failure | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Account Logon Logoff Audit Group Membership](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-Audit#accountlogonlogoff_auditgroupmembership)** |  | Success | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Account Logon Logoff Audit Logoff](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-Audit#accountlogonlogoff_auditlogoff) |  | Success | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Account Logon Logoff Audit Logon](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-Audit#accountlogonlogoff_auditlogon)** |  | Success+ Failure | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Account Management Audit Application Group Management](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-Audit#accountmanagement_auditapplicationgroupmanagement) |  | Success+ Failure | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Audit Authentication Policy Change](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-Audit#policychange_auditauthenticationpolicychange)** |  | Success | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Audit Authorization Policy Change](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-Audit#policychange_auditauthorizationpolicychange) |  | Success | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Audit Changes to Audit Policy](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-Audit#policychange_auditpolicychange)** |  | Success | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Audit File Share Access](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-Audit#objectaccess_auditfileshare)** |  | Success+Failure | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Audit Other Logon Logoff Events](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-Audit#accountlogonlogoff_auditotherlogonlogoffevents)** |  | Success+Failure | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Audit Security Group Management](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-Audit#accountmanagement_auditsecuritygroupmanagement)** |  | Success | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Audit Security System Extension](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-Audit#system_auditsecuritysystemextension)** |  | Success | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Audit Special Logon](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-Audit#accountlogonlogoff_auditspeciallogon)** |  | Success | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Audit User Account Management](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-Audit#accountmanagement_audituseraccountmanagement)** |  | Success+Failure | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Detailed Tracking Audit PNP Activity](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-Audit#detailedtracking_auditpnpactivity)** |  | Success | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Detailed Tracking Audit Process Creation](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-Audit#detailedtracking_auditprocesscreation)** |  | Success | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Object Access Audit Detailed File Share](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-Audit#objectaccess_auditdetailedfileshare)** |  | Failure | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Object Access Audit Other Object Access Events](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-Audit#objectaccess_auditotherobjectaccessevents)** |  | Success+ Failure | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Object Access Audit Removable Storage](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-Audit#objectaccess_auditremovablestorage)** |  | Success+ Failure | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Policy Change Audit MPSSVC Rule Level Policy Change](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-Audit#policychange_auditmpssvcrulelevelpolicychange)** |  | Success+ Failure | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Policy Change Audit Other Policy Change Events](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-Audit#policychange_auditotherpolicychangeevents)** |  | Failure | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| *[Privilege Use Audit Sensitive Privilege Use](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-Audit#privilegeuse_auditsensitiveprivilegeuse)* |  | Success+ Failure | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [System Audit I Psec Driver](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-Audit#system_auditipsecdriver) |  | Success+ Failure | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[System Audit Other System Events](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-Audit#system_auditothersystemevents)** |  | Success+ Failure | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[System Audit Security State Change](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-Audit#system_auditsecuritystatechange)** |  | Success | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[System Audit System Integrity](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-Audit#system_auditsystemintegrity)** |  | Success+ Failure | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |

---

### CIS (L1) Autopilot - Windows 11 Intune 4.0.0

*CIS Recommendation Numbers:

4.5.1
26.5
49.9
49.10
49.29
90.1
*

**Platform:** windows10

| Setting | Sub-Setting | Value | Supported Platform | Supported SKUs | Unsupported SKUs |
| --- | --- | --- | --- | --- | --- |
| [MSS: (AutoAdminLogon) Enable Automatic Logon (not recommended)](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-admx-mss-legacy#admx-mss-legacy-pol-mss-autoadminlogon) |  | Disabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval<br>holographicForBusiness | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise |
| **[Device Password Enabled](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-devicelock#devicepasswordenabled)** |  | Enabled | windows10 | Home<br>Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval<br>holographicForBusiness | surfaceHub<br>hololens<br>hololensEnterprise |
|  | **[Device Password History](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-devicelock#devicepasswordhistory)** | 24 | windows10 | Home<br>Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval<br>holographicForBusiness | surfaceHub<br>hololens<br>hololensEnterprise |
| [Interactive Logon Message Text For Users Attempting To Log On](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-LocalPoliciesSecurityOptions#interactivelogon_messagetextforusersattemptingtologon) |  | Insert text here | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Interactive Logon Message Title For Users Attempting To Log On](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-LocalPoliciesSecurityOptions#interactivelogon_messagetitleforusersattemptingtologon) |  | Enter title here | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[User Account Control Behavior Of The Elevation Prompt For Administrators](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-LocalPoliciesSecurityOptions#useraccountcontrol_behavioroftheelevationpromptforadministrators)** |  | Prompt for consent on the secure desktop | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Hypervisor Enforced Code Integrity](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-VirtualizationBasedTechnology#hypervisorenforcedcodeintegrity)** |  | (Enabled with UEFI lock) Turns on Hypervisor-Protected Code Integrity with UEFI lock. | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CPC<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CloudN<br>11SE<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |

---

### CIS (L1) Defender - Windows 11 Intune 4.0.0

*CIS Recommendatio Numbers:

4.11.28.3.1
22.1
22.2
22.3
22.4
22.5
22.6
22.7
22.8
22.9
22.10
22.11
22.12
22.13
22.14
22.15
22.16
22.17
22.18
22.19
22.20
22.21
22.22
22.23
22.26
22.27
22.28
22.29
22.30
22.32
96.1

*

**Platform:** windows10

| Setting | Sub-Setting | Value | Supported Platform | Supported SKUs | Unsupported SKUs |
| --- | --- | --- | --- | --- | --- |
| [Configure local setting override for reporting to Microsoft MAPS](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-admx-microsoftdefenderantivirus#admx-microsoftdefenderantivirus-spynet-localsettingoverridespynetreporting) |  | Disabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval<br>holographicForBusiness | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise |
| **[Allow Behavior Monitoring](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-defender)** |  | Allowed. Turns on real-time behavior monitoring. | windows10 | Home<br>Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Allow Email Scanning](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-defender) |  | Allowed. Turns on email scanning. | windows10 | Home<br>Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Allow Full Scan Removable Drive Scanning](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-defender)** |  | Allowed. Scans removable drives. | windows10 | Home<br>Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Allow Realtime Monitoring](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-defender)** |  | Allowed. Turns on and runs the real-time monitoring service. | windows10 | Home<br>Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Allow scanning of all downloaded files and attachments](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-defender)** |  | Allowed. | windows10 | Home<br>Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Allow Script Scanning](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-defender)** |  | Allowed. | windows10 | Home<br>Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Attack Surface Reduction Rules](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-defender#attacksurfacereductionrules)** |  |  | windows10 | Home<br>Professional<br>Enterprise<br>Education<br>MultiSession<br>iotEnterprise<br>surfaceHub | CloudN<br>CPC<br>11SE<br>iotEnterpriseSEval<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
|  | [Block abuse of exploited vulnerable signed drivers (Device)](https://docs.microsoft.com/en-us/windows/security/threat-protection/microsoft-defender-atp/attack-surface-reduction) | Block | windows10 | Home<br>Professional<br>Enterprise<br>Education<br>MultiSession<br>iotEnterprise<br>surfaceHub | CloudN<br>CPC<br>11SE<br>iotEnterpriseSEval<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
|  | **[Block Adobe Reader from creating child processes](https://docs.microsoft.com/en-us/windows/security/threat-protection/microsoft-defender-atp/attack-surface-reduction)** | Block | windows10 | Home<br>Professional<br>Enterprise<br>Education<br>MultiSession<br>iotEnterprise<br>surfaceHub | CloudN<br>CPC<br>11SE<br>iotEnterpriseSEval<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
|  | *[Block all Office applications from creating child processes](https://docs.microsoft.com/en-us/windows/security/threat-protection/microsoft-defender-atp/attack-surface-reduction)* | Audit | windows10 | Home<br>Professional<br>Enterprise<br>Education<br>MultiSession<br>iotEnterprise<br>surfaceHub | CloudN<br>CPC<br>11SE<br>iotEnterpriseSEval<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
|  | **[Block credential stealing from the Windows local security authority subsystem](https://docs.microsoft.com/en-us/windows/security/threat-protection/microsoft-defender-atp/attack-surface-reduction)** | Block | windows10 | Home<br>Professional<br>Enterprise<br>Education<br>MultiSession<br>iotEnterprise<br>surfaceHub | CloudN<br>CPC<br>11SE<br>iotEnterpriseSEval<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
|  | **[Block executable content from email client and webmail](https://docs.microsoft.com/en-us/windows/security/threat-protection/microsoft-defender-atp/attack-surface-reduction)** | Block | windows10 | Home<br>Professional<br>Enterprise<br>Education<br>MultiSession<br>iotEnterprise<br>surfaceHub | CloudN<br>CPC<br>11SE<br>iotEnterpriseSEval<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
|  | [Block executable files from running unless they meet a prevalence, age, or trusted list criterion](https://docs.microsoft.com/en-us/windows/security/threat-protection/microsoft-defender-atp/attack-surface-reduction) | Audit | windows10 | Home<br>Professional<br>Enterprise<br>Education<br>MultiSession<br>iotEnterprise<br>surfaceHub | CloudN<br>CPC<br>11SE<br>iotEnterpriseSEval<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
|  | *[Block execution of potentially obfuscated scripts](https://docs.microsoft.com/en-us/windows/security/threat-protection/microsoft-defender-atp/attack-surface-reduction)* | Audit | windows10 | Home<br>Professional<br>Enterprise<br>Education<br>MultiSession<br>iotEnterprise<br>surfaceHub | CloudN<br>CPC<br>11SE<br>iotEnterpriseSEval<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
|  | **[Block JavaScript or VBScript from launching downloaded executable content](https://docs.microsoft.com/en-us/windows/security/threat-protection/microsoft-defender-atp/attack-surface-reduction)** | Block | windows10 | Home<br>Professional<br>Enterprise<br>Education<br>MultiSession<br>iotEnterprise<br>surfaceHub | CloudN<br>CPC<br>11SE<br>iotEnterpriseSEval<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
|  | **[Block Office applications from creating executable content](https://docs.microsoft.com/en-us/windows/security/threat-protection/microsoft-defender-atp/attack-surface-reduction)** | Block | windows10 | Home<br>Professional<br>Enterprise<br>Education<br>MultiSession<br>iotEnterprise<br>surfaceHub | CloudN<br>CPC<br>11SE<br>iotEnterpriseSEval<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
|  | **[Block Office applications from injecting code into other processes](https://docs.microsoft.com/en-us/windows/security/threat-protection/microsoft-defender-atp/attack-surface-reduction)** | Block | windows10 | Home<br>Professional<br>Enterprise<br>Education<br>MultiSession<br>iotEnterprise<br>surfaceHub | CloudN<br>CPC<br>11SE<br>iotEnterpriseSEval<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
|  | *[Block Office communication application from creating child processes](https://docs.microsoft.com/en-us/windows/security/threat-protection/microsoft-defender-atp/attack-surface-reduction)* | Audit | windows10 | Home<br>Professional<br>Enterprise<br>Education<br>MultiSession<br>iotEnterprise<br>surfaceHub | CloudN<br>CPC<br>11SE<br>iotEnterpriseSEval<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
|  | [Block persistence through WMI event subscription](https://docs.microsoft.com/en-us/windows/security/threat-protection/microsoft-defender-atp/attack-surface-reduction) | Block | windows10 | Home<br>Professional<br>Enterprise<br>Education<br>MultiSession<br>iotEnterprise<br>surfaceHub | CloudN<br>CPC<br>11SE<br>iotEnterpriseSEval<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
|  | **[Block process creations originating from PSExec and WMI commands](https://docs.microsoft.com/en-us/windows/security/threat-protection/microsoft-defender-atp/attack-surface-reduction)** | Audit | windows10 | Home<br>Professional<br>Enterprise<br>Education<br>MultiSession<br>iotEnterprise<br>surfaceHub | CloudN<br>CPC<br>11SE<br>iotEnterpriseSEval<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
|  | **[Block untrusted and unsigned processes that run from USB](https://docs.microsoft.com/en-us/windows/security/threat-protection/microsoft-defender-atp/attack-surface-reduction)** | Block | windows10 | Home<br>Professional<br>Enterprise<br>Education<br>MultiSession<br>iotEnterprise<br>surfaceHub | CloudN<br>CPC<br>11SE<br>iotEnterpriseSEval<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
|  | **[Block Win32 API calls from Office macros](https://docs.microsoft.com/en-us/windows/security/threat-protection/microsoft-defender-atp/attack-surface-reduction)** | Block | windows10 | Home<br>Professional<br>Enterprise<br>Education<br>MultiSession<br>iotEnterprise<br>surfaceHub | CloudN<br>CPC<br>11SE<br>iotEnterpriseSEval<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
|  | [Use advanced protection against ransomware](https://docs.microsoft.com/en-us/windows/security/threat-protection/microsoft-defender-atp/attack-surface-reduction) | Audit | windows10 | Home<br>Professional<br>Enterprise<br>Education<br>MultiSession<br>iotEnterprise<br>surfaceHub | CloudN<br>CPC<br>11SE<br>iotEnterpriseSEval<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Days Until Aggressive Catchup Quick Scan](https://docs.microsoft.com/windows/client-management/mdm/Defender-csp/) |  | 7 | windows10 | Home<br>Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Enable Network Protection](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-defender)** |  | Enabled (block mode) | windows10 | Home<br>Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Hide Exclusions From Local Users](https://docs.microsoft.com/windows/client-management/mdm/Defender-csp/) |  | If you enable this setting, local users will no longer be able to see the exclusion list in Windows Security App or via PowerShell. | windows10 | Home<br>Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Oobe Enable Rtp And Sig Update](https://docs.microsoft.com/windows/client-management/mdm/Defender-csp/)** |  | If you enable this setting, real-time protection and Security Intelligence Updates are enabled during OOBE. | windows10 | Home<br>Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[PUA Protection](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-defender)** |  | PUA Protection on. Detected items are blocked. They will show in history along with other threats. | windows10 | Home<br>Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Quick Scan Include Exclusions](https://docs.microsoft.com/windows/client-management/mdm/Defender-csp/)** |  | If you set this setting to 1, all files and directories that are excluded from real-time protection using contextual exclusions are scanned during a quick scan. | windows10 | Home<br>Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Remote Encryption Protection Configured State](https://docs.microsoft.com/windows/client-management/mdm/Defender-csp/) |  | Audit: Generate EDR detections without blocking | windows10 | Home<br>Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Disallow Exploit Protection Override](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-WindowsDefenderSecurityCenter#disallowexploitprotectionoverride) |  | (Enable) Local users cannot make changes in the exploit protection settings area. | windows10 | Home<br>Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |

---

### CIS (L1) Device Lock & WHFB - Windows 11 Intune 4.0.0 

*CIS Recommendation Numbers:

26.1
26.2
26.3
26.4
26.6
26.7
26.8
26.9
97.1
97.2
97.3
97.4

*

**Platform:** windows10

| Setting | Sub-Setting | Value | Supported Platform | Supported SKUs | Unsupported SKUs |
| --- | --- | --- | --- | --- | --- |
| **[Device Password Enabled](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-devicelock#devicepasswordenabled)** |  | Enabled | windows10 | Home<br>Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval<br>holographicForBusiness | surfaceHub<br>hololens<br>hololensEnterprise |
|  | [Alphanumeric Device Password Required](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-devicelock#alphanumericdevicepasswordrequired) | Password or Alphanumeric PIN required. | windows10 | Home<br>Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval<br>holographicForBusiness | surfaceHub<br>hololens<br>hololensEnterprise |
|  | [Min Device Password Complex Characters](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-devicelock#mindevicepasswordcomplexcharacters) | Digits and lowercase letters are required | windows10 | Home<br>Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval<br>holographicForBusiness | surfaceHub<br>hololens<br>hololensEnterprise |
|  | [Device Password Expiration](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-devicelock#devicepasswordexpiration) | 365 | windows10 | Home<br>Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval<br>holographicForBusiness | surfaceHub<br>hololens<br>hololensEnterprise |
|  | [Max Device Password Failed Attempts](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-devicelock#maxdevicepasswordfailedattempts) | 5 | windows10 | Home<br>Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval<br>holographicForBusiness | surfaceHub<br>hololens<br>hololensEnterprise |
|  | [Max Inactivity Time Device Lock](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-devicelock#maxinactivitytimedevicelock) | 15 | windows10 | Home<br>Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval<br>holographicForBusiness | surfaceHub<br>hololens<br>hololensEnterprise |
|  | **[Min Device Password Length](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-devicelock#mindevicepasswordlength)** | 14 | windows10 | Home<br>Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval<br>holographicForBusiness | surfaceHub<br>hololens<br>hololensEnterprise |
| [Minimum Password Age](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-devicelock#minimumpasswordage) |  | 1 | windows10 | Home<br>Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| Device-scoped settings |  |  | windows10 | Home<br>Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval<br>holographicForBusiness | surfaceHub<br>hololens<br>hololensEnterprise |
|  | [Minimum PIN Length](https://docs.microsoft.com/windows/client-management/mdm/PassportForWork-csp/) | 6 | windows10 | Home<br>Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval<br>holographicForBusiness | surfaceHub<br>hololens<br>hololensEnterprise |
|  | [Require Security Device](https://docs.microsoft.com/windows/client-management/mdm/PassportForWork-csp/) | true | windows10 | Home<br>Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval<br>holographicForBusiness | surfaceHub<br>hololens<br>hololensEnterprise |
| [Enable ESS with Supported Peripherals](https://docs.microsoft.com/windows/client-management/mdm/PassportForWork-csp/) |  | Enhanced sign-in security will be enabled on systems with capable software and hardware, following the existing default behavior in Windows. For systems with one secure modality (face or fingerprint) and one insecure modality (fingerprint or face), only the secure sensor can be used for sign-in and the insecure sensor(s) will be blocked. This includes peripheral devices, which are unsupported and will be unusable. (default and recommended for highest security) | windows10 | Home<br>Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval<br>holographicForBusiness | surfaceHub<br>hololens<br>hololensEnterprise |
| **[Facial Features Use Enhanced Anti Spoofing](https://docs.microsoft.com/windows/client-management/mdm/PassportForWork-csp/)** |  | true | windows10 | Home<br>Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval<br>holographicForBusiness | surfaceHub<br>hololens<br>hololensEnterprise |
| User-scoped settings |  |  | windows10 | Home<br>Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval<br>holographicForBusiness | surfaceHub<br>hololens<br>hololensEnterprise |
|  | [Require Security Device (User)](https://docs.microsoft.com/windows/client-management/mdm/PassportForWork-csp/) | true | windows10 | Home<br>Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval<br>holographicForBusiness | surfaceHub<br>hololens<br>hololensEnterprise |

---

### CIS (L1) Firewall (38) - Windows 11 Intune 4.0.0 

*CIS recommendation Numbers:

38.1
38.2
38.3
38.4
38.5
38.6
38.7
38.8
38.9
38.10
38.11
38.12
38.13
38.14
38.15
38.16
38.17
38.18
38.19
38.20
38.21
38.22
38.23
*

**Platform:** windows10

| Setting | Sub-Setting | Value | Supported Platform | Supported SKUs | Unsupported SKUs |
| --- | --- | --- | --- | --- | --- |
| **[Enable Domain Network Firewall](https://docs.microsoft.com/en-us/windows/client-management/mdm/firewall-csp)** |  | True | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval<br>holographicForBusiness | Home<br>surfaceHub<br>hololens<br>hololensEnterprise |
|  | **[Default Inbound Action for Domain Profile](https://docs.microsoft.com/en-us/windows/client-management/mdm/firewall-csp)** | Block | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval<br>holographicForBusiness | Home<br>surfaceHub<br>hololens<br>hololensEnterprise |
|  | **[Disable Inbound Notifications](https://docs.microsoft.com/en-us/windows/client-management/mdm/firewall-csp)** | True | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval<br>holographicForBusiness | Home<br>surfaceHub<br>hololens<br>hololensEnterprise |
|  | **[Enable Log Dropped Packets](https://docs.microsoft.com/windows/client-management/mdm/Firewall-csp/)** | Enable Logging Of Dropped Packets | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval<br>holographicForBusiness | Home<br>surfaceHub<br>hololens<br>hololensEnterprise |
|  | **[Enable Log Success Connections](https://docs.microsoft.com/windows/client-management/mdm/Firewall-csp/)** | Enable Logging Of Successful Connections | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval<br>holographicForBusiness | Home<br>surfaceHub<br>hololens<br>hololensEnterprise |
|  | [Log File Path](https://docs.microsoft.com/windows/client-management/mdm/Firewall-csp/) | %systemroot%\system32\LogFiles\Firewall\domainfw.log | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval<br>holographicForBusiness | Home<br>surfaceHub<br>hololens<br>hololensEnterprise |
|  | **[Log Max File Size](https://docs.microsoft.com/windows/client-management/mdm/Firewall-csp/)** | 16384 | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval<br>holographicForBusiness | Home<br>surfaceHub<br>hololens<br>hololensEnterprise |
| **[Enable Private Network Firewall](https://docs.microsoft.com/en-us/windows/client-management/mdm/firewall-csp)** |  | True | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval<br>holographicForBusiness | Home<br>surfaceHub<br>hololens<br>hololensEnterprise |
|  | **[Default Inbound Action for Private Profile](https://docs.microsoft.com/en-us/windows/client-management/mdm/firewall-csp)** | Block | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval<br>holographicForBusiness | Home<br>surfaceHub<br>hololens<br>hololensEnterprise |
|  | **[Disable Inbound Notifications](https://docs.microsoft.com/en-us/windows/client-management/mdm/firewall-csp)** | True | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval<br>holographicForBusiness | Home<br>surfaceHub<br>hololens<br>hololensEnterprise |
|  | **[Enable Log Dropped Packets](https://docs.microsoft.com/windows/client-management/mdm/Firewall-csp/)** | Enable Logging Of Dropped Packets | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval<br>holographicForBusiness | Home<br>surfaceHub<br>hololens<br>hololensEnterprise |
|  | **[Enable Log Success Connections](https://docs.microsoft.com/windows/client-management/mdm/Firewall-csp/)** | Enable Logging Of Successful Connections | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval<br>holographicForBusiness | Home<br>surfaceHub<br>hololens<br>hololensEnterprise |
|  | [Log File Path](https://docs.microsoft.com/windows/client-management/mdm/Firewall-csp/) | %systemroot%\system32\LogFiles\Firewall\privatefw.log | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval<br>holographicForBusiness | Home<br>surfaceHub<br>hololens<br>hololensEnterprise |
|  | **[Log Max File Size](https://docs.microsoft.com/windows/client-management/mdm/Firewall-csp/)** | 16384 | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval<br>holographicForBusiness | Home<br>surfaceHub<br>hololens<br>hololensEnterprise |
| **[Enable Public Network Firewall](https://docs.microsoft.com/en-us/windows/client-management/mdm/firewall-csp)** |  | True | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval<br>holographicForBusiness | Home<br>surfaceHub<br>hololens<br>hololensEnterprise |
|  | **[Allow Local Ipsec Policy Merge](https://docs.microsoft.com/en-us/windows/client-management/mdm/firewall-csp)** | False | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval<br>holographicForBusiness | Home<br>surfaceHub<br>hololens<br>hololensEnterprise |
|  | **[Allow Local Policy Merge](https://docs.microsoft.com/en-us/windows/client-management/mdm/firewall-csp)** | False | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval<br>holographicForBusiness | Home<br>surfaceHub<br>hololens<br>hololensEnterprise |
|  | **[Default Inbound Action for Public Profile](https://docs.microsoft.com/en-us/windows/client-management/mdm/firewall-csp)** | Block | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval<br>holographicForBusiness | Home<br>surfaceHub<br>hololens<br>hololensEnterprise |
|  | **[Disable Inbound Notifications](https://docs.microsoft.com/en-us/windows/client-management/mdm/firewall-csp)** | True | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval<br>holographicForBusiness | Home<br>surfaceHub<br>hololens<br>hololensEnterprise |
|  | **[Enable Log Dropped Packets](https://docs.microsoft.com/windows/client-management/mdm/Firewall-csp/)** | Enable Logging Of Dropped Packets | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval<br>holographicForBusiness | Home<br>surfaceHub<br>hololens<br>hololensEnterprise |
|  | **[Enable Log Success Connections](https://docs.microsoft.com/windows/client-management/mdm/Firewall-csp/)** | Enable Logging Of Successful Connections | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval<br>holographicForBusiness | Home<br>surfaceHub<br>hololens<br>hololensEnterprise |
|  | [Log File Path](https://docs.microsoft.com/windows/client-management/mdm/Firewall-csp/) | %systemroot%\system32\LogFiles\Firewall\publicfw.log | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval<br>holographicForBusiness | Home<br>surfaceHub<br>hololens<br>hololensEnterprise |
|  | **[Log Max File Size](https://docs.microsoft.com/windows/client-management/mdm/Firewall-csp/)** | 16384 | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval<br>holographicForBusiness | Home<br>surfaceHub<br>hololens<br>hololensEnterprise |

---

### CIS (L1) Local Policies Security Options (49) - Windows 11 Intune 4.0.0 

*CIS Recommendaiton Numbers:

49.1
49.2
49.3
49.4
49.6
49.7
49.8
49.11
49.12
49.13
49.14
49.15
49.16
49.17
49.18
49.19
49.20
49.21
49.22
49.23
49.24
49.25
49.26
49.27
49.29
49.30
49.31
49.32
49.33
49.34
49.35
*

**Platform:** windows10

| Setting | Sub-Setting | Value | Supported Platform | Supported SKUs | Unsupported SKUs |
| --- | --- | --- | --- | --- | --- |
| [Accounts Enable Guest Account Status](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-LocalPoliciesSecurityOptions#accounts_enableguestaccountstatus) |  | Disable | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Accounts Limit Local Account Use Of Blank Passwords To Console Logon Only](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-LocalPoliciesSecurityOptions#accounts_limitlocalaccountuseofblankpasswordstoconsolelogononly)** |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Accounts Rename Administrator Account](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-LocalPoliciesSecurityOptions#accounts_renameadministratoraccount) |  | Admin | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Accounts Rename Guest Account](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-LocalPoliciesSecurityOptions#accounts_renameguestaccount) |  | Gtest | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Interactive Logon Do Not Display Last Signed In](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-LocalPoliciesSecurityOptions#interactivelogon_donotdisplaylastsignedin) |  | Enabled (username will not be shown) | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Interactive Logon Do Not Require CTRLALTDEL](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-LocalPoliciesSecurityOptions#interactivelogon_donotrequirectrlaltdel) |  | Disabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Interactive Logon Machine Inactivity Limit](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-LocalPoliciesSecurityOptions#interactivelogon_machineinactivitylimit)** |  | 900 | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Interactive Logon Smart Card Removal Behavior](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-LocalPoliciesSecurityOptions#interactivelogon_smartcardremovalbehavior)** |  | Lock Workstation | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Microsoft Network Client Digitally Sign Communications Always](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-LocalPoliciesSecurityOptions#microsoftnetworkclient_digitallysigncommunicationsalways)** |  | Enable | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Microsoft Network Client Digitally Sign Communications If Server Agrees](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-LocalPoliciesSecurityOptions#microsoftnetworkclient_digitallysigncommunicationsifserveragrees) |  | Enable | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Microsoft Network Client Send Unencrypted Password To Third Party SMB Servers](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-LocalPoliciesSecurityOptions#microsoftnetworkclient_sendunencryptedpasswordtothirdpartysmbservers)** |  | Disable | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Microsoft Network Server Digitally Sign Communications Always](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-LocalPoliciesSecurityOptions#microsoftnetworkserver_digitallysigncommunicationsalways)** |  | Enable | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Microsoft Network Server Digitally Sign Communications If Client Agrees](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-LocalPoliciesSecurityOptions#microsoftnetworkserver_digitallysigncommunicationsifclientagrees) |  | Enable | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Network Access Do Not Allow Anonymous Enumeration Of SAM Accounts](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-LocalPoliciesSecurityOptions#networkaccess_donotallowanonymousenumerationofsamaccounts)** |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Network Access Do Not Allow Anonymous Enumeration Of Sam Accounts And Shares](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-LocalPoliciesSecurityOptions#networkaccess_donotallowanonymousenumerationofsamaccountsandshares)** |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Network Access Restrict Anonymous Access To Named Pipes And Shares](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-LocalPoliciesSecurityOptions#networkaccess_restrictanonymousaccesstonamedpipesandshares)** |  | Enable | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Network Access Restrict Clients Allowed To Make Remote Calls To SAM](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-LocalPoliciesSecurityOptions#networkaccess_restrictclientsallowedtomakeremotecallstosam)** |  | O:BAG:BAD:(A;;RC;;;BA) | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Network Security Allow Local System To Use Computer Identity For NTLM](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-LocalPoliciesSecurityOptions#networksecurity_allowlocalsystemtousecomputeridentityforntlm) |  | Allow | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Network Security Allow PKU2U Authentication Requests](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-LocalPoliciesSecurityOptions#networksecurity_allowpku2uauthenticationrequests) |  | Block | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Network Security Do Not Store LAN Manager Hash Value On Next Password Change](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-LocalPoliciesSecurityOptions#networksecurity_donotstorelanmanagerhashvalueonnextpasswordchange)** |  | Enable | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Network Security LAN Manager Authentication Level](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-LocalPoliciesSecurityOptions#networksecurity_lanmanagerauthenticationlevel)** |  | Send NTLMv2 responses only. Refuse LM and NTLM | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Network Security Minimum Session Security For NTLMSSP Based Clients](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-LocalPoliciesSecurityOptions#networksecurity_minimumsessionsecurityforntlmsspbasedclients)** |  | Require NTLM and 128-bit encryption | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Network Security Minimum Session Security For NTLMSSP Based Servers](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-LocalPoliciesSecurityOptions#networksecurity_minimumsessionsecurityforntlmsspbasedservers)** |  | Require NTLM and 128-bit encryption | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Network Security Restrict NTLM Audit Incoming NTLM Traffic](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-LocalPoliciesSecurityOptions#networksecurity_restrictntlm_auditincomingntlmtraffic) |  | Enable auditing for all accounts | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[User Account Control Behavior Of The Elevation Prompt For Standard Users](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-LocalPoliciesSecurityOptions#useraccountcontrol_behavioroftheelevationpromptforstandardusers)** |  | Automatically deny elevation requests | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[User Account Control Detect Application Installations And Prompt For Elevation](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-LocalPoliciesSecurityOptions#useraccountcontrol_detectapplicationinstallationsandpromptforelevation)** |  | Enable | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[User Account Control Only Elevate UI Access Applications That Are Installed In Secure Locations](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-LocalPoliciesSecurityOptions#useraccountcontrol_onlyelevateuiaccessapplicationsthatareinstalledinsecurelocations)** |  | Enabled: Application runs with UIAccess integrity only if it resides in secure location. | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[User Account Control Run All Administrators In Admin Approval Mode](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-LocalPoliciesSecurityOptions#useraccountcontrol_runalladministratorsinadminapprovalmode)** |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [User Account Control Switch To The Secure Desktop When Prompting For Elevation](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-LocalPoliciesSecurityOptions#useraccountcontrol_switchtothesecuredesktopwhenpromptingforelevation) |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[User Account Control Use Admin Approval Mode](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-LocalPoliciesSecurityOptions#useraccountcontrol_useadminapprovalmode)** |  | Enable | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[User Account Control Virtualize File And Registry Write Failures To Per User Locations](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-LocalPoliciesSecurityOptions#useraccountcontrol_virtualizefileandregistrywritefailurestoperuserlocations)** |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |

---

### CIS (L1) Section 1 - 4.9.1.1 - Windows 11 Intune 4.0.0 

*CIS Recommendation Numbers:

1.1
4.1.3.1
4.1.3.2
4.4.1
4.4.2
4.4.3
4.4.4
4.4.5
4.5.2
4.5.3
4.5.5
4.5.7
4.5.9
4.5.10
4.5.13
4.6.4.1
4.6.9.1
4.6.9.2
4.6.9.3
4.6.11.1
4.6.18.1
4.6.18.2
4.7.1
4.7.2
4.7.3
4.7.4
4.7.5
4.7.6
4.7.7
4.7.8
4.7.9
4.7.10
4.7.11
4.9.1.1
*

**Platform:** windows10

| Setting | Sub-Setting | Value | Supported Platform | Supported SKUs | Unsupported SKUs |
| --- | --- | --- | --- | --- | --- |
| [Allow Cortana Above Lock](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-abovelock#allowcortanaabovelock) |  | Block | windows10 | Professional<br>Enterprise<br>Education<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>MultiSession<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Prevent enabling lock screen camera](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-devicelock#devicelock-preventenablinglockscreencamera)** |  | Enabled | windows10 | Home<br>Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Prevent enabling lock screen slide show](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-devicelock#devicelock-preventlockscreenslideshow)** |  | Enabled | windows10 | Home<br>Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Apply UAC restrictions to local accounts on network logons](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-mssecurityguide#mssecurityguide-applyuacrestrictionstolocalaccountsonnetworklogon)** |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Configure SMB v1 client driver](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-mssecurityguide#mssecurityguide-configuresmbv1clientdriver)** |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
|  | **Configure MrxSmb10 driver** | Disable driver (recommended) | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Configure SMB v1 server](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-mssecurityguide#mssecurityguide-configuresmbv1server)** |  | Disabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Enable Structured Exception Handling Overwrite Protection (SEHOP)](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-mssecurityguide#mssecurityguide-enablestructuredexceptionhandlingoverwriteprotection)** |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [WDigest Authentication (disabling may require KB2871997)](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-mssecurityguide#mssecurityguide-wdigestauthentication) |  | Disabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[MSS: (DisableIPSourceRouting IPv6) IP source routing protection level (protects against packet spoofing)](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-msslegacy#msslegacy-ipv6sourceroutingprotectionlevel)** |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
|  | **DisableIPSourceRoutingIPv6 (Device)** | Highest protection, source routing is completely disabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[MSS: (DisableIPSourceRouting) IP source routing protection level (protects against packet spoofing)](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-msslegacy#msslegacy-ipsourceroutingprotectionlevel)** |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
|  | **DisableIPSourceRouting (Device)** | Highest protection, source routing is completely disabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[MSS: (EnableICMPRedirect) Allow ICMP redirects to override OSPF generated routes](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-msslegacy#msslegacy-allowicmpredirectstooverrideospfgeneratedroutes)** |  | Disabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[MSS: (NoNameReleaseOnDemand) Allow the computer to ignore NetBIOS name release requests except from WINS servers](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-msslegacy#msslegacy-allowthecomputertoignorenetbiosnamereleaserequestsexceptfromwinsservers)** |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [MSS: (SafeDllSearchMode) Enable Safe DLL search mode (recommended)](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-admx-mss-legacy#admx-mss-legacy-pol-mss-safedllsearchmode) |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval<br>holographicForBusiness | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise |
| [MSS: (ScreenSaverGracePeriod) The time in seconds before the screen saver grace period expires (0 recommended)](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-admx-mss-legacy#admx-mss-legacy-pol-mss-screensavergraceperiod) |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval<br>holographicForBusiness | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise |
|  | ScreenSaverGracePeriod (Device) | 5 | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval<br>holographicForBusiness | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise |
| [MSS: (WarningLevel) Percentage threshold for the security event log at which the system will generate a warning](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-admx-mss-legacy#admx-mss-legacy-pol-mss-warninglevel) |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval<br>holographicForBusiness | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise |
|  | WarningLevel (Device) | 90% | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval<br>holographicForBusiness | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise |
| **[Turn off multicast name resolution](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-admx-dnsclient#admx-dnsclient-turn-off-multicast)** |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval<br>holographicForBusiness | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise |
| [Prohibit installation and configuration of Network Bridge on your DNS domain network](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-connectivity#connectivity-prohibitinstallationandconfigurationofnetworkbridge) |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>MultiSession<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Prohibit use of Internet Connection Sharing on your DNS domain network](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-admx-networkconnections#admx-networkconnections-nc-showsharedaccessui)** |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval<br>holographicForBusiness | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise |
| [Require domain users to elevate when setting a network's location](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-admx-networkconnections#admx-networkconnections-nc-stddomainusersetlocation) |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval<br>holographicForBusiness | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise |
| **[Hardened UNC Paths](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-connectivity#connectivity-hardeneduncpaths)** |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
|  | **Hardened UNC Paths: (Device)** |  | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
|  | **Name** | \\*\NETLOGON | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
|  | *Value* | RequireIntegrity=1,RequireMutualAuthentication=1,RequirePrivacy=1 | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
|  | **Name** | \\*\SYSVOL | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
|  | *Value* | RequireIntegrity=1,RequireMutualAuthentication=1,RequirePrivacy=1 | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Minimize the number of simultaneous connections to the Internet or a Windows Domain](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-admx-wcm#admx-wcm-wcm-minimizeconnections) |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval<br>holographicForBusiness | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise |
|  | Minimize Policy Options (Device) | 3 = Prevent Wi-Fi when on Ethernet | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval<br>holographicForBusiness | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise |
| **[Prohibit connection to non-domain networks when connected to domain authenticated network](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-windowsconnectionmanager#windowsconnectionmanager-prohitconnectiontonondomainnetworkswhenconnectedtodomainauthenticatednetwork)** |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Allow Print Spooler to accept client connections](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-admx-printing2#admx-printing2-registerspoolerremoterpcendpoint) |  | Disabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval<br>holographicForBusiness | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise |
| **[Configure Redirection Guard](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-printers#printers-configureredirectionguardpolicy)** |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
|  | **Redirection Guard Options (Device)** | Redirection Guard Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Configure RPC connection settings](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-printers#printers-configurerpcconnectionpolicy)** |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
|  | **Protocol to use for outgoing RPC connections: (Device)** | RPC over TCP | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
|  | **Use authentication for outgoing RPC connections: (Device)** | Default | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Configure RPC listener settings](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-printers#printers-configurerpclistenerpolicy)** |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
|  | **Authentication protocol to use for incoming RPC connections: (Device)** | Negotiate | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
|  | **Protocols to allow for incoming RPC connections: (Device)** | RPC over TCP | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Configure RPC over TCP port](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-printers#printers-configurerpctcpport)** |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
|  | **RPC over TCP port: (Device)** | 0 | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Limits print driver installation to Administrators](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-printers#printers-restrictdriverinstallationtoadministrators)** |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Manage processing of Queue-specific files](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-printers#printers-configurecopyfilespolicy)** |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
|  | **Manage processing of Queue-Specific files: (Device)** | Limit Queue-specific files to Color profiles | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Point and Print Restrictions](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-printers#printers-pointandprintrestrictions) |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
|  | Enter fully qualified server names separated by semicolons (Device) |  | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
|  | Users can only point and print to machines in their forest (Device) | False | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
|  | Users can only point and print to these servers: (Device) | False | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
|  | When installing drivers for a new connection: (Device) | Show warning and elevation prompt | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
|  | When updating drivers for an existing connection: (Device) | Show warning and elevation prompt | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Turn off toast notifications on the lock screen (User)](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-admx-wpn#admx-wpn-nolockscreentoastnotification)** |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval<br>holographicForBusiness | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise |

---

### CIS (L1) Section 15 - 104 - Windows 11 Intune 4.0.0

*CIS Recommendation Numbers:

15.1
15.2
23.1
24.6
24.8
24.5
24.7
34.1
34.2
34.4
34.5
46.1
50.1
55.1
55.2
55.4
55.6
55.7
55.8
68.2
68.4
72.2
72.3
76.1.1
76.1.2
76.1.3
76.1.4
79.1
80.3
80.6
80.7
80.8
90.2
93.1
94.1
98.2
101.1
101.2
104.1

Does not contain recommendations from Sections 22, 26, 38, 49, 81, 89, 96, 97, 103
*

**Platform:** windows10

| Setting | Sub-Setting | Value | Supported Platform | Supported SKUs | Unsupported SKUs |
| --- | --- | --- | --- | --- | --- |
|  Provider ID |  |  | windows10 | Home<br>Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval<br>holographicForBusiness | surfaceHub<br>hololens<br>hololensEnterprise |
|  | [Config refresh](https://docs.microsoft.com/windows/client-management/mdm/DMClient-csp/) | Enabled. | windows10 | Home<br>Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval<br>holographicForBusiness | surfaceHub<br>hololens<br>hololensEnterprise |
|  | [Refresh cadence](https://docs.microsoft.com/windows/client-management/mdm/DMClient-csp/) | 90 | windows10 | Home<br>Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval<br>holographicForBusiness | surfaceHub<br>hololens<br>hololensEnterprise |
| [DO Download Mode](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-DeliveryOptimization#dodownloadmode) |  | HTTP only, no peering | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval<br>holographicForBusiness | Home<br>surfaceHub<br>hololens<br>hololensEnterprise |
| **[Configure System Guard Launch](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-deviceguard#configuresystemguardlaunch)** |  | Unmanaged Enables Secure Launch if supported by hardware | windows10 | Home<br>Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Credential Guard](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-deviceguard#lsacfgflags)** |  | (Enabled with UEFI lock) Turns on Credential Guard with UEFI lock. | windows10 | Enterprise<br>Education<br>MultiSession<br>CPC<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>Professional<br>CloudN<br>11SE<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Enable Virtualization Based Security](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-deviceguard#enablevirtualizationbasedsecurity)** |  | enable virtualization based security. | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CPC<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CloudN<br>11SE<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Require Platform Security Features](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-deviceguard#requireplatformsecurityfeatures)** |  | Turns on VBS with Secure Boot. | windows10 | Enterprise<br>Education<br>MultiSession<br>CPC<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>Professional<br>CloudN<br>11SE<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Allow Cortana](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-Experience#allowcortana) |  | Block | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval<br>holographicForBusiness | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise |
| [Allow Spotlight Collection (User)](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-Experience#allowspotlightcollection) |  | 0 | windows10 | Enterprise<br>Education<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>Professional<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Disable Consumer Account State Content](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-Experience#disableconsumeraccountstatecontent) |  | Enabled. | windows10 | Enterprise<br>Education<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>Professional<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Do Not Show Feedback Notifications](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-Experience#donotshowfeedbacknotifications) |  | Feedback notifications are disabled. | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Enable Insecure Guest Logons](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-LanmanWorkstation#enableinsecureguestlogons)** |  | Disabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Configure Lsa Protected Process](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-LocalSecurityAuthority#configurelsaprotectedprocess)** |  | Enabled with UEFI lock. LSA will run as protected process and this configuration is UEFI locked. | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Allow apps from the Microsoft app store to auto update](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-ApplicationManagement#allowappstoreautoupdate) |  | Allowed. | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval<br>holographicForBusiness | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise |
| **[Allow Game DVR](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-ApplicationManagement#allowgamedvr)** |  | Block | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Block Non Admin User Install](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-ApplicationManagement#blocknonadminuserinstall) |  | Allow | windows10 | Enterprise<br>Education<br>MultiSession<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>Professional<br>CloudN<br>CPC<br>11SE<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[MSI Allow User Control Over Install](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-ApplicationManagement#msiallowusercontroloverinstall)** |  | Disabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[MSI Always Install With Elevated Privileges](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-ApplicationManagement#msialwaysinstallwithelevatedprivileges)** |  | Disabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [MSI Always Install With Elevated Privileges (User)](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-ApplicationManagement#msialwaysinstallwithelevatedprivileges) |  | Disabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Allow Input Personalization](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-Privacy#allowinputpersonalization) |  | Block | windows10 | Home<br>Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval<br>holographicForBusiness | surfaceHub<br>hololens<br>hololensEnterprise |
| **[Let Apps Activate With Voice Above Lock](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-Privacy#letappsactivatewithvoiceabovelock)** |  | Force deny. Windows apps cannot be activated by voice while the screen is locked, and users cannot change it. | windows10 | Home<br>Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Allow Indexing Encrypted Stores Or Items](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-Search#allowindexingencryptedstoresoritems)** |  | Block | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Allow Search To Use Location](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-Search#allowsearchtouselocation) |  | Block | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval<br>holographicForBusiness | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise |
| **Notify Malicious** |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **Notify Password Reuse** |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **Notify Unsafe App** |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **Service Enabled** |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Enable Sudo](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-Sudo#enablesudo)** |  | Sudo is disabled. | windows10 | Professional<br>Enterprise<br>Education<br>CloudN<br>11SE<br>iotEnterprise | Home<br>MultiSession<br>CPC<br>iotEnterpriseSEval<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Allow Telemetry](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-System#allowtelemetry) |  | Basic | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval<br>holographicForBusiness | Home<br>surfaceHub<br>hololens<br>hololensEnterprise |
| [Enable One Settings Auditing](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-System#enableonesettingsauditing) |  | Enabled. | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Limit Diagnostic Log Collection](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-System#limitdiagnosticlogcollection) |  | Enabled. | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Limit Dump Collection](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-System#limitdumpcollection) |  | Enabled. | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Require UEFI Memory Attributes Table](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-VirtualizationBasedTechnology#requireuefimemoryattributestable) |  | Require UEFI Memory Attributes Table | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CPC<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CloudN<br>11SE<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Allow Auto Connect To Wi Fi Sense Hotspots](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-wifi#allowautoconnecttowifisensehotspots)** |  | Block | windows10 | Professional<br>Enterprise<br>Education<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>MultiSession<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Allow widgets](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-configuration-service-provider) |  | Not allowed. | windows10 | Professional<br>Enterprise<br>Education<br>CloudN<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>MultiSession<br>CPC<br>11SE<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Allow Windows Ink Workspace](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-WindowsInkWorkspace#allowwindowsinkworkspace)** |  | ink workspace is enabled (feature is turned on), but the user cannot access it above the lock screen. | windows10 | Professional<br>Enterprise<br>Education<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>MultiSession<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Allow Clipboard Redirection](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-WindowsSandbox#allowclipboardredirection) |  | Not allowed. | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Allow Networking](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-WindowsSandbox#allownetworking) |  | Not allowed. | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Require Pin For Pairing](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-WirelessDisplay#requirepinforpairing) |  | Pairing ceremony for new devices will always require a PIN | windows10 | Professional<br>Enterprise<br>Education<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>MultiSession<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |

---

### CIS (L1) User Rights (89) - Windows 11 Intune 4.0.0

*CIS Recommendation Numbers:

89.1
89.2
89.3
89.4
89.5
89.6
89.7
89.8
89.9
89.10
89.11
89.12
89.13
89.14
89.15
89.16
89.17
89.18
89.19
89.20
89.21
89.22
89.23
89.25
89.26
89.27
89.28
89.29
89.30
89.31
89.32
89.33
89.34
89.35
*

**Platform:** windows10

| Setting | Sub-Setting | Value | Supported Platform | Supported SKUs | Unsupported SKUs |
| --- | --- | --- | --- | --- | --- |
| [Access Credential Manager As Trusted Caller](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-UserRights#accesscredentialmanagerastrustedcaller) |  | (<![CDATA[]]>) | windows10 | Professional<br>Enterprise<br>Education<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>MultiSession<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Access From Network](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-UserRights#accessfromnetwork)** |  | *S-1-5-32-544; *S-1-5-32-555 | windows10 | Professional<br>Enterprise<br>Education<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>MultiSession<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Act As Part Of The Operating System](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-UserRights#actaspartoftheoperatingsystem) |  | (<![CDATA[]]>) | windows10 | Professional<br>Enterprise<br>Education<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>MultiSession<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Allow Local Log On](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-UserRights#allowlocallogon)** |  | *S-1-5-32-544; *S-1-5-32-545 | windows10 | Professional<br>Enterprise<br>Education<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>MultiSession<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Backup Files And Directories](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-UserRights#backupfilesanddirectories)** |  | *S-1-5-32-544 | windows10 | Professional<br>Enterprise<br>Education<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>MultiSession<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Change System Time](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-UserRights#changesystemtime) |  | *S-1-5-32-544; *S-1-5-19 | windows10 | Professional<br>Enterprise<br>Education<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>MultiSession<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Create Global Objects](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-UserRights#createglobalobjects)** |  | *S-1-5-32-544; *S-1-5-19; *S-1-5-20; *S-1-5-6 | windows10 | Professional<br>Enterprise<br>Education<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>MultiSession<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Create Page File](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-UserRights#createpagefile)** |  | *S-1-5-32-544 | windows10 | Professional<br>Enterprise<br>Education<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>MultiSession<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Create Permanent Shared Objects](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-UserRights#createpermanentsharedobjects) |  | (<![CDATA[]]>) | windows10 | Professional<br>Enterprise<br>Education<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>MultiSession<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Create Symbolic Links](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-UserRights#createsymboliclinks) |  | *S-1-5-32-544 | windows10 | Professional<br>Enterprise<br>Education<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>MultiSession<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Create Token](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-UserRights#createtoken) |  | (<![CDATA[]]>) | windows10 | Professional<br>Enterprise<br>Education<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>MultiSession<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Debug Programs](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-UserRights#debugprograms)** |  | *S-1-5-32-544 | windows10 | Professional<br>Enterprise<br>Education<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>MultiSession<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| *[Deny Access From Network](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-UserRights#denyaccessfromnetwork)* |  | *S-1-5-32-546; *S-1-5-113 | windows10 | Professional<br>Enterprise<br>Education<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>MultiSession<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Deny Local Log On](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-UserRights#denylocallogon) |  | *S-1-5-32-546 | windows10 | Professional<br>Enterprise<br>Education<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>MultiSession<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Deny Log On As Batch Job](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-UserRights#denylogonasbatchjob) |  | *S-1-5-32-546 | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Deny Log On As Service](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-UserRights#denylogonasservice) |  | *S-1-5-32-546 | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| *[Deny Remote Desktop Services Log On](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-UserRights#denyremotedesktopserviceslogon)* |  | *S-1-5-32-546; *S-1-5-113 | windows10 | Professional<br>Enterprise<br>Education<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>MultiSession<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Enable Delegation](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-UserRights#enabledelegation) |  | (<![CDATA[]]>) | windows10 | Professional<br>Enterprise<br>Education<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>MultiSession<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Generate Security Audits](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-UserRights#generatesecurityaudits) |  | *S-1-5-19; *S-1-5-20 | windows10 | Professional<br>Enterprise<br>Education<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>MultiSession<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| *[Impersonate Client](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-UserRights#impersonateclient)* |  | *S-1-5-32-544; *S-1-5-19; *S-1-5-20; *S-1-5-6 | windows10 | Professional<br>Enterprise<br>Education<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>MultiSession<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Increase Scheduling Priority](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-UserRights#increaseschedulingpriority) |  | *S-1-5-32-544; *S-1-5-90-0 | windows10 | Professional<br>Enterprise<br>Education<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>MultiSession<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Load Unload Device Drivers](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-UserRights#loadunloaddevicedrivers)** |  | *S-1-5-32-544 | windows10 | Professional<br>Enterprise<br>Education<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>MultiSession<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Lock Memory](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-UserRights#lockmemory) |  | (<![CDATA[]]>) | windows10 | Professional<br>Enterprise<br>Education<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>MultiSession<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Manage Auditing And Security Log](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-UserRights#manageauditingandsecuritylog)** |  | *S-1-5-32-544 | windows10 | Professional<br>Enterprise<br>Education<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>MultiSession<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Manage Volume](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-UserRights#managevolume)** |  | *S-1-5-32-544 | windows10 | Professional<br>Enterprise<br>Education<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>MultiSession<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Modify Firmware Environment](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-UserRights#modifyfirmwareenvironment)** |  | *S-1-5-32-544 | windows10 | Professional<br>Enterprise<br>Education<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>MultiSession<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Modify Object Label](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-UserRights#modifyobjectlabel) |  | (<![CDATA[]]>) | windows10 | Professional<br>Enterprise<br>Education<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>MultiSession<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Profile Single Process](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-UserRights#profilesingleprocess)** |  | *S-1-5-32-544 | windows10 | Professional<br>Enterprise<br>Education<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>MultiSession<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Profile System Performance](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-UserRights#profilesystemperformance) |  | *S-1-5-32-544; *S-1-5-80 | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Remote Shutdown](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-UserRights#remoteshutdown)** |  | *S-1-5-32-544 | windows10 | Professional<br>Enterprise<br>Education<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>MultiSession<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Replace Process Level Token](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-UserRights#replaceprocessleveltoken) |  | *S-1-5-19; *S-1-5-20 | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Restore Files And Directories](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-UserRights#restorefilesanddirectories)** |  | *S-1-5-32-544 | windows10 | Professional<br>Enterprise<br>Education<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>MultiSession<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Shut Down The System](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-UserRights#shutdownthesystem) |  | *S-1-5-32-544; *S-1-5-32-545 | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Take Ownership](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-UserRights#takeownership)** |  | *S-1-5-32-544 | windows10 | Professional<br>Enterprise<br>Education<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>MultiSession<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |

---

### CIS (L1) Windows LAPS (105) - Windows 11 Intune 4.4.0

**Platform:** windows10

| Setting | Sub-Setting | Value | Supported Platform | Supported SKUs | Unsupported SKUs |
| --- | --- | --- | --- | --- | --- |
| **[Backup Directory ](https://docs.microsoft.com/windows/client-management/mdm/LAPS-csp/)** |  | Backup the password to Microsoft Entra ID only | windows10 | Home<br>Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>surfaceHub<br>hololens<br>holographicForBusiness | CPC<br>iotEnterpriseSEval<br>hololensEnterprise |
|  | [Password Age Days](https://docs.microsoft.com/windows/client-management/mdm/LAPS-csp/) | 30 | windows10 | Home<br>Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>surfaceHub<br>hololens<br>holographicForBusiness | CPC<br>iotEnterpriseSEval<br>hololensEnterprise |
| [Password Complexity ](https://docs.microsoft.com/windows/client-management/mdm/LAPS-csp/) |  | Large letters + small letters + numbers + special characters | windows10 | Home<br>Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>surfaceHub<br>hololens<br>holographicForBusiness | CPC<br>iotEnterpriseSEval<br>hololensEnterprise |
| [Password Length ](https://docs.microsoft.com/windows/client-management/mdm/LAPS-csp/) |  | 15 | windows10 | Home<br>Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>surfaceHub<br>hololens<br>holographicForBusiness | CPC<br>iotEnterpriseSEval<br>hololensEnterprise |
| [Post Authentication Actions ](https://docs.microsoft.com/windows/client-management/mdm/LAPS-csp/) |  | Reset the password and logoff the managed account: upon expiry of the grace period, the managed account password will be reset and any interactive logon sessions using the managed account will terminated. | windows10 | Home<br>Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>surfaceHub<br>hololens<br>holographicForBusiness | CPC<br>iotEnterpriseSEval<br>hololensEnterprise |
| [Post Authentication Reset Delay ](https://docs.microsoft.com/windows/client-management/mdm/LAPS-csp/) |  | 8 | windows10 | Home<br>Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>surfaceHub<br>hololens<br>holographicForBusiness | CPC<br>iotEnterpriseSEval<br>hololensEnterprise |

---

### CIS (L1) Windows Update (103) - Windows 11 Intune 4.0.0 

*CIS Recommendations

103.1
103.2
103.3
103.4
103.5
103.6
*

**Platform:** windows10

| Setting | Sub-Setting | Value | Supported Platform | Supported SKUs | Unsupported SKUs |
| --- | --- | --- | --- | --- | --- |
| [Allow Auto Update](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-Update#allowautoupdate) |  | Auto install and restart. Updates are downloaded automatically on non-metered networks and installed during "Automatic Maintenance" when the device is not in use and is not running on battery power. If automatic maintenance is unable to install updates for two days, Windows Update will install updates right away. If a restart is required, then the device is automatically restarted when the device is not actively being used. This is the default behavior for unmanaged devices. Devices are updated quickly, but it increases the risk of accidental data loss caused by an application that does not shutdown properly on restart. | windows10 | Professional<br>Enterprise<br>Education<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval<br>holographicForBusiness | Home<br>MultiSession<br>surfaceHub<br>hololens<br>hololensEnterprise |
| [Block "Pause Updates" ability](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-Update#setdisablepauseuxaccess) |  | Block | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval<br>holographicForBusiness | Home<br>surfaceHub<br>hololens<br>hololensEnterprise |
| [Defer Feature Updates Period In Days](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-Update#deferfeatureupdatesperiodindays) |  | 180 | windows10 | Professional<br>Enterprise<br>Education<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval<br>holographicForBusiness | Home<br>MultiSession<br>surfaceHub<br>hololens<br>hololensEnterprise |
| [Defer Quality Updates Period (Days)](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-Update#deferqualityupdatesperiodindays) |  | 0 | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval<br>holographicForBusiness | Home<br>surfaceHub<br>hololens<br>hololensEnterprise |
| [Manage Preview Builds](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-Update#managepreviewbuilds) |  | Disable Preview builds | windows10 | Professional<br>Enterprise<br>Education<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval<br>holographicForBusiness | Home<br>MultiSession<br>surfaceHub<br>hololens<br>hololensEnterprise |
| [Scheduled Install Day](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-Update#scheduledinstallday) |  | Every day | windows10 | Professional<br>Enterprise<br>Education<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval<br>holographicForBusiness | Home<br>MultiSession<br>surfaceHub<br>hololens<br>hololensEnterprise |

---

### Windows Intune Baseline

**Platform:** windows10

| Setting | Sub-Setting | Value | Supported Platform | Supported SKUs | Unsupported SKUs |
| --- | --- | --- | --- | --- | --- |
| **[Prevent enabling lock screen camera](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-devicelock#devicelock-preventenablinglockscreencamera)** |  | Enabled | windows10 | Home<br>Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Prevent enabling lock screen slide show](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-devicelock#devicelock-preventlockscreenslideshow)** |  | Enabled | windows10 | Home<br>Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Apply UAC restrictions to local accounts on network logons](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-mssecurityguide#mssecurityguide-applyuacrestrictionstolocalaccountsonnetworklogon)** |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Configure SMB v1 client driver](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-mssecurityguide#mssecurityguide-configuresmbv1clientdriver)** |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
|  | **Configure MrxSmb10 driver** | Disable driver (recommended) | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Configure SMB v1 server](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-mssecurityguide#mssecurityguide-configuresmbv1server)** |  | Disabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Enable Structured Exception Handling Overwrite Protection (SEHOP)](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-mssecurityguide#mssecurityguide-enablestructuredexceptionhandlingoverwriteprotection)** |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[MSS: (DisableIPSourceRouting IPv6) IP source routing protection level (protects against packet spoofing)](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-msslegacy#msslegacy-ipv6sourceroutingprotectionlevel)** |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
|  | **DisableIPSourceRoutingIPv6 (Device)** | Highest protection, source routing is completely disabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[MSS: (DisableIPSourceRouting) IP source routing protection level (protects against packet spoofing)](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-msslegacy#msslegacy-ipsourceroutingprotectionlevel)** |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
|  | **DisableIPSourceRouting (Device)** | Highest protection, source routing is completely disabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[MSS: (EnableICMPRedirect) Allow ICMP redirects to override OSPF generated routes](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-msslegacy#msslegacy-allowicmpredirectstooverrideospfgeneratedroutes)** |  | Disabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[MSS: (NoNameReleaseOnDemand) Allow the computer to ignore NetBIOS name release requests except from WINS servers](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-msslegacy#msslegacy-allowthecomputertoignorenetbiosnamereleaserequestsexceptfromwinsservers)** |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Turn off multicast name resolution](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-admx-dnsclient#admx-dnsclient-turn-off-multicast)** |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval<br>holographicForBusiness | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise |
| **[Prohibit use of Internet Connection Sharing on your DNS domain network](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-admx-networkconnections#admx-networkconnections-nc-showsharedaccessui)** |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval<br>holographicForBusiness | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise |
| **[Hardened UNC Paths](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-connectivity#connectivity-hardeneduncpaths)** |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
|  | **Hardened UNC Paths: (Device)** |  | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
|  | *Value* | RequireMutualAuthentication=1,RequireIntegrity=1 | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
|  | **Name** | \\*\SYSVOL | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
|  | *Value* | RequireMutualAuthentication=1,RequireIntegrity=1 | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
|  | **Name** | \\*\NETLOGON | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Prohibit connection to non-domain networks when connected to domain authenticated network](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-windowsconnectionmanager#windowsconnectionmanager-prohitconnectiontonondomainnetworkswhenconnectedtodomainauthenticatednetwork)** |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Configure Redirection Guard](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-printers#printers-configureredirectionguardpolicy)** |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
|  | **Redirection Guard Options (Device)** | Redirection Guard Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Configure RPC connection settings](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-printers#printers-configurerpcconnectionpolicy)** |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
|  | **Use authentication for outgoing RPC connections: (Device)** | Default | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
|  | **Protocol to use for outgoing RPC connections: (Device)** | RPC over TCP | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Configure RPC listener settings](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-printers#printers-configurerpclistenerpolicy)** |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
|  | **Protocols to allow for incoming RPC connections: (Device)** | RPC over TCP | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
|  | **Authentication protocol to use for incoming RPC connections: (Device)** | Negotiate | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Configure RPC over TCP port](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-printers#printers-configurerpctcpport)** |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
|  | **RPC over TCP port: (Device)** | 0 | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Limits print driver installation to Administrators](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-printers#printers-restrictdriverinstallationtoadministrators)** |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Manage processing of Queue-specific files](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-printers#printers-configurecopyfilespolicy)** |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
|  | **Manage processing of Queue-Specific files: (Device)** | Limit Queue-specific files to Color profiles | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Turn off toast notifications on the lock screen (User)](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-admx-wpn#admx-wpn-nolockscreentoastnotification)** |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval<br>holographicForBusiness | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise |
| **[Include command line in process creation events](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-admx-auditsettings#admx-auditsettings-includecmdline)** |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval<br>holographicForBusiness | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise |
| **[Encryption Oracle Remediation](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-admx-credssp#admx-credssp-allowencryptionoracle)** |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval<br>holographicForBusiness | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise |
|  | **Protection Level: (Device)** | Force Updated Clients | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval<br>holographicForBusiness | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise |
| **[Remote host allows delegation of non-exportable credentials](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-credentialsdelegation#credentialsdelegation-remotehostallowsdelegationofnonexportablecredentials)** |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Prevent installation of devices using drivers that match these device setup classes](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-deviceinstallation) |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>MultiSession<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
|  | [Also apply to matching devices that are already installed.](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-deviceinstallation) | True | windows10 | Professional<br>Enterprise<br>Education<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>MultiSession<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
|  | [Prevented Classes](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-deviceinstallation) | {d48179be-ec20-11d1-b6b8-00c04fa372a7} | windows10 | Professional<br>Enterprise<br>Education<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>MultiSession<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Boot-Start Driver Initialization Policy](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-system#system-bootstartdriverinitialization)** |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
|  | **Choose the boot-start drivers that can be initialized:** | Good, unknown and bad but critical | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Configure registry policy processing](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-admx-grouppolicy#admx-grouppolicy-cse-registry) |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval<br>holographicForBusiness | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise |
|  | Do not apply during periodic background processing (Device) | False | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval<br>holographicForBusiness | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise |
|  | Process even if the Group Policy objects have not changed (Device) | True | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval<br>holographicForBusiness | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise |
| **[Turn off downloading of print drivers over HTTP](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-connectivity#connectivity-disabledownloadingofprintdriversoverhttp)** |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>MultiSession<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Turn off Internet download for Web publishing and online ordering wizards](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-connectivity#connectivity-disableinternetdownloadforwebpublishingandonlineorderingwizards)** |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>MultiSession<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| Allow Custom SSPs and APs to be loaded into LSASS |  | Disabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Allow standby states (S1-S3) when sleeping (on battery)](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-power#power-allowstandbystateswhensleepingonbattery) |  | Disabled | windows10 | Professional<br>Enterprise<br>Education<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>MultiSession<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Allow standby states (S1-S3) when sleeping (plugged in)](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-power#power-allowstandbywhensleepingpluggedin) |  | Disabled | windows10 | Professional<br>Enterprise<br>Education<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>MultiSession<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Require a password when a computer wakes (on battery)](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-power#power-requirepasswordwhencomputerwakesonbattery)** |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>MultiSession<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Require a password when a computer wakes (plugged in)](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-power#power-requirepasswordwhencomputerwakespluggedin)** |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>MultiSession<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Configure Solicited Remote Assistance](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-remoteassistance#remoteassistance-solicitedremoteassistance)** |  | Disabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Restrict Unauthenticated RPC clients](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-remoteprocedurecall#remoteprocedurecall-restrictunauthenticatedrpcclients)** |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
|  | **RPC Runtime Unauthenticated Client Restriction to Apply:** | Authenticated | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Allow Microsoft accounts to be optional](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-appruntime#appruntime-allowmicrosoftaccountstobeoptional)** |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Disallow Autoplay for non-volume devices](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-autoplay#autoplay-disallowautoplayfornonvolumedevices)** |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>MultiSession<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Set the default behavior for AutoRun](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-autoplay#autoplay-setdefaultautorunbehavior)** |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>MultiSession<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
|  | **Default AutoRun Behavior** | Do not execute any autorun commands | windows10 | Professional<br>Enterprise<br>Education<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>MultiSession<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Turn off Autoplay](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-autoplay#autoplay-turnoffautoplay)** |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>MultiSession<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
|  | **Turn off Autoplay on:** | All drives | windows10 | Professional<br>Enterprise<br>Education<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>MultiSession<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Deny write access to fixed drives not protected by BitLocker](https://docs.microsoft.com/en-us/windows/client-management/mdm/bitlocker-csp) |  | Disabled | windows10 |  |  |
| [Deny write access to removable drives not protected by BitLocker](https://docs.microsoft.com/en-us/windows/client-management/mdm/bitlocker-csp) |  | Enabled | windows10 |  |  |
|  | [Do not allow write access to devices configured in another organization](https://docs.microsoft.com/en-us/windows/client-management/mdm/bitlocker-csp) | False | windows10 |  |  |
| **[Enumerate administrator accounts on elevation](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-credentialsui#credentialsui-enumerateadministrators)** |  | Disabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Specify the maximum log file size (KB)](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-eventlogservice#eventlogservice-specifymaximumfilesizeapplicationlog)** |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
|  | **Maximum Log Size (KB)** | 32768 | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Specify the maximum log file size (KB)](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-eventlogservice#eventlogservice-specifymaximumfilesizesecuritylog)** |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
|  | **Maximum Log Size (KB)** | 196608 | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Specify the maximum log file size (KB)](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-eventlogservice#eventlogservice-specifymaximumfilesizesystemlog)** |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
|  | **Maximum Log Size (KB)** | 32768 | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Configure Windows Defender SmartScreen](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-admx-windowsexplorer#admx-windowsexplorer-enablesmartscreen)** |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval<br>holographicForBusiness | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise |
|  | **Pick one of the following settings: (Device)** | Warn and prevent bypass | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval<br>holographicForBusiness | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise |
| **[Turn off Data Execution Prevention for Explorer](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-fileexplorer#fileexplorer-turnoffdataexecutionpreventionforexplorer)** |  | Disabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Turn off heap termination on corruption](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-fileexplorer#fileexplorer-turnoffheapterminationoncorruption)** |  | Disabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Allow software to run or install even if the signature is invalid](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-internetexplorer#internetexplorer-allowsoftwarewhensignatureisinvalid) |  | Disabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Check for server certificate revocation](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-internetexplorer#internetexplorer-checkservercertificaterevocation) |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Check for signatures on downloaded programs](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-internetexplorer#internetexplorer-checksignaturesondownloadedprograms) |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Do not allow ActiveX controls to run in Protected Mode when Enhanced Protected Mode is enabled](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-internetexplorer#internetexplorer-donotallowactivexcontrolsinprotectedmode) |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Turn off encryption support](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-internetexplorer#internetexplorer-disableencryptionsupport) |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
|  | Secure Protocol combinations | Use TLS 1.1 and TLS 1.2 | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Turn on 64-bit tab processes when running in Enhanced Protected Mode on 64-bit versions of Windows](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-internetexplorer#internetexplorer-disableprocessesinenhancedprotectedmode) |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Turn on Enhanced Protected Mode](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-internetexplorer#internetexplorer-allowenhancedprotectedmode) |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Access data sources across domains](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-internetexplorer#internetexplorer-internetzoneallowaccesstodatasources) |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
|  | Access data sources across domains | Disable | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Allow cut, copy or paste operations from the clipboard via script](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-internetexplorer#internetexplorer-internetzoneallowcopypasteviascript) |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
|  | Allow paste operations via script | Disable | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Allow drag and drop or copy and paste files](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-internetexplorer#internetexplorer-internetzoneallowdraganddropcopyandpastefiles) |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
|  | Allow drag and drop or copy and paste files | Disable | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Allow loading of XAML files](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-internetexplorer#internetexplorer-internetzoneallowloadingofxamlfiles) |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
|  | XAML Files | Disable | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Allow only approved domains to use ActiveX controls without prompt](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-internetexplorer#internetexplorer-internetzoneallowonlyapproveddomainstouseactivexcontrols) |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
|  | Only allow approved domains to use ActiveX controls without prompt | Enable | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Allow only approved domains to use the TDC ActiveX control](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-internetexplorer#internetexplorer-internetzoneallowonlyapproveddomainstousetdcactivexcontrol) |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
|  | Only allow approved domains to use the TDC ActiveX control | Enable | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Allow script-initiated windows without size or position constraints](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-internetexplorer#internetexplorer-internetzoneallowscriptinitiatedwindows) |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
|  | Allow script-initiated windows without size or position constraints | Disable | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Allow scripting of Internet Explorer WebBrowser controls](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-internetexplorer#internetexplorer-internetzoneallowscriptingofinternetexplorerwebbrowsercontrols) |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
|  | Internet Explorer web browser control | Disable | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Allow scriptlets](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-internetexplorer#internetexplorer-internetzoneallowscriptlets) |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
|  | Scriptlets | Disable | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Allow updates to status bar via script](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-internetexplorer#internetexplorer-internetzoneallowupdatestostatusbarviascript) |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
|  | Status bar updates via script | Disable | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Allow VBScript to run in Internet Explorer](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-internetexplorer#internetexplorer-internetzoneallowvbscripttorunininternetexplorer) |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
|  | Allow VBScript to run in Internet Explorer | Disable | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Automatic prompting for file downloads](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-internetexplorer#internetexplorer-internetzoneallowautomaticpromptingforfiledownloads) |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
|  | Automatic prompting for file downloads | Disable | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Don't run antimalware programs against ActiveX controls](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-internetexplorer#internetexplorer-internetzonedonotrunantimalwareagainstactivexcontrols) |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
|  | Don't run antimalware programs against ActiveX controls | Disable | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Download signed ActiveX controls](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-internetexplorer#internetexplorer-internetzonedownloadsignedactivexcontrols) |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
|  | Download signed ActiveX controls | Disable | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Download unsigned ActiveX controls](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-internetexplorer#internetexplorer-internetzonedownloadunsignedactivexcontrols) |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
|  | Download unsigned ActiveX controls | Disable | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Enable dragging of content from different domains across windows](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-internetexplorer#internetexplorer-internetzoneenabledraggingofcontentfromdifferentdomainsacrosswindows) |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
|  | Enable dragging of content from different domains across windows | Disable | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Enable dragging of content from different domains within a window](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-internetexplorer#internetexplorer-internetzoneenabledraggingofcontentfromdifferentdomainswithinwindows) |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
|  | Enable dragging of content from different domains within a window | Disable | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Include local path when user is uploading files to a server](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-internetexplorer#internetexplorer-internetzoneincludelocalpathwhenuploadingfilestoserver) |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
|  | Include local directory path when uploading files to a server | Disable | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Initialize and script ActiveX controls not marked as safe](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-internetexplorer#internetexplorer-internetzoneinitializeandscriptactivexcontrols) |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
|  | Initialize and script ActiveX controls not marked as safe | Disable | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Java permissions](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-internetexplorer#internetexplorer-internetzonejavapermissions) |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
|  | Java permissions | Disable Java | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Launching applications and files in an IFRAME](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-internetexplorer#internetexplorer-internetzonelaunchingapplicationsandfilesiniframe) |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
|  | Launching applications and files in an IFRAME | Disable | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Logon options](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-internetexplorer#internetexplorer-internetzonelogonoptions) |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
|  | Logon options | Prompt for user name and password | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Navigate windows and frames across different domains](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-internetexplorer#internetexplorer-internetzonenavigatewindowsandframes) |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
|  | Navigate windows and frames across different domains | Disable | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Run .NET Framework-reliant components not signed with Authenticode](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-internetexplorer#internetexplorer-internetzoneallownetframeworkreliantcomponents) |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
|  | Run .NET Framework-reliant components not signed with Authenticode | Disable | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Run .NET Framework-reliant components signed with Authenticode](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-internetexplorer#internetexplorer-internetzonerunnetframeworkreliantcomponentssignedwithauthenticode) |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
|  | Run .NET Framework-reliant components signed with Authenticode | Disable | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Show security warning for potentially unsafe files](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-internetexplorer#internetexplorer-internetzoneshowsecuritywarningforpotentiallyunsafefiles) |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
|  | Launching programs and unsafe files | Prompt | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Turn on Cross-Site Scripting Filter](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-internetexplorer#internetexplorer-internetzoneenablecrosssitescriptingfilter) |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
|  | Turn on Cross-Site Scripting (XSS) Filter | Enable | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Turn on Protected Mode](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-internetexplorer#internetexplorer-internetzoneenableprotectedmode) |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
|  | Protected Mode | Enable | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Turn on SmartScreen Filter scan](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-internetexplorer#internetexplorer-internetzoneallowsmartscreenie) |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
|  | Use SmartScreen Filter | Enable | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Use Pop-up Blocker](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-internetexplorer#internetexplorer-internetzoneusepopupblocker) |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
|  | Use Pop-up Blocker | Enable | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Userdata persistence](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-internetexplorer#internetexplorer-internetzoneallowuserdatapersistence) |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
|  | Userdata persistence | Disable | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Web sites in less privileged Web content zones can navigate into this zone](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-internetexplorer#internetexplorer-internetzoneallowlessprivilegedsites) |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
|  | Web sites in less privileged Web content zones can navigate into this zone | Disable | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Don't run antimalware programs against ActiveX controls](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-internetexplorer#internetexplorer-intranetzonedonotrunantimalwareagainstactivexcontrols) |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
|  | Don't run antimalware programs against ActiveX controls | Disable | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Initialize and script ActiveX controls not marked as safe](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-internetexplorer#internetexplorer-intranetzoneinitializeandscriptactivexcontrols) |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
|  | Initialize and script ActiveX controls not marked as safe | Disable | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Java permissions](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-internetexplorer#internetexplorer-intranetzonejavapermissions) |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
|  | Java permissions | High safety | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Don't run antimalware programs against ActiveX controls](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-internetexplorer#internetexplorer-localmachinezonedonotrunantimalwareagainstactivexcontrols) |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
|  | Don't run antimalware programs against ActiveX controls | Disable | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Java permissions](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-internetexplorer#internetexplorer-localmachinezonejavapermissions) |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
|  | Java permissions | Disable Java | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Turn on SmartScreen Filter scan](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-internetexplorer#internetexplorer-lockeddowninternetzoneallowsmartscreenie) |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
|  | Use SmartScreen Filter | Enable | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Java permissions](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-internetexplorer#internetexplorer-lockeddownintranetjavapermissions) |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
|  | Java permissions | Disable Java | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Java permissions](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-internetexplorer#internetexplorer-lockeddownlocalmachinezonejavapermissions) |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
|  | Java permissions | Disable Java | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Java permissions](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-internetexplorer#internetexplorer-lockeddownrestrictedsiteszonejavapermissions) |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
|  | Java permissions | Disable Java | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Turn on SmartScreen Filter scan](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-internetexplorer#internetexplorer-lockeddownrestrictedsiteszoneallowsmartscreenie) |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
|  | Use SmartScreen Filter | Enable | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Java permissions](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-internetexplorer#internetexplorer-lockeddowntrustedsiteszonejavapermissions) |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
|  | Java permissions | Disable Java | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Access data sources across domains](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-internetexplorer#internetexplorer-restrictedsiteszoneallowaccesstodatasources) |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
|  | Access data sources across domains | Disable | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Allow active scripting](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-internetexplorer#internetexplorer-restrictedsiteszoneallowactivescripting) |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
|  | Allow active scripting | Disable | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Allow binary and script behaviors](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-internetexplorer#internetexplorer-restrictedsiteszoneallowbinaryandscriptbehaviors) |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
|  | Allow Binary and Script Behaviors | Disable | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Allow cut, copy or paste operations from the clipboard via script](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-internetexplorer#internetexplorer-restrictedsiteszoneallowcopypasteviascript) |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
|  | Allow paste operations via script | Disable | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Allow drag and drop or copy and paste files](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-internetexplorer#internetexplorer-restrictedsiteszoneallowdraganddropcopyandpastefiles) |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
|  | Allow drag and drop or copy and paste files | Disable | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Allow file downloads](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-internetexplorer#internetexplorer-restrictedsiteszoneallowfiledownloads) |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
|  | Allow file downloads | Disable | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Allow loading of XAML files](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-internetexplorer#internetexplorer-restrictedsiteszoneallowloadingofxamlfiles) |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
|  | XAML Files | Disable | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Allow META REFRESH](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-internetexplorer#internetexplorer-restrictedsiteszoneallowmetarefresh) |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
|  | Allow META REFRESH | Disable | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Allow only approved domains to use ActiveX controls without prompt](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-internetexplorer#internetexplorer-restrictedsiteszoneallowonlyapproveddomainstouseactivexcontrols) |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
|  | Only allow approved domains to use ActiveX controls without prompt | Enable | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Allow only approved domains to use the TDC ActiveX control](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-internetexplorer#internetexplorer-restrictedsiteszoneallowonlyapproveddomainstousetdcactivexcontrol) |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
|  | Only allow approved domains to use the TDC ActiveX control | Enable | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Allow script-initiated windows without size or position constraints](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-internetexplorer#internetexplorer-restrictedsiteszoneallowscriptinitiatedwindows) |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
|  | Allow script-initiated windows without size or position constraints | Disable | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Allow scripting of Internet Explorer WebBrowser controls](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-internetexplorer#internetexplorer-restrictedsiteszoneallowscriptingofinternetexplorerwebbrowsercontrols) |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
|  | Internet Explorer web browser control | Disable | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Allow scriptlets](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-internetexplorer#internetexplorer-restrictedsiteszoneallowscriptlets) |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
|  | Scriptlets | Disable | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Allow updates to status bar via script](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-internetexplorer#internetexplorer-restrictedsiteszoneallowupdatestostatusbarviascript) |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
|  | Status bar updates via script | Disable | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Allow VBScript to run in Internet Explorer](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-internetexplorer#internetexplorer-restrictedsiteszoneallowvbscripttorunininternetexplorer) |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
|  | Allow VBScript to run in Internet Explorer | Disable | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Automatic prompting for file downloads](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-internetexplorer#internetexplorer-restrictedsiteszoneallowautomaticpromptingforfiledownloads) |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
|  | Automatic prompting for file downloads | Disable | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Don't run antimalware programs against ActiveX controls](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-internetexplorer#internetexplorer-restrictedsiteszonedonotrunantimalwareagainstactivexcontrols) |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
|  | Don't run antimalware programs against ActiveX controls | Disable | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Download signed ActiveX controls](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-internetexplorer#internetexplorer-restrictedsiteszonedownloadsignedactivexcontrols) |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
|  | Download signed ActiveX controls | Disable | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Download unsigned ActiveX controls](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-internetexplorer#internetexplorer-restrictedsiteszonedownloadunsignedactivexcontrols) |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
|  | Download unsigned ActiveX controls | Disable | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Enable dragging of content from different domains across windows](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-internetexplorer#internetexplorer-restrictedsiteszoneenabledraggingofcontentfromdifferentdomainsacrosswindows) |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
|  | Enable dragging of content from different domains across windows | Disable | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Enable dragging of content from different domains within a window](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-internetexplorer#internetexplorer-restrictedsiteszoneenabledraggingofcontentfromdifferentdomainswithinwindows) |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
|  | Enable dragging of content from different domains within a window | Disable | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Include local path when user is uploading files to a server](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-internetexplorer#internetexplorer-restrictedsiteszoneincludelocalpathwhenuploadingfilestoserver) |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
|  | Include local directory path when uploading files to a server | Disable | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Initialize and script ActiveX controls not marked as safe](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-internetexplorer#internetexplorer-restrictedsiteszoneinitializeandscriptactivexcontrols) |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
|  | Initialize and script ActiveX controls not marked as safe | Disable | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Java permissions](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-internetexplorer#internetexplorer-restrictedsiteszonejavapermissions) |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
|  | Java permissions | Disable Java | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Launching applications and files in an IFRAME](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-internetexplorer#internetexplorer-restrictedsiteszonelaunchingapplicationsandfilesiniframe) |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
|  | Launching applications and files in an IFRAME | Disable | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Logon options](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-internetexplorer#internetexplorer-restrictedsiteszonelogonoptions) |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
|  | Logon options | Anonymous logon | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Navigate windows and frames across different domains](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-internetexplorer#internetexplorer-restrictedsiteszonenavigatewindowsandframes) |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
|  | Navigate windows and frames across different domains | Disable | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Run .NET Framework-reliant components not signed with Authenticode](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-internetexplorer#internetexplorer-restrictedsiteszoneallownetframeworkreliantcomponents) |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
|  | Run .NET Framework-reliant components not signed with Authenticode | Disable | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Run .NET Framework-reliant components signed with Authenticode](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-internetexplorer#internetexplorer-restrictedsiteszonerunnetframeworkreliantcomponentssignedwithauthenticode) |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
|  | Run .NET Framework-reliant components signed with Authenticode | Disable | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Run ActiveX controls and plugins](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-internetexplorer#internetexplorer-restrictedsiteszonerunactivexcontrolsandplugins) |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
|  | Run ActiveX controls and plugins | Disable | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Script ActiveX controls marked safe for scripting](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-internetexplorer#internetexplorer-restrictedsiteszonescriptactivexcontrolsmarkedsafeforscripting) |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
|  | Script ActiveX controls marked safe for scripting | Disable | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Scripting of Java applets](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-internetexplorer#internetexplorer-restrictedsiteszonescriptingofjavaapplets) |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
|  | Scripting of Java applets | Disable | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Show security warning for potentially unsafe files](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-internetexplorer#internetexplorer-restrictedsiteszoneshowsecuritywarningforpotentiallyunsafefiles) |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
|  | Launching programs and unsafe files | Disable | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Turn on Cross-Site Scripting Filter](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-internetexplorer#internetexplorer-restrictedsiteszoneenablecrosssitescriptingfilter) |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
|  | Turn on Cross-Site Scripting (XSS) Filter | Enable | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Turn on Protected Mode](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-internetexplorer#internetexplorer-restrictedsiteszoneturnonprotectedmode) |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
|  | Protected Mode | Enable | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Turn on SmartScreen Filter scan](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-internetexplorer#internetexplorer-restrictedsiteszoneallowsmartscreenie) |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
|  | Use SmartScreen Filter | Enable | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Use Pop-up Blocker](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-internetexplorer#internetexplorer-restrictedsiteszoneusepopupblocker) |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
|  | Use Pop-up Blocker | Enable | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Userdata persistence](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-internetexplorer#internetexplorer-restrictedsiteszoneallowuserdatapersistence) |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
|  | Userdata persistence | Disable | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Web sites in less privileged Web content zones can navigate into this zone](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-internetexplorer#internetexplorer-restrictedsiteszoneallowlessprivilegedsites) |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
|  | Web sites in less privileged Web content zones can navigate into this zone | Disable | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Don't run antimalware programs against ActiveX controls](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-internetexplorer#internetexplorer-trustedsiteszonedonotrunantimalwareagainstactivexcontrols) |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
|  | Don't run antimalware programs against ActiveX controls | Disable | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Initialize and script ActiveX controls not marked as safe](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-internetexplorer#internetexplorer-trustedsiteszoneinitializeandscriptactivexcontrols) |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
|  | Initialize and script ActiveX controls not marked as safe | Disable | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Java permissions](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-internetexplorer#internetexplorer-trustedsiteszonejavapermissions) |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
|  | Java permissions | High safety | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Intranet Sites: Include all network paths (UNCs)](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-internetexplorer#internetexplorer-includeallnetworkpaths) |  | Disabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Turn on certificate address mismatch warning](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-internetexplorer#internetexplorer-allowcertificateaddressmismatchwarning) |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Prevent ignoring certificate errors](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-internetexplorer#internetexplorer-disableignoringcertificateerrors) |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Remove "Run this time" button for outdated ActiveX controls in Internet Explorer](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-internetexplorer#internetexplorer-removerunthistimebuttonforoutdatedactivexcontrols) |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Turn off blocking of outdated ActiveX controls for Internet Explorer](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-internetexplorer#internetexplorer-donotblockoutdatedactivexcontrols) |  | Disabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Internet Explorer Processes](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-internetexplorer#internetexplorer-consistentmimehandlinginternetexplorerprocesses) |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Internet Explorer Processes](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-internetexplorer#internetexplorer-mimesniffingsafetyfeatureinternetexplorerprocesses) |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Internet Explorer Processes](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-internetexplorer#internetexplorer-mkprotocolsecurityrestrictioninternetexplorerprocesses) |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Internet Explorer Processes](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-internetexplorer#internetexplorer-notificationbarinternetexplorerprocesses) |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Internet Explorer Processes](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-internetexplorer#internetexplorer-protectionfromzoneelevationinternetexplorerprocesses) |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Internet Explorer Processes](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-internetexplorer#internetexplorer-restrictactivexinstallinternetexplorerprocesses) |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Internet Explorer Processes](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-internetexplorer#internetexplorer-restrictfiledownloadinternetexplorerprocesses) |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Internet Explorer Processes](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-internetexplorer#internetexplorer-scriptedwindowsecurityrestrictionsinternetexplorerprocesses) |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Allow fallback to SSL 3.0 (Internet Explorer)](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-internetexplorer#internetexplorer-allowfallbacktossl3) |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
|  | Allow insecure fallback for: | No Sites | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Prevent bypassing SmartScreen Filter warnings](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-internetexplorer#internetexplorer-disablebypassofsmartscreenwarnings) |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Prevent bypassing SmartScreen Filter warnings about files that are not commonly downloaded from the Internet](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-internetexplorer#internetexplorer-disablebypassofsmartscreenwarningsaboutuncommonfiles) |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Prevent managing SmartScreen Filter](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-internetexplorer#internetexplorer-preventmanagingsmartscreenfilter) |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
|  | Select SmartScreen Filter mode | On | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Prevent per-user installation of ActiveX controls](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-internetexplorer#internetexplorer-preventperuserinstallationofactivexcontrols) |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Security Zones: Do not allow users to add/delete sites](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-internetexplorer#internetexplorer-donotallowuserstoaddsites) |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Security Zones: Do not allow users to change policies](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-internetexplorer#internetexplorer-donotallowuserstochangepolicies) |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Security Zones: Use only machine settings](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-internetexplorer#internetexplorer-securityzonesuseonlymachinesettings) |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Specify use of ActiveX Installer Service for installation of ActiveX controls](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-internetexplorer#internetexplorer-specifyuseofactivexinstallerservice) |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Turn off Crash Detection](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-internetexplorer#internetexplorer-disablecrashdetection) |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Turn off the Security Settings Check feature](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-internetexplorer#internetexplorer-disablesecuritysettingscheck) |  | Disabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Turn on the auto-complete feature for user names and passwords on forms (User)](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-internetexplorer#internetexplorer-allowautocomplete) |  | Disabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Configure the 'Block at First Sight' feature](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-admx-microsoftdefenderantivirus#admx-microsoftdefenderantivirus-disableblockatfirstseen) |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval<br>holographicForBusiness | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise |
| [Turn on process scanning whenever real-time protection is enabled](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-admx-microsoftdefenderantivirus#admx-microsoftdefenderantivirus-realtimeprotection-disablescanonrealtimeenable) |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval<br>holographicForBusiness | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise |
| [Turn off routine remediation](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-admx-microsoftdefenderantivirus#admx-microsoftdefenderantivirus-disableroutinelytakingaction) |  | Disabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval<br>holographicForBusiness | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise |
| **[Do not allow passwords to be saved](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-remotedesktopservices#remotedesktopservices-donotallowpasswordsaving)** |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Do not allow drive redirection](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-remotedesktopservices#remotedesktopservices-donotallowdriveredirection)** |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Always prompt for password upon connection](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-remotedesktopservices#remotedesktopservices-promptforpassworduponconnection)** |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Require secure RPC communication](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-remotedesktopservices#remotedesktopservices-requiresecurerpccommunication)** |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Set client connection encryption level](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-remotedesktopservices#remotedesktopservices-clientconnectionencryptionlevel)** |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
|  | **Encryption Level** | High Level | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Prevent downloading of enclosures](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-internetexplorer#internetexplorer-disableenclosuredownloading)** |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Configure the transmission of the user's password in the content of MPR notifications sent by winlogon.](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-windowslogon#windowslogon-enablemprnotifications)** |  | Disabled | windows10 | Professional<br>Enterprise<br>Education<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>MultiSession<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Sign-in and lock last interactive user automatically after a restart](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-windowslogon#windowslogon-allowautomaticrestartsignon)** |  | Disabled | windows10 | Home<br>Professional<br>Enterprise<br>Education<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | MultiSession<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Turn on PowerShell Script Block Logging](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-windowspowershell#windowspowershell-turnonpowershellscriptblocklogging) |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
|  | Log script block invocation start / stop events: | False | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Allow Basic authentication](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-remotemanagement#remotemanagement-allowbasicauthentication-client)** |  | Disabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Allow unencrypted traffic](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-remotemanagement#remotemanagement-allowunencryptedtraffic-client)** |  | Disabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Disallow Digest authentication](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-remotemanagement#remotemanagement-disallowdigestauthentication)** |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Allow Basic authentication](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-remotemanagement#remotemanagement-allowbasicauthentication-service)** |  | Disabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Allow unencrypted traffic](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-remotemanagement#remotemanagement-allowunencryptedtraffic-service)** |  | Disabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Disallow WinRM from storing RunAs credentials](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-remotemanagement#remotemanagement-disallowstoringofrunascredentials)** |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Account Logon Audit Credential Validation](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-Audit#accountlogon_auditcredentialvalidation)** |  | Success+ Failure | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Account Logon Logoff Audit Account Lockout](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-Audit#accountlogonlogoff_auditaccountlockout)** |  | Failure | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Account Logon Logoff Audit Group Membership](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-Audit#accountlogonlogoff_auditgroupmembership)** |  | Success | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Account Logon Logoff Audit Logon](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-Audit#accountlogonlogoff_auditlogon)** |  | Success+ Failure | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Audit Authentication Policy Change](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-Audit#policychange_auditauthenticationpolicychange)** |  | Success | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Audit Changes to Audit Policy](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-Audit#policychange_auditpolicychange)** |  | Success | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Audit File Share Access](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-Audit#objectaccess_auditfileshare)** |  | Success+Failure | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Audit Other Logon Logoff Events](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-Audit#accountlogonlogoff_auditotherlogonlogoffevents)** |  | Success+Failure | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Audit Security Group Management](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-Audit#accountmanagement_auditsecuritygroupmanagement)** |  | Success | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Audit Security System Extension](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-Audit#system_auditsecuritysystemextension)** |  | Success | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Audit Special Logon](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-Audit#accountlogonlogoff_auditspeciallogon)** |  | Success | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Audit User Account Management](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-Audit#accountmanagement_audituseraccountmanagement)** |  | Success+Failure | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Detailed Tracking Audit PNP Activity](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-Audit#detailedtracking_auditpnpactivity)** |  | Success | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Detailed Tracking Audit Process Creation](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-Audit#detailedtracking_auditprocesscreation)** |  | Success | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Object Access Audit Detailed File Share](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-Audit#objectaccess_auditdetailedfileshare)** |  | Failure | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Object Access Audit Other Object Access Events](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-Audit#objectaccess_auditotherobjectaccessevents)** |  | Success+ Failure | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Object Access Audit Removable Storage](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-Audit#objectaccess_auditremovablestorage)** |  | Success+ Failure | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Policy Change Audit MPSSVC Rule Level Policy Change](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-Audit#policychange_auditmpssvcrulelevelpolicychange)** |  | Success+ Failure | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Policy Change Audit Other Policy Change Events](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-Audit#policychange_auditotherpolicychangeevents)** |  | Failure | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| *[Privilege Use Audit Sensitive Privilege Use](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-Audit#privilegeuse_auditsensitiveprivilegeuse)* |  | Success | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[System Audit Other System Events](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-Audit#system_auditothersystemevents)** |  | Success+ Failure | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[System Audit Security State Change](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-Audit#system_auditsecuritystatechange)** |  | Success | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[System Audit System Integrity](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-Audit#system_auditsystemintegrity)** |  | Success+ Failure | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Allow Password Manager](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-Browser#allowpasswordmanager) |  | Block | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval<br>holographicForBusiness | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise |
| [Allow Smart Screen](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-Browser#allowsmartscreen) |  | Allow | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval<br>holographicForBusiness | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise |
| [Prevent Cert Error Overrides](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-Browser#preventcerterroroverrides) |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Prevent Smart Screen Prompt Override](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-Browser#preventsmartscreenpromptoverride) |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Prevent Smart Screen Prompt Override For Files](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-Browser#preventsmartscreenpromptoverrideforfiles) |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Allow Direct Memory Access](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-dataprotection#allowdirectmemoryaccess) |  | Block | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Allow Archive Scanning](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-defender) |  | Allowed. Scans the archive files. | windows10 | Home<br>Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Allow Behavior Monitoring](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-defender)** |  | Allowed. Turns on real-time behavior monitoring. | windows10 | Home<br>Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Allow Cloud Protection](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-defender) |  | Allowed. Turns on Cloud Protection. | windows10 | Home<br>Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Allow Full Scan Removable Drive Scanning](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-defender)** |  | Allowed. Scans removable drives. | windows10 | Home<br>Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Allow On Access Protection](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-defender) |  | Allowed. | windows10 | Home<br>Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Allow Realtime Monitoring](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-defender)** |  | Allowed. Turns on and runs the real-time monitoring service. | windows10 | Home<br>Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Allow scanning of all downloaded files and attachments](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-defender)** |  | Allowed. | windows10 | Home<br>Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Allow Script Scanning](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-defender)** |  | Allowed. | windows10 | Home<br>Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Attack Surface Reduction Rules](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-defender#attacksurfacereductionrules)** |  |  | windows10 | Home<br>Professional<br>Enterprise<br>Education<br>MultiSession<br>iotEnterprise<br>surfaceHub | CloudN<br>CPC<br>11SE<br>iotEnterpriseSEval<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
|  | *[Block execution of potentially obfuscated scripts](https://docs.microsoft.com/en-us/windows/security/threat-protection/microsoft-defender-atp/attack-surface-reduction)* | Block | windows10 | Home<br>Professional<br>Enterprise<br>Education<br>MultiSession<br>iotEnterprise<br>surfaceHub | CloudN<br>CPC<br>11SE<br>iotEnterpriseSEval<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
|  | *[Block Office communication application from creating child processes](https://docs.microsoft.com/en-us/windows/security/threat-protection/microsoft-defender-atp/attack-surface-reduction)* | Block | windows10 | Home<br>Professional<br>Enterprise<br>Education<br>MultiSession<br>iotEnterprise<br>surfaceHub | CloudN<br>CPC<br>11SE<br>iotEnterpriseSEval<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
|  | *[Block all Office applications from creating child processes](https://docs.microsoft.com/en-us/windows/security/threat-protection/microsoft-defender-atp/attack-surface-reduction)* | Block | windows10 | Home<br>Professional<br>Enterprise<br>Education<br>MultiSession<br>iotEnterprise<br>surfaceHub | CloudN<br>CPC<br>11SE<br>iotEnterpriseSEval<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
|  | **[Block Win32 API calls from Office macros](https://docs.microsoft.com/en-us/windows/security/threat-protection/microsoft-defender-atp/attack-surface-reduction)** | Block | windows10 | Home<br>Professional<br>Enterprise<br>Education<br>MultiSession<br>iotEnterprise<br>surfaceHub | CloudN<br>CPC<br>11SE<br>iotEnterpriseSEval<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
|  | **[Block untrusted and unsigned processes that run from USB](https://docs.microsoft.com/en-us/windows/security/threat-protection/microsoft-defender-atp/attack-surface-reduction)** | Block | windows10 | Home<br>Professional<br>Enterprise<br>Education<br>MultiSession<br>iotEnterprise<br>surfaceHub | CloudN<br>CPC<br>11SE<br>iotEnterpriseSEval<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
|  | **[Block JavaScript or VBScript from launching downloaded executable content](https://docs.microsoft.com/en-us/windows/security/threat-protection/microsoft-defender-atp/attack-surface-reduction)** | Block | windows10 | Home<br>Professional<br>Enterprise<br>Education<br>MultiSession<br>iotEnterprise<br>surfaceHub | CloudN<br>CPC<br>11SE<br>iotEnterpriseSEval<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
|  | **[Block Adobe Reader from creating child processes](https://docs.microsoft.com/en-us/windows/security/threat-protection/microsoft-defender-atp/attack-surface-reduction)** | Block | windows10 | Home<br>Professional<br>Enterprise<br>Education<br>MultiSession<br>iotEnterprise<br>surfaceHub | CloudN<br>CPC<br>11SE<br>iotEnterpriseSEval<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
|  | **[Block credential stealing from the Windows local security authority subsystem](https://docs.microsoft.com/en-us/windows/security/threat-protection/microsoft-defender-atp/attack-surface-reduction)** | Block | windows10 | Home<br>Professional<br>Enterprise<br>Education<br>MultiSession<br>iotEnterprise<br>surfaceHub | CloudN<br>CPC<br>11SE<br>iotEnterpriseSEval<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
|  | **[Block Office applications from injecting code into other processes](https://docs.microsoft.com/en-us/windows/security/threat-protection/microsoft-defender-atp/attack-surface-reduction)** | Block | windows10 | Home<br>Professional<br>Enterprise<br>Education<br>MultiSession<br>iotEnterprise<br>surfaceHub | CloudN<br>CPC<br>11SE<br>iotEnterpriseSEval<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
|  | **[Block process creations originating from PSExec and WMI commands](https://docs.microsoft.com/en-us/windows/security/threat-protection/microsoft-defender-atp/attack-surface-reduction)** | Audit | windows10 | Home<br>Professional<br>Enterprise<br>Education<br>MultiSession<br>iotEnterprise<br>surfaceHub | CloudN<br>CPC<br>11SE<br>iotEnterpriseSEval<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
|  | **[Block executable content from email client and webmail](https://docs.microsoft.com/en-us/windows/security/threat-protection/microsoft-defender-atp/attack-surface-reduction)** | Block | windows10 | Home<br>Professional<br>Enterprise<br>Education<br>MultiSession<br>iotEnterprise<br>surfaceHub | CloudN<br>CPC<br>11SE<br>iotEnterpriseSEval<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
|  | **[Block Office applications from creating executable content](https://docs.microsoft.com/en-us/windows/security/threat-protection/microsoft-defender-atp/attack-surface-reduction)** | Block | windows10 | Home<br>Professional<br>Enterprise<br>Education<br>MultiSession<br>iotEnterprise<br>surfaceHub | CloudN<br>CPC<br>11SE<br>iotEnterpriseSEval<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Cloud Block Level](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-defender) |  | High | windows10 | Home<br>Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Cloud Extended Timeout](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-defender) |  | 50 | windows10 | Home<br>Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Disable Local Admin Merge](https://docs.microsoft.com/windows/client-management/mdm/Defender-csp/) |  | Disable Local Admin Merge | windows10 | Home<br>Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Enable Convert Warn To Block](https://docs.microsoft.com/windows/client-management/mdm/Defender-csp/) |  | Warn verdicts are converted to block | windows10 | Home<br>Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Enable File Hash Computation](https://docs.microsoft.com/windows/client-management/mdm/Defender-csp/) |  | Enable | windows10 | Home<br>Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Enable Network Protection](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-defender)** |  | Enabled (block mode) | windows10 | Home<br>Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Hide Exclusions From Local Admins](https://docs.microsoft.com/windows/client-management/mdm/Defender-csp/) |  | If you enable this setting, local admins will no longer be able to see the exclusion list in Windows Security App or via PowerShell. | windows10 | Home<br>Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Oobe Enable Rtp And Sig Update](https://docs.microsoft.com/windows/client-management/mdm/Defender-csp/)** |  | If you enable this setting, real-time protection and Security Intelligence Updates are enabled during OOBE. | windows10 | Home<br>Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Passive Remediation](https://docs.microsoft.com/windows/client-management/mdm/Defender-csp/) |  | PASSIVEREMEDIATIONFLAGSENSEAUTOREMEDIATION: Passive Remediation Sense AutoRemediation | windows10 | Home<br>Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[PUA Protection](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-defender)** |  | PUA Protection on. Detected items are blocked. They will show in history along with other threats. | windows10 | Home<br>Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Quick Scan Include Exclusions](https://docs.microsoft.com/windows/client-management/mdm/Defender-csp/)** |  | If you set this setting to 1, all files and directories that are excluded from real-time protection using contextual exclusions are scanned during a quick scan. | windows10 | Home<br>Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Real Time Scan Direction](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-Defender#realtimescandirection) |  | Monitor all files (bi-directional). | windows10 | Home<br>Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Submit Samples Consent](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-defender) |  | Send all samples automatically. | windows10 | Home<br>Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Configure System Guard Launch](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-deviceguard#configuresystemguardlaunch)** |  | Unmanaged Enables Secure Launch if supported by hardware | windows10 | Home<br>Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Credential Guard](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-deviceguard#lsacfgflags)** |  | (Enabled with UEFI lock) Turns on Credential Guard with UEFI lock. | windows10 | Enterprise<br>Education<br>MultiSession<br>CPC<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>Professional<br>CloudN<br>11SE<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Enable Virtualization Based Security](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-deviceguard#enablevirtualizationbasedsecurity)** |  | enable virtualization based security. | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CPC<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CloudN<br>11SE<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Machine Identity Isolation](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-DeviceGuard#machineidentityisolation) |  | (Disabled) Machine password is only LSASS-bound and stored in $MACHINE.ACC registry key. | windows10 | Enterprise<br>Education<br>MultiSession<br>CPC<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>Professional<br>CloudN<br>11SE<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Require Platform Security Features](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-deviceguard#requireplatformsecurityfeatures)** |  | Turns on VBS with Secure Boot. | windows10 | Enterprise<br>Education<br>MultiSession<br>CPC<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>Professional<br>CloudN<br>11SE<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Device Password Enabled](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-devicelock#devicepasswordenabled)** |  | Enabled | windows10 | Home<br>Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval<br>holographicForBusiness | surfaceHub<br>hololens<br>hololensEnterprise |
|  | **[Min Device Password Length](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-devicelock#mindevicepasswordlength)** | 14 | windows10 | Home<br>Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval<br>holographicForBusiness | surfaceHub<br>hololens<br>hololensEnterprise |
|  | **[Device Password History](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-devicelock#devicepasswordhistory)** | 24 | windows10 | Home<br>Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval<br>holographicForBusiness | surfaceHub<br>hololens<br>hololensEnterprise |
| [Device Enumeration Policy](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-dmaguard#deviceenumerationpolicy) |  | Block all (Most restrictive) | windows10 | Professional<br>Enterprise<br>Education<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>MultiSession<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Allow Windows Spotlight (User)](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-Experience#allowwindowsspotlight) |  | Allow | windows10 | Enterprise<br>Education<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>Professional<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
|  | [Allow Windows Consumer Features](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-experience#allowwindowsconsumerfeatures) | Block | windows10 | Enterprise<br>Education<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>Professional<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
|  | [Allow Third Party Suggestions In Windows Spotlight (User)](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-Experience#allowthirdpartysuggestionsinwindowsspotlight) | Block | windows10 | Professional<br>Enterprise<br>Education<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>MultiSession<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Enable Domain Network Firewall](https://docs.microsoft.com/en-us/windows/client-management/mdm/firewall-csp)** |  | True | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval<br>holographicForBusiness | Home<br>surfaceHub<br>hololens<br>hololensEnterprise |
|  | **[Enable Log Success Connections](https://docs.microsoft.com/windows/client-management/mdm/Firewall-csp/)** | Enable Logging Of Successful Connections | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval<br>holographicForBusiness | Home<br>surfaceHub<br>hololens<br>hololensEnterprise |
|  | [Default Outbound Action](https://docs.microsoft.com/en-us/windows/client-management/mdm/firewall-csp) | Allow | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval<br>holographicForBusiness | Home<br>surfaceHub<br>hololens<br>hololensEnterprise |
|  | **[Disable Inbound Notifications](https://docs.microsoft.com/en-us/windows/client-management/mdm/firewall-csp)** | True | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval<br>holographicForBusiness | Home<br>surfaceHub<br>hololens<br>hololensEnterprise |
|  | **[Enable Log Dropped Packets](https://docs.microsoft.com/windows/client-management/mdm/Firewall-csp/)** | Enable Logging Of Dropped Packets | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval<br>holographicForBusiness | Home<br>surfaceHub<br>hololens<br>hololensEnterprise |
|  | **[Log Max File Size](https://docs.microsoft.com/windows/client-management/mdm/Firewall-csp/)** | 16384 | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval<br>holographicForBusiness | Home<br>surfaceHub<br>hololens<br>hololensEnterprise |
|  | **[Default Inbound Action for Domain Profile](https://docs.microsoft.com/en-us/windows/client-management/mdm/firewall-csp)** | Block | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval<br>holographicForBusiness | Home<br>surfaceHub<br>hololens<br>hololensEnterprise |
| **[Enable Private Network Firewall](https://docs.microsoft.com/en-us/windows/client-management/mdm/firewall-csp)** |  | True | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval<br>holographicForBusiness | Home<br>surfaceHub<br>hololens<br>hololensEnterprise |
|  | **[Default Inbound Action for Private Profile](https://docs.microsoft.com/en-us/windows/client-management/mdm/firewall-csp)** | Block | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval<br>holographicForBusiness | Home<br>surfaceHub<br>hololens<br>hololensEnterprise |
|  | **[Log Max File Size](https://docs.microsoft.com/windows/client-management/mdm/Firewall-csp/)** | 16384 | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval<br>holographicForBusiness | Home<br>surfaceHub<br>hololens<br>hololensEnterprise |
|  | **[Enable Log Success Connections](https://docs.microsoft.com/windows/client-management/mdm/Firewall-csp/)** | Enable Logging Of Successful Connections | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval<br>holographicForBusiness | Home<br>surfaceHub<br>hololens<br>hololensEnterprise |
|  | **[Enable Log Dropped Packets](https://docs.microsoft.com/windows/client-management/mdm/Firewall-csp/)** | Enable Logging Of Dropped Packets | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval<br>holographicForBusiness | Home<br>surfaceHub<br>hololens<br>hololensEnterprise |
|  | [Default Outbound Action](https://docs.microsoft.com/en-us/windows/client-management/mdm/firewall-csp) | Allow | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval<br>holographicForBusiness | Home<br>surfaceHub<br>hololens<br>hololensEnterprise |
|  | **[Disable Inbound Notifications](https://docs.microsoft.com/en-us/windows/client-management/mdm/firewall-csp)** | True | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval<br>holographicForBusiness | Home<br>surfaceHub<br>hololens<br>hololensEnterprise |
| **[Enable Public Network Firewall](https://docs.microsoft.com/en-us/windows/client-management/mdm/firewall-csp)** |  | True | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval<br>holographicForBusiness | Home<br>surfaceHub<br>hololens<br>hololensEnterprise |
|  | **[Log Max File Size](https://docs.microsoft.com/windows/client-management/mdm/Firewall-csp/)** | 16384 | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval<br>holographicForBusiness | Home<br>surfaceHub<br>hololens<br>hololensEnterprise |
|  | [Default Outbound Action](https://docs.microsoft.com/en-us/windows/client-management/mdm/firewall-csp) | Allow | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval<br>holographicForBusiness | Home<br>surfaceHub<br>hololens<br>hololensEnterprise |
|  | **[Disable Inbound Notifications](https://docs.microsoft.com/en-us/windows/client-management/mdm/firewall-csp)** | True | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval<br>holographicForBusiness | Home<br>surfaceHub<br>hololens<br>hololensEnterprise |
|  | **[Default Inbound Action for Public Profile](https://docs.microsoft.com/en-us/windows/client-management/mdm/firewall-csp)** | Block | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval<br>holographicForBusiness | Home<br>surfaceHub<br>hololens<br>hololensEnterprise |
|  | **[Allow Local Policy Merge](https://docs.microsoft.com/en-us/windows/client-management/mdm/firewall-csp)** | False | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval<br>holographicForBusiness | Home<br>surfaceHub<br>hololens<br>hololensEnterprise |
|  | **[Allow Local Ipsec Policy Merge](https://docs.microsoft.com/en-us/windows/client-management/mdm/firewall-csp)** | False | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval<br>holographicForBusiness | Home<br>surfaceHub<br>hololens<br>hololensEnterprise |
|  | **[Enable Log Success Connections](https://docs.microsoft.com/windows/client-management/mdm/Firewall-csp/)** | Enable Logging Of Successful Connections | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval<br>holographicForBusiness | Home<br>surfaceHub<br>hololens<br>hololensEnterprise |
|  | **[Enable Log Dropped Packets](https://docs.microsoft.com/windows/client-management/mdm/Firewall-csp/)** | Enable Logging Of Dropped Packets | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval<br>holographicForBusiness | Home<br>surfaceHub<br>hololens<br>hololensEnterprise |
| [PK Init Hash Algorithm Configuration](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-Kerberos#pkinithashalgorithmconfiguration) |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
|  | [PK Init Hash Algorithm SHA256](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-Kerberos#pkinithashalgorithmsha256) | Supported | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
|  | [PK Init Hash Algorithm SHA512](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-Kerberos#pkinithashalgorithmsha512) | Supported | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
|  | [PK Init Hash Algorithm SHA384](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-Kerberos#pkinithashalgorithmsha384) | Supported | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
|  | [PK Init Hash Algorithm SHA1](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-Kerberos#pkinithashalgorithmsha1) | Not Supported | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Audit Client Does Not Support Encryption](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-LanmanServer#auditclientdoesnotsupportencryption) |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Audit Client Does Not Support Signing](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-LanmanServer#auditclientdoesnotsupportsigning) |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Audit Insecure Guest Logon](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-LanmanServer#auditinsecureguestlogon) |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Auth Rate Limiter Delay In Ms](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-LanmanServer#authratelimiterdelayinms) |  | 2000 | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Enable Auth Rate Limiter](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-LanmanServer#enableauthratelimiter) |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Enable Mailslots](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-LanmanServer#enablemailslots) |  | Disabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Max Smb2 Dialect](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-LanmanServer#maxsmb2dialect) |  | SMB 3.1.1 | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Min Smb2 Dialect](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-LanmanServer#minsmb2dialect) |  | SMB 3.0.0 | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Audit Insecure Guest Logon](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-LanmanWorkstation#auditinsecureguestlogon) |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Audit Server Does Not Support Encryption](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-LanmanWorkstation#auditserverdoesnotsupportencryption) |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Audit Server Does Not Support Signing](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-LanmanWorkstation#auditserverdoesnotsupportsigning) |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Enable Insecure Guest Logons](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-LanmanWorkstation#enableinsecureguestlogons)** |  | Disabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Enable Mailslots](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-LanmanWorkstation#enablemailslots) |  | Disabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Max Smb2 Dialect](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-LanmanWorkstation#maxsmb2dialect) |  | SMB 3.1.1 | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Min Smb2 Dialect](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-LanmanWorkstation#minsmb2dialect) |  | SMB 3.0.0 | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Require Encryption](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-LanmanWorkstation#requireencryption) |  | Disabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Backup Directory ](https://docs.microsoft.com/windows/client-management/mdm/LAPS-csp/)** |  | Backup the password to Microsoft Entra ID only | windows10 | Home<br>Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>surfaceHub<br>hololens<br>holographicForBusiness | CPC<br>iotEnterpriseSEval<br>hololensEnterprise |
| **[Accounts Limit Local Account Use Of Blank Passwords To Console Logon Only](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-LocalPoliciesSecurityOptions#accounts_limitlocalaccountuseofblankpasswordstoconsolelogononly)** |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Interactive Logon Machine Inactivity Limit](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-LocalPoliciesSecurityOptions#interactivelogon_machineinactivitylimit)** |  | 900 | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Interactive Logon Smart Card Removal Behavior](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-LocalPoliciesSecurityOptions#interactivelogon_smartcardremovalbehavior)** |  | Lock Workstation | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Microsoft Network Client Digitally Sign Communications Always](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-LocalPoliciesSecurityOptions#microsoftnetworkclient_digitallysigncommunicationsalways)** |  | Enable | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Microsoft Network Client Send Unencrypted Password To Third Party SMB Servers](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-LocalPoliciesSecurityOptions#microsoftnetworkclient_sendunencryptedpasswordtothirdpartysmbservers)** |  | Disable | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Microsoft Network Server Digitally Sign Communications Always](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-LocalPoliciesSecurityOptions#microsoftnetworkserver_digitallysigncommunicationsalways)** |  | Enable | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Network Access Do Not Allow Anonymous Enumeration Of SAM Accounts](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-LocalPoliciesSecurityOptions#networkaccess_donotallowanonymousenumerationofsamaccounts)** |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Network Access Do Not Allow Anonymous Enumeration Of Sam Accounts And Shares](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-LocalPoliciesSecurityOptions#networkaccess_donotallowanonymousenumerationofsamaccountsandshares)** |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Network Access Restrict Anonymous Access To Named Pipes And Shares](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-LocalPoliciesSecurityOptions#networkaccess_restrictanonymousaccesstonamedpipesandshares)** |  | Enable | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Network Access Restrict Clients Allowed To Make Remote Calls To SAM](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-LocalPoliciesSecurityOptions#networkaccess_restrictclientsallowedtomakeremotecallstosam)** |  | O:BAG:BAD:(A;;RC;;;BA) | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Network Security Do Not Store LAN Manager Hash Value On Next Password Change](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-LocalPoliciesSecurityOptions#networksecurity_donotstorelanmanagerhashvalueonnextpasswordchange)** |  | Enable | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Network Security LAN Manager Authentication Level](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-LocalPoliciesSecurityOptions#networksecurity_lanmanagerauthenticationlevel)** |  | Send NTLMv2 responses only. Refuse LM and NTLM | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Network Security Minimum Session Security For NTLMSSP Based Clients](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-LocalPoliciesSecurityOptions#networksecurity_minimumsessionsecurityforntlmsspbasedclients)** |  | Require NTLM and 128-bit encryption | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Network Security Minimum Session Security For NTLMSSP Based Servers](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-LocalPoliciesSecurityOptions#networksecurity_minimumsessionsecurityforntlmsspbasedservers)** |  | Require NTLM and 128-bit encryption | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[User Account Control Behavior Of The Elevation Prompt For Administrators](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-LocalPoliciesSecurityOptions#useraccountcontrol_behavioroftheelevationpromptforadministrators)** |  | Prompt for consent on the secure desktop | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[User Account Control Behavior Of The Elevation Prompt For Standard Users](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-LocalPoliciesSecurityOptions#useraccountcontrol_behavioroftheelevationpromptforstandardusers)** |  | Automatically deny elevation requests | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[User Account Control Detect Application Installations And Prompt For Elevation](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-LocalPoliciesSecurityOptions#useraccountcontrol_detectapplicationinstallationsandpromptforelevation)** |  | Enable | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[User Account Control Only Elevate UI Access Applications That Are Installed In Secure Locations](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-LocalPoliciesSecurityOptions#useraccountcontrol_onlyelevateuiaccessapplicationsthatareinstalledinsecurelocations)** |  | Enabled: Application runs with UIAccess integrity only if it resides in secure location. | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[User Account Control Run All Administrators In Admin Approval Mode](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-LocalPoliciesSecurityOptions#useraccountcontrol_runalladministratorsinadminapprovalmode)** |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[User Account Control Use Admin Approval Mode](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-LocalPoliciesSecurityOptions#useraccountcontrol_useadminapprovalmode)** |  | Enable | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[User Account Control Virtualize File And Registry Write Failures To Per User Locations](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-LocalPoliciesSecurityOptions#useraccountcontrol_virtualizefileandregistrywritefailurestoperuserlocations)** |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Configure Lsa Protected Process](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-LocalSecurityAuthority#configurelsaprotectedprocess)** |  | Enabled with UEFI lock. LSA will run as protected process and this configuration is UEFI locked. | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Allow Game DVR](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-ApplicationManagement#allowgamedvr)** |  | Block | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[MSI Allow User Control Over Install](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-ApplicationManagement#msiallowusercontroloverinstall)** |  | Disabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[MSI Always Install With Elevated Privileges](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-ApplicationManagement#msialwaysinstallwithelevatedprivileges)** |  | Disabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| Configure Microsoft Defender SmartScreen |  | Enabled | windows10 |  |  |
| Prevent bypassing Microsoft Defender SmartScreen prompts for sites |  | Enabled | windows10 |  |  |
| **[Let Apps Activate With Voice Above Lock](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-Privacy#letappsactivatewithvoiceabovelock)** |  | Force deny. Windows apps cannot be activated by voice while the screen is locked, and users cannot change it. | windows10 | Home<br>Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Allow Indexing Encrypted Stores Or Items](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-Search#allowindexingencryptedstoresoritems)** |  | Block | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **Notify Malicious** |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **Notify Password Reuse** |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **Notify Unsafe App** |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **Service Enabled** |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Enable Smart Screen In Shell](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-smartscreen#enablesmartscreeninshell) |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Prevent Override For Files In Shell](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-smartscreen#preventoverrideforfilesinshell) |  | Enabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Enable Sudo](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-Sudo#enablesudo)** |  | Sudo is disabled. | windows10 | Professional<br>Enterprise<br>Education<br>CloudN<br>11SE<br>iotEnterprise | Home<br>MultiSession<br>CPC<br>iotEnterpriseSEval<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Configure Xbox Accessory Management Service Startup Mode](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-SystemServices#configurexboxaccessorymanagementservicestartupmode) |  | Disabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Configure Xbox Live Auth Manager Service Startup Mode](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-SystemServices#configurexboxliveauthmanagerservicestartupmode) |  | Disabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Configure Xbox Live Game Save Service Startup Mode](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-SystemServices#configurexboxlivegamesaveservicestartupmode) |  | Disabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Configure Xbox Live Networking Service Startup Mode](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-SystemServices#configurexboxlivenetworkingservicestartupmode) |  | Disabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Enable Xbox Game Save Task](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-TaskScheduler#enablexboxgamesavetask) |  | Disabled | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Access From Network](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-UserRights#accessfromnetwork)** |  | *S-1-5-32-544; *S-1-5-32-555 | windows10 | Professional<br>Enterprise<br>Education<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>MultiSession<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Allow Local Log On](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-UserRights#allowlocallogon)** |  | *S-1-5-32-544; *S-1-5-32-545 | windows10 | Professional<br>Enterprise<br>Education<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>MultiSession<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Backup Files And Directories](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-UserRights#backupfilesanddirectories)** |  | *S-1-5-32-544 | windows10 | Professional<br>Enterprise<br>Education<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>MultiSession<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Create Global Objects](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-UserRights#createglobalobjects)** |  | *S-1-5-32-544; *S-1-5-19; *S-1-5-20; *S-1-5-6 | windows10 | Professional<br>Enterprise<br>Education<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>MultiSession<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Create Page File](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-UserRights#createpagefile)** |  | *S-1-5-32-544 | windows10 | Professional<br>Enterprise<br>Education<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>MultiSession<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Debug Programs](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-UserRights#debugprograms)** |  | *S-1-5-32-544 | windows10 | Professional<br>Enterprise<br>Education<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>MultiSession<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| *[Deny Access From Network](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-UserRights#denyaccessfromnetwork)* |  | *S-1-5-113 | windows10 | Professional<br>Enterprise<br>Education<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>MultiSession<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| *[Deny Remote Desktop Services Log On](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-UserRights#denyremotedesktopserviceslogon)* |  | *S-1-5-113 | windows10 | Professional<br>Enterprise<br>Education<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>MultiSession<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| *[Impersonate Client](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-UserRights#impersonateclient)* |  | *S-1-5-32-544; *S-1-5-6; *S-1-5-19; *S-1-5-20; *S-1-5-99-216390572-1995538116-3857911515-2404958512-2623887229 | windows10 | Professional<br>Enterprise<br>Education<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>MultiSession<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Load Unload Device Drivers](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-UserRights#loadunloaddevicedrivers)** |  | *S-1-5-32-544 | windows10 | Professional<br>Enterprise<br>Education<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>MultiSession<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Manage Auditing And Security Log](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-UserRights#manageauditingandsecuritylog)** |  | *S-1-5-32-544 | windows10 | Professional<br>Enterprise<br>Education<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>MultiSession<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Manage Volume](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-UserRights#managevolume)** |  | *S-1-5-32-544 | windows10 | Professional<br>Enterprise<br>Education<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>MultiSession<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Modify Firmware Environment](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-UserRights#modifyfirmwareenvironment)** |  | *S-1-5-32-544 | windows10 | Professional<br>Enterprise<br>Education<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>MultiSession<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Profile Single Process](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-UserRights#profilesingleprocess)** |  | *S-1-5-32-544 | windows10 | Professional<br>Enterprise<br>Education<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>MultiSession<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Remote Shutdown](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-UserRights#remoteshutdown)** |  | *S-1-5-32-544 | windows10 | Professional<br>Enterprise<br>Education<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>MultiSession<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Restore Files And Directories](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-UserRights#restorefilesanddirectories)** |  | *S-1-5-32-544 | windows10 | Professional<br>Enterprise<br>Education<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>MultiSession<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Take Ownership](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-UserRights#takeownership)** |  | *S-1-5-32-544 | windows10 | Professional<br>Enterprise<br>Education<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>MultiSession<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Hypervisor Enforced Code Integrity](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-VirtualizationBasedTechnology#hypervisorenforcedcodeintegrity)** |  | (Enabled with UEFI lock) Turns on Hypervisor-Protected Code Integrity with UEFI lock. | windows10 | Professional<br>Enterprise<br>Education<br>MultiSession<br>CPC<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>CloudN<br>11SE<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Allow Auto Connect To Wi Fi Sense Hotspots](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-wifi#allowautoconnecttowifisensehotspots)** |  | Block | windows10 | Professional<br>Enterprise<br>Education<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>MultiSession<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| [Allow Internet Sharing](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-wifi#allowinternetsharing) |  | Block | windows10 | Professional<br>Enterprise<br>Education<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>MultiSession<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |
| **[Facial Features Use Enhanced Anti Spoofing](https://docs.microsoft.com/windows/client-management/mdm/PassportForWork-csp/)** |  | true | windows10 | Home<br>Professional<br>Enterprise<br>Education<br>MultiSession<br>CloudN<br>CPC<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval<br>holographicForBusiness | surfaceHub<br>hololens<br>hololensEnterprise |
| **[Allow Windows Ink Workspace](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-WindowsInkWorkspace#allowwindowsinkworkspace)** |  | ink workspace is enabled (feature is turned on), but the user cannot access it above the lock screen. | windows10 | Professional<br>Enterprise<br>Education<br>CloudN<br>11SE<br>iotEnterprise<br>iotEnterpriseSEval | Home<br>MultiSession<br>CPC<br>surfaceHub<br>hololens<br>hololensEnterprise<br>holographicForBusiness |

---

## Values

### Conflicting Values

The following settings are configured in multiple policies with different values.

| Setting | Policy | Value |
| --- | --- | --- |
| Privilege Use Audit Sensitive Privilege Use | CIS (L1) Auditing (6) - Windows 11 Intune 4.0.0 | Success+ Failure |
|  | Windows Intune Baseline | Success |
| Name | CIS (L1) Section 1 - 4.9.1.1 - Windows 11 Intune 4.0.0  | \\*\NETLOGON |
|  | Windows Intune Baseline | \\*\SYSVOL |
| Value | CIS (L1) Section 1 - 4.9.1.1 - Windows 11 Intune 4.0.0  | RequireIntegrity=1,RequireMutualAuthentication=1,RequirePrivacy=1 |
|  | Windows Intune Baseline | RequireMutualAuthentication=1,RequireIntegrity=1 |
| Block all Office applications from creating child processes | CIS (L1) Defender - Windows 11 Intune 4.0.0 | Audit |
|  | Windows Intune Baseline | Block |
| Block execution of potentially obfuscated scripts | CIS (L1) Defender - Windows 11 Intune 4.0.0 | Audit |
|  | Windows Intune Baseline | Block |
| Block Office communication application from creating child processes | CIS (L1) Defender - Windows 11 Intune 4.0.0 | Audit |
|  | Windows Intune Baseline | Block |
| Deny Access From Network | CIS (L1) User Rights (89) - Windows 11 Intune 4.0.0 | *S-1-5-32-546; *S-1-5-113 |
|  | Windows Intune Baseline | *S-1-5-113 |
| Deny Remote Desktop Services Log On | CIS (L1) User Rights (89) - Windows 11 Intune 4.0.0 | *S-1-5-32-546; *S-1-5-113 |
|  | Windows Intune Baseline | *S-1-5-113 |
| Impersonate Client | CIS (L1) User Rights (89) - Windows 11 Intune 4.0.0 | *S-1-5-32-544; *S-1-5-19; *S-1-5-20; *S-1-5-6 |
|  | Windows Intune Baseline | *S-1-5-32-544; *S-1-5-6; *S-1-5-19; *S-1-5-20; *S-1-5-99-216390572-1995538116-3857911515-2404958512-2623887229 |

---

### Duplicate Values

The following settings have identical values configured in multiple policies.

| Setting | Policy | Value |
| --- | --- | --- |
| Oobe Enable Rtp And Sig Update | CIS (L1) Defender - Windows 11 Intune 4.0.0 | If you enable this setting, real-time protection and Security Intelligence Updates are enabled during OOBE. |
|  | Windows Intune Baseline | If you enable this setting, real-time protection and Security Intelligence Updates are enabled during OOBE. |
| Quick Scan Include Exclusions | CIS (L1) Defender - Windows 11 Intune 4.0.0 | If you set this setting to 1, all files and directories that are excluded from real-time protection using contextual exclusions are scanned during a quick scan. |
|  | Windows Intune Baseline | If you set this setting to 1, all files and directories that are excluded from real-time protection using contextual exclusions are scanned during a quick scan. |
| Backup Directory  | CIS (L1) Windows LAPS (105) - Windows 11 Intune 4.4.0 | Backup the password to Microsoft Entra ID only |
|  | Windows Intune Baseline | Backup the password to Microsoft Entra ID only |
| Facial Features Use Enhanced Anti Spoofing | CIS (L1) Device Lock & WHFB - Windows 11 Intune 4.0.0  | true |
|  | Windows Intune Baseline | true |
| Include command line in process creation events | CIS (L1) Admin Templates - System (4.10) - Windows 11 Intune 4.0.0 | Enabled |
|  | Windows Intune Baseline | Enabled |
| Protection Level: (Device) | CIS (L1) Admin Templates - System (4.10) - Windows 11 Intune 4.0.0 | Force Updated Clients |
|  | Windows Intune Baseline | Force Updated Clients |
| Encryption Oracle Remediation | CIS (L1) Admin Templates - System (4.10) - Windows 11 Intune 4.0.0 | Enabled |
|  | Windows Intune Baseline | Enabled |
| Turn off multicast name resolution | CIS (L1) Section 1 - 4.9.1.1 - Windows 11 Intune 4.0.0  | Enabled |
|  | Windows Intune Baseline | Enabled |
| Prohibit use of Internet Connection Sharing on your DNS domain network | CIS (L1) Section 1 - 4.9.1.1 - Windows 11 Intune 4.0.0  | Enabled |
|  | Windows Intune Baseline | Enabled |
| Pick one of the following settings: (Device) | CIS (L1) Admin Templates - Windows Components (4.11) - Windows 11 Intune 4.0.0 | Warn and prevent bypass |
|  | Windows Intune Baseline | Warn and prevent bypass |
| Configure Windows Defender SmartScreen | CIS (L1) Admin Templates - Windows Components (4.11) - Windows 11 Intune 4.0.0 | Enabled |
|  | Windows Intune Baseline | Enabled |
| Allow Game DVR | CIS (L1) Section 15 - 104 - Windows 11 Intune 4.0.0 | Block |
|  | Windows Intune Baseline | Block |
| MSI Allow User Control Over Install | CIS (L1) Section 15 - 104 - Windows 11 Intune 4.0.0 | Disabled |
|  | Windows Intune Baseline | Disabled |
| MSI Always Install With Elevated Privileges | CIS (L1) Section 15 - 104 - Windows 11 Intune 4.0.0 | Disabled |
|  | Windows Intune Baseline | Disabled |
| Allow Microsoft accounts to be optional | CIS (L1) Admin Templates - Windows Components (4.11) - Windows 11 Intune 4.0.0 | Enabled |
|  | Windows Intune Baseline | Enabled |
| Account Logon Audit Credential Validation | CIS (L1) Auditing (6) - Windows 11 Intune 4.0.0 | Success+ Failure |
|  | Windows Intune Baseline | Success+ Failure |
| Account Logon Logoff Audit Account Lockout | CIS (L1) Auditing (6) - Windows 11 Intune 4.0.0 | Failure |
|  | Windows Intune Baseline | Failure |
| Account Logon Logoff Audit Group Membership | CIS (L1) Auditing (6) - Windows 11 Intune 4.0.0 | Success |
|  | Windows Intune Baseline | Success |
| Account Logon Logoff Audit Logon | CIS (L1) Auditing (6) - Windows 11 Intune 4.0.0 | Success+ Failure |
|  | Windows Intune Baseline | Success+ Failure |
| Audit Other Logon Logoff Events | CIS (L1) Auditing (6) - Windows 11 Intune 4.0.0 | Success+Failure |
|  | Windows Intune Baseline | Success+Failure |
| Audit Special Logon | CIS (L1) Auditing (6) - Windows 11 Intune 4.0.0 | Success |
|  | Windows Intune Baseline | Success |
| Audit Security Group Management | CIS (L1) Auditing (6) - Windows 11 Intune 4.0.0 | Success |
|  | Windows Intune Baseline | Success |
| Audit User Account Management | CIS (L1) Auditing (6) - Windows 11 Intune 4.0.0 | Success+Failure |
|  | Windows Intune Baseline | Success+Failure |
| Detailed Tracking Audit PNP Activity | CIS (L1) Auditing (6) - Windows 11 Intune 4.0.0 | Success |
|  | Windows Intune Baseline | Success |
| Detailed Tracking Audit Process Creation | CIS (L1) Auditing (6) - Windows 11 Intune 4.0.0 | Success |
|  | Windows Intune Baseline | Success |
| Object Access Audit Detailed File Share | CIS (L1) Auditing (6) - Windows 11 Intune 4.0.0 | Failure |
|  | Windows Intune Baseline | Failure |
| Audit File Share Access | CIS (L1) Auditing (6) - Windows 11 Intune 4.0.0 | Success+Failure |
|  | Windows Intune Baseline | Success+Failure |
| Object Access Audit Other Object Access Events | CIS (L1) Auditing (6) - Windows 11 Intune 4.0.0 | Success+ Failure |
|  | Windows Intune Baseline | Success+ Failure |
| Object Access Audit Removable Storage | CIS (L1) Auditing (6) - Windows 11 Intune 4.0.0 | Success+ Failure |
|  | Windows Intune Baseline | Success+ Failure |
| Audit Authentication Policy Change | CIS (L1) Auditing (6) - Windows 11 Intune 4.0.0 | Success |
|  | Windows Intune Baseline | Success |
| Policy Change Audit MPSSVC Rule Level Policy Change | CIS (L1) Auditing (6) - Windows 11 Intune 4.0.0 | Success+ Failure |
|  | Windows Intune Baseline | Success+ Failure |
| Policy Change Audit Other Policy Change Events | CIS (L1) Auditing (6) - Windows 11 Intune 4.0.0 | Failure |
|  | Windows Intune Baseline | Failure |
| Audit Changes to Audit Policy | CIS (L1) Auditing (6) - Windows 11 Intune 4.0.0 | Success |
|  | Windows Intune Baseline | Success |
| System Audit Other System Events | CIS (L1) Auditing (6) - Windows 11 Intune 4.0.0 | Success+ Failure |
|  | Windows Intune Baseline | Success+ Failure |
| System Audit Security State Change | CIS (L1) Auditing (6) - Windows 11 Intune 4.0.0 | Success |
|  | Windows Intune Baseline | Success |
| Audit Security System Extension | CIS (L1) Auditing (6) - Windows 11 Intune 4.0.0 | Success |
|  | Windows Intune Baseline | Success |
| System Audit System Integrity | CIS (L1) Auditing (6) - Windows 11 Intune 4.0.0 | Success+ Failure |
|  | Windows Intune Baseline | Success+ Failure |
| Disallow Autoplay for non-volume devices | CIS (L1) Admin Templates - Windows Components (4.11) - Windows 11 Intune 4.0.0 | Enabled |
|  | Windows Intune Baseline | Enabled |
| Default AutoRun Behavior | CIS (L1) Admin Templates - Windows Components (4.11) - Windows 11 Intune 4.0.0 | Do not execute any autorun commands |
|  | Windows Intune Baseline | Do not execute any autorun commands |
| Set the default behavior for AutoRun | CIS (L1) Admin Templates - Windows Components (4.11) - Windows 11 Intune 4.0.0 | Enabled |
|  | Windows Intune Baseline | Enabled |
| Turn off Autoplay on: | CIS (L1) Admin Templates - Windows Components (4.11) - Windows 11 Intune 4.0.0 | All drives |
|  | Windows Intune Baseline | All drives |
| Turn off Autoplay | CIS (L1) Admin Templates - Windows Components (4.11) - Windows 11 Intune 4.0.0 | Enabled |
|  | Windows Intune Baseline | Enabled |
| Turn off downloading of print drivers over HTTP | CIS (L1) Admin Templates - System (4.10) - Windows 11 Intune 4.0.0 | Enabled |
|  | Windows Intune Baseline | Enabled |
| Turn off Internet download for Web publishing and online ordering wizards | CIS (L1) Admin Templates - System (4.10) - Windows 11 Intune 4.0.0 | Enabled |
|  | Windows Intune Baseline | Enabled |
| Name | CIS (L1) Section 1 - 4.9.1.1 - Windows 11 Intune 4.0.0  | \\*\NETLOGON |
|  | Windows Intune Baseline | \\*\NETLOGON |
| Name | CIS (L1) Section 1 - 4.9.1.1 - Windows 11 Intune 4.0.0  | \\*\SYSVOL |
|  | Windows Intune Baseline | \\*\SYSVOL |
| Hardened UNC Paths: (Device) | CIS (L1) Section 1 - 4.9.1.1 - Windows 11 Intune 4.0.0  |  |
|  | Windows Intune Baseline |  |
| Hardened UNC Paths | CIS (L1) Section 1 - 4.9.1.1 - Windows 11 Intune 4.0.0  | Enabled |
|  | Windows Intune Baseline | Enabled |
| Remote host allows delegation of non-exportable credentials | CIS (L1) Admin Templates - System (4.10) - Windows 11 Intune 4.0.0 | Enabled |
|  | Windows Intune Baseline | Enabled |
| Enumerate administrator accounts on elevation | CIS (L1) Admin Templates - Windows Components (4.11) - Windows 11 Intune 4.0.0 | Disabled |
|  | Windows Intune Baseline | Disabled |
| Allow Behavior Monitoring | CIS (L1) Defender - Windows 11 Intune 4.0.0 | Allowed. Turns on real-time behavior monitoring. |
|  | Windows Intune Baseline | Allowed. Turns on real-time behavior monitoring. |
| Allow Full Scan Removable Drive Scanning | CIS (L1) Defender - Windows 11 Intune 4.0.0 | Allowed. Scans removable drives. |
|  | Windows Intune Baseline | Allowed. Scans removable drives. |
| Allow scanning of all downloaded files and attachments | CIS (L1) Defender - Windows 11 Intune 4.0.0 | Allowed. |
|  | Windows Intune Baseline | Allowed. |
| Allow Realtime Monitoring | CIS (L1) Defender - Windows 11 Intune 4.0.0 | Allowed. Turns on and runs the real-time monitoring service. |
|  | Windows Intune Baseline | Allowed. Turns on and runs the real-time monitoring service. |
| Allow Script Scanning | CIS (L1) Defender - Windows 11 Intune 4.0.0 | Allowed. |
|  | Windows Intune Baseline | Allowed. |
| Block Adobe Reader from creating child processes | CIS (L1) Defender - Windows 11 Intune 4.0.0 | Block |
|  | Windows Intune Baseline | Block |
| Block credential stealing from the Windows local security authority subsystem | CIS (L1) Defender - Windows 11 Intune 4.0.0 | Block |
|  | Windows Intune Baseline | Block |
| Block executable content from email client and webmail | CIS (L1) Defender - Windows 11 Intune 4.0.0 | Block |
|  | Windows Intune Baseline | Block |
| Block JavaScript or VBScript from launching downloaded executable content | CIS (L1) Defender - Windows 11 Intune 4.0.0 | Block |
|  | Windows Intune Baseline | Block |
| Block Office applications from creating executable content | CIS (L1) Defender - Windows 11 Intune 4.0.0 | Block |
|  | Windows Intune Baseline | Block |
| Block Office applications from injecting code into other processes | CIS (L1) Defender - Windows 11 Intune 4.0.0 | Block |
|  | Windows Intune Baseline | Block |
| Block process creations originating from PSExec and WMI commands | CIS (L1) Defender - Windows 11 Intune 4.0.0 | Audit |
|  | Windows Intune Baseline | Audit |
| Block untrusted and unsigned processes that run from USB | CIS (L1) Defender - Windows 11 Intune 4.0.0 | Block |
|  | Windows Intune Baseline | Block |
| Block Win32 API calls from Office macros | CIS (L1) Defender - Windows 11 Intune 4.0.0 | Block |
|  | Windows Intune Baseline | Block |
| Attack Surface Reduction Rules | CIS (L1) Defender - Windows 11 Intune 4.0.0 |  |
|  | Windows Intune Baseline |  |
| Enable Network Protection | CIS (L1) Defender - Windows 11 Intune 4.0.0 | Enabled (block mode) |
|  | Windows Intune Baseline | Enabled (block mode) |
| PUA Protection | CIS (L1) Defender - Windows 11 Intune 4.0.0 | PUA Protection on. Detected items are blocked. They will show in history along with other threats. |
|  | Windows Intune Baseline | PUA Protection on. Detected items are blocked. They will show in history along with other threats. |
| Configure System Guard Launch | CIS (L1) Section 15 - 104 - Windows 11 Intune 4.0.0 | Unmanaged Enables Secure Launch if supported by hardware |
|  | Windows Intune Baseline | Unmanaged Enables Secure Launch if supported by hardware |
| Enable Virtualization Based Security | CIS (L1) Section 15 - 104 - Windows 11 Intune 4.0.0 | enable virtualization based security. |
|  | Windows Intune Baseline | enable virtualization based security. |
| Credential Guard | CIS (L1) Section 15 - 104 - Windows 11 Intune 4.0.0 | (Enabled with UEFI lock) Turns on Credential Guard with UEFI lock. |
|  | Windows Intune Baseline | (Enabled with UEFI lock) Turns on Credential Guard with UEFI lock. |
| Require Platform Security Features | CIS (L1) Section 15 - 104 - Windows 11 Intune 4.0.0 | Turns on VBS with Secure Boot. |
|  | Windows Intune Baseline | Turns on VBS with Secure Boot. |
| Device Password Enabled | CIS (L1) Autopilot - Windows 11 Intune 4.0.0 | Enabled |
|  | CIS (L1) Device Lock & WHFB - Windows 11 Intune 4.0.0  | Enabled |
|  | Windows Intune Baseline | Enabled |
| Device Password History | CIS (L1) Autopilot - Windows 11 Intune 4.0.0 | 24 |
|  | Windows Intune Baseline | 24 |
| Min Device Password Length | CIS (L1) Device Lock & WHFB - Windows 11 Intune 4.0.0  | 14 |
|  | Windows Intune Baseline | 14 |
| Prevent enabling lock screen camera | CIS (L1) Section 1 - 4.9.1.1 - Windows 11 Intune 4.0.0  | Enabled |
|  | Windows Intune Baseline | Enabled |
| Prevent enabling lock screen slide show | CIS (L1) Section 1 - 4.9.1.1 - Windows 11 Intune 4.0.0  | Enabled |
|  | Windows Intune Baseline | Enabled |
| Maximum Log Size (KB) | CIS (L1) Admin Templates - Windows Components (4.11) - Windows 11 Intune 4.0.0 | 32768 |
|  | Windows Intune Baseline | 32768 |
| Specify the maximum log file size (KB) | CIS (L1) Admin Templates - Windows Components (4.11) - Windows 11 Intune 4.0.0 | Enabled |
|  | Windows Intune Baseline | Enabled |
| Maximum Log Size (KB) | CIS (L1) Admin Templates - Windows Components (4.11) - Windows 11 Intune 4.0.0 | 196608 |
|  | Windows Intune Baseline | 196608 |
| Specify the maximum log file size (KB) | CIS (L1) Admin Templates - Windows Components (4.11) - Windows 11 Intune 4.0.0 | Enabled |
|  | Windows Intune Baseline | Enabled |
| Maximum Log Size (KB) | CIS (L1) Admin Templates - Windows Components (4.11) - Windows 11 Intune 4.0.0 | 32768 |
|  | Windows Intune Baseline | 32768 |
| Specify the maximum log file size (KB) | CIS (L1) Admin Templates - Windows Components (4.11) - Windows 11 Intune 4.0.0 | Enabled |
|  | Windows Intune Baseline | Enabled |
| Turn off Data Execution Prevention for Explorer | CIS (L1) Admin Templates - Windows Components (4.11) - Windows 11 Intune 4.0.0 | Disabled |
|  | Windows Intune Baseline | Disabled |
| Turn off heap termination on corruption | CIS (L1) Admin Templates - Windows Components (4.11) - Windows 11 Intune 4.0.0 | Disabled |
|  | Windows Intune Baseline | Disabled |
| Prevent downloading of enclosures | CIS (L1) Admin Templates - Windows Components (4.11) - Windows 11 Intune 4.0.0 | Enabled |
|  | Windows Intune Baseline | Enabled |
| Enable Insecure Guest Logons | CIS (L1) Section 15 - 104 - Windows 11 Intune 4.0.0 | Disabled |
|  | Windows Intune Baseline | Disabled |
| Accounts Limit Local Account Use Of Blank Passwords To Console Logon Only | CIS (L1) Local Policies Security Options (49) - Windows 11 Intune 4.0.0  | Enabled |
|  | Windows Intune Baseline | Enabled |
| Interactive Logon Machine Inactivity Limit | CIS (L1) Local Policies Security Options (49) - Windows 11 Intune 4.0.0  | 900 |
|  | Windows Intune Baseline | 900 |
| Interactive Logon Smart Card Removal Behavior | CIS (L1) Local Policies Security Options (49) - Windows 11 Intune 4.0.0  | Lock Workstation |
|  | Windows Intune Baseline | Lock Workstation |
| Microsoft Network Client Digitally Sign Communications Always | CIS (L1) Local Policies Security Options (49) - Windows 11 Intune 4.0.0  | Enable |
|  | Windows Intune Baseline | Enable |
| Microsoft Network Client Send Unencrypted Password To Third Party SMB Servers | CIS (L1) Local Policies Security Options (49) - Windows 11 Intune 4.0.0  | Disable |
|  | Windows Intune Baseline | Disable |
| Microsoft Network Server Digitally Sign Communications Always | CIS (L1) Local Policies Security Options (49) - Windows 11 Intune 4.0.0  | Enable |
|  | Windows Intune Baseline | Enable |
| Network Access Do Not Allow Anonymous Enumeration Of SAM Accounts | CIS (L1) Local Policies Security Options (49) - Windows 11 Intune 4.0.0  | Enabled |
|  | Windows Intune Baseline | Enabled |
| Network Access Do Not Allow Anonymous Enumeration Of Sam Accounts And Shares | CIS (L1) Local Policies Security Options (49) - Windows 11 Intune 4.0.0  | Enabled |
|  | Windows Intune Baseline | Enabled |
| Network Access Restrict Anonymous Access To Named Pipes And Shares | CIS (L1) Local Policies Security Options (49) - Windows 11 Intune 4.0.0  | Enable |
|  | Windows Intune Baseline | Enable |
| Network Access Restrict Clients Allowed To Make Remote Calls To SAM | CIS (L1) Local Policies Security Options (49) - Windows 11 Intune 4.0.0  | O:BAG:BAD:(A;;RC;;;BA) |
|  | Windows Intune Baseline | O:BAG:BAD:(A;;RC;;;BA) |
| Network Security Do Not Store LAN Manager Hash Value On Next Password Change | CIS (L1) Local Policies Security Options (49) - Windows 11 Intune 4.0.0  | Enable |
|  | Windows Intune Baseline | Enable |
| Network Security LAN Manager Authentication Level | CIS (L1) Local Policies Security Options (49) - Windows 11 Intune 4.0.0  | Send NTLMv2 responses only. Refuse LM and NTLM |
|  | Windows Intune Baseline | Send NTLMv2 responses only. Refuse LM and NTLM |
| Network Security Minimum Session Security For NTLMSSP Based Clients | CIS (L1) Local Policies Security Options (49) - Windows 11 Intune 4.0.0  | Require NTLM and 128-bit encryption |
|  | Windows Intune Baseline | Require NTLM and 128-bit encryption |
| Network Security Minimum Session Security For NTLMSSP Based Servers | CIS (L1) Local Policies Security Options (49) - Windows 11 Intune 4.0.0  | Require NTLM and 128-bit encryption |
|  | Windows Intune Baseline | Require NTLM and 128-bit encryption |
| User Account Control Behavior Of The Elevation Prompt For Administrators | CIS (L1) Autopilot - Windows 11 Intune 4.0.0 | Prompt for consent on the secure desktop |
|  | Windows Intune Baseline | Prompt for consent on the secure desktop |
| User Account Control Behavior Of The Elevation Prompt For Standard Users | CIS (L1) Local Policies Security Options (49) - Windows 11 Intune 4.0.0  | Automatically deny elevation requests |
|  | Windows Intune Baseline | Automatically deny elevation requests |
| User Account Control Detect Application Installations And Prompt For Elevation | CIS (L1) Local Policies Security Options (49) - Windows 11 Intune 4.0.0  | Enable |
|  | Windows Intune Baseline | Enable |
| User Account Control Only Elevate UI Access Applications That Are Installed In Secure Locations | CIS (L1) Local Policies Security Options (49) - Windows 11 Intune 4.0.0  | Enabled: Application runs with UIAccess integrity only if it resides in secure location. |
|  | Windows Intune Baseline | Enabled: Application runs with UIAccess integrity only if it resides in secure location. |
| User Account Control Run All Administrators In Admin Approval Mode | CIS (L1) Local Policies Security Options (49) - Windows 11 Intune 4.0.0  | Enabled |
|  | Windows Intune Baseline | Enabled |
| User Account Control Use Admin Approval Mode | CIS (L1) Local Policies Security Options (49) - Windows 11 Intune 4.0.0  | Enable |
|  | Windows Intune Baseline | Enable |
| User Account Control Virtualize File And Registry Write Failures To Per User Locations | CIS (L1) Local Policies Security Options (49) - Windows 11 Intune 4.0.0  | Enabled |
|  | Windows Intune Baseline | Enabled |
| Configure Lsa Protected Process | CIS (L1) Section 15 - 104 - Windows 11 Intune 4.0.0 | Enabled with UEFI lock. LSA will run as protected process and this configuration is UEFI locked. |
|  | Windows Intune Baseline | Enabled with UEFI lock. LSA will run as protected process and this configuration is UEFI locked. |
| Apply UAC restrictions to local accounts on network logons | CIS (L1) Section 1 - 4.9.1.1 - Windows 11 Intune 4.0.0  | Enabled |
|  | Windows Intune Baseline | Enabled |
| Configure MrxSmb10 driver | CIS (L1) Section 1 - 4.9.1.1 - Windows 11 Intune 4.0.0  | Disable driver (recommended) |
|  | Windows Intune Baseline | Disable driver (recommended) |
| Configure SMB v1 client driver | CIS (L1) Section 1 - 4.9.1.1 - Windows 11 Intune 4.0.0  | Enabled |
|  | Windows Intune Baseline | Enabled |
| Configure SMB v1 server | CIS (L1) Section 1 - 4.9.1.1 - Windows 11 Intune 4.0.0  | Disabled |
|  | Windows Intune Baseline | Disabled |
| Enable Structured Exception Handling Overwrite Protection (SEHOP) | CIS (L1) Section 1 - 4.9.1.1 - Windows 11 Intune 4.0.0  | Enabled |
|  | Windows Intune Baseline | Enabled |
| MSS: (EnableICMPRedirect) Allow ICMP redirects to override OSPF generated routes | CIS (L1) Section 1 - 4.9.1.1 - Windows 11 Intune 4.0.0  | Disabled |
|  | Windows Intune Baseline | Disabled |
| MSS: (NoNameReleaseOnDemand) Allow the computer to ignore NetBIOS name release requests except from WINS servers | CIS (L1) Section 1 - 4.9.1.1 - Windows 11 Intune 4.0.0  | Enabled |
|  | Windows Intune Baseline | Enabled |
| DisableIPSourceRouting (Device) | CIS (L1) Section 1 - 4.9.1.1 - Windows 11 Intune 4.0.0  | Highest protection, source routing is completely disabled |
|  | Windows Intune Baseline | Highest protection, source routing is completely disabled |
| MSS: (DisableIPSourceRouting) IP source routing protection level (protects against packet spoofing) | CIS (L1) Section 1 - 4.9.1.1 - Windows 11 Intune 4.0.0  | Enabled |
|  | Windows Intune Baseline | Enabled |
| DisableIPSourceRoutingIPv6 (Device) | CIS (L1) Section 1 - 4.9.1.1 - Windows 11 Intune 4.0.0  | Highest protection, source routing is completely disabled |
|  | Windows Intune Baseline | Highest protection, source routing is completely disabled |
| MSS: (DisableIPSourceRouting IPv6) IP source routing protection level (protects against packet spoofing) | CIS (L1) Section 1 - 4.9.1.1 - Windows 11 Intune 4.0.0  | Enabled |
|  | Windows Intune Baseline | Enabled |
| Require a password when a computer wakes (on battery) | CIS (L1) Admin Templates - System (4.10) - Windows 11 Intune 4.0.0 | Enabled |
|  | Windows Intune Baseline | Enabled |
| Require a password when a computer wakes (plugged in) | CIS (L1) Admin Templates - System (4.10) - Windows 11 Intune 4.0.0 | Enabled |
|  | Windows Intune Baseline | Enabled |
| Manage processing of Queue-Specific files: (Device) | CIS (L1) Section 1 - 4.9.1.1 - Windows 11 Intune 4.0.0  | Limit Queue-specific files to Color profiles |
|  | Windows Intune Baseline | Limit Queue-specific files to Color profiles |
| Manage processing of Queue-specific files | CIS (L1) Section 1 - 4.9.1.1 - Windows 11 Intune 4.0.0  | Enabled |
|  | Windows Intune Baseline | Enabled |
| Redirection Guard Options (Device) | CIS (L1) Section 1 - 4.9.1.1 - Windows 11 Intune 4.0.0  | Redirection Guard Enabled |
|  | Windows Intune Baseline | Redirection Guard Enabled |
| Configure Redirection Guard | CIS (L1) Section 1 - 4.9.1.1 - Windows 11 Intune 4.0.0  | Enabled |
|  | Windows Intune Baseline | Enabled |
| Use authentication for outgoing RPC connections: (Device) | CIS (L1) Section 1 - 4.9.1.1 - Windows 11 Intune 4.0.0  | Default |
|  | Windows Intune Baseline | Default |
| Protocol to use for outgoing RPC connections: (Device) | CIS (L1) Section 1 - 4.9.1.1 - Windows 11 Intune 4.0.0  | RPC over TCP |
|  | Windows Intune Baseline | RPC over TCP |
| Configure RPC connection settings | CIS (L1) Section 1 - 4.9.1.1 - Windows 11 Intune 4.0.0  | Enabled |
|  | Windows Intune Baseline | Enabled |
| Authentication protocol to use for incoming RPC connections: (Device) | CIS (L1) Section 1 - 4.9.1.1 - Windows 11 Intune 4.0.0  | Negotiate |
|  | Windows Intune Baseline | Negotiate |
| Protocols to allow for incoming RPC connections: (Device) | CIS (L1) Section 1 - 4.9.1.1 - Windows 11 Intune 4.0.0  | RPC over TCP |
|  | Windows Intune Baseline | RPC over TCP |
| Configure RPC listener settings | CIS (L1) Section 1 - 4.9.1.1 - Windows 11 Intune 4.0.0  | Enabled |
|  | Windows Intune Baseline | Enabled |
| RPC over TCP port: (Device) | CIS (L1) Section 1 - 4.9.1.1 - Windows 11 Intune 4.0.0  | 0 |
|  | Windows Intune Baseline | 0 |
| Configure RPC over TCP port | CIS (L1) Section 1 - 4.9.1.1 - Windows 11 Intune 4.0.0  | Enabled |
|  | Windows Intune Baseline | Enabled |
| Limits print driver installation to Administrators | CIS (L1) Section 1 - 4.9.1.1 - Windows 11 Intune 4.0.0  | Enabled |
|  | Windows Intune Baseline | Enabled |
| Let Apps Activate With Voice Above Lock | CIS (L1) Section 15 - 104 - Windows 11 Intune 4.0.0 | Force deny. Windows apps cannot be activated by voice while the screen is locked, and users cannot change it. |
|  | Windows Intune Baseline | Force deny. Windows apps cannot be activated by voice while the screen is locked, and users cannot change it. |
| Configure Solicited Remote Assistance | CIS (L1) Admin Templates - System (4.10) - Windows 11 Intune 4.0.0 | Disabled |
|  | Windows Intune Baseline | Disabled |
| Encryption Level | CIS (L1) Admin Templates - Windows Components (4.11) - Windows 11 Intune 4.0.0 | High Level |
|  | Windows Intune Baseline | High Level |
| Set client connection encryption level | CIS (L1) Admin Templates - Windows Components (4.11) - Windows 11 Intune 4.0.0 | Enabled |
|  | Windows Intune Baseline | Enabled |
| Do not allow drive redirection | CIS (L1) Admin Templates - Windows Components (4.11) - Windows 11 Intune 4.0.0 | Enabled |
|  | Windows Intune Baseline | Enabled |
| Do not allow passwords to be saved | CIS (L1) Admin Templates - Windows Components (4.11) - Windows 11 Intune 4.0.0 | Enabled |
|  | Windows Intune Baseline | Enabled |
| Always prompt for password upon connection | CIS (L1) Admin Templates - Windows Components (4.11) - Windows 11 Intune 4.0.0 | Enabled |
|  | Windows Intune Baseline | Enabled |
| Require secure RPC communication | CIS (L1) Admin Templates - Windows Components (4.11) - Windows 11 Intune 4.0.0 | Enabled |
|  | Windows Intune Baseline | Enabled |
| Allow Basic authentication | CIS (L1) Admin Templates - Windows Components (4.11) - Windows 11 Intune 4.0.0 | Disabled |
|  | Windows Intune Baseline | Disabled |
| Allow Basic authentication | CIS (L1) Admin Templates - Windows Components (4.11) - Windows 11 Intune 4.0.0 | Disabled |
|  | Windows Intune Baseline | Disabled |
| Allow unencrypted traffic | CIS (L1) Admin Templates - Windows Components (4.11) - Windows 11 Intune 4.0.0 | Disabled |
|  | Windows Intune Baseline | Disabled |
| Allow unencrypted traffic | CIS (L1) Admin Templates - Windows Components (4.11) - Windows 11 Intune 4.0.0 | Disabled |
|  | Windows Intune Baseline | Disabled |
| Disallow Digest authentication | CIS (L1) Admin Templates - Windows Components (4.11) - Windows 11 Intune 4.0.0 | Enabled |
|  | Windows Intune Baseline | Enabled |
| Disallow WinRM from storing RunAs credentials | CIS (L1) Admin Templates - Windows Components (4.11) - Windows 11 Intune 4.0.0 | Enabled |
|  | Windows Intune Baseline | Enabled |
| RPC Runtime Unauthenticated Client Restriction to Apply: | CIS (L1) Admin Templates - System (4.10) - Windows 11 Intune 4.0.0 | Authenticated |
|  | Windows Intune Baseline | Authenticated |
| Restrict Unauthenticated RPC clients | CIS (L1) Admin Templates - System (4.10) - Windows 11 Intune 4.0.0 | Enabled |
|  | Windows Intune Baseline | Enabled |
| Allow Indexing Encrypted Stores Or Items | CIS (L1) Section 15 - 104 - Windows 11 Intune 4.0.0 | Block |
|  | Windows Intune Baseline | Block |
| Enable Sudo | CIS (L1) Section 15 - 104 - Windows 11 Intune 4.0.0 | Sudo is disabled. |
|  | Windows Intune Baseline | Sudo is disabled. |
| Choose the boot-start drivers that can be initialized: | CIS (L1) Admin Templates - System (4.10) - Windows 11 Intune 4.0.0 | Good, unknown and bad but critical |
|  | Windows Intune Baseline | Good, unknown and bad but critical |
| Boot-Start Driver Initialization Policy | CIS (L1) Admin Templates - System (4.10) - Windows 11 Intune 4.0.0 | Enabled |
|  | Windows Intune Baseline | Enabled |
| Access From Network | CIS (L1) User Rights (89) - Windows 11 Intune 4.0.0 | *S-1-5-32-544; *S-1-5-32-555 |
|  | Windows Intune Baseline | *S-1-5-32-544; *S-1-5-32-555 |
| Allow Local Log On | CIS (L1) User Rights (89) - Windows 11 Intune 4.0.0 | *S-1-5-32-544; *S-1-5-32-545 |
|  | Windows Intune Baseline | *S-1-5-32-544; *S-1-5-32-545 |
| Backup Files And Directories | CIS (L1) User Rights (89) - Windows 11 Intune 4.0.0 | *S-1-5-32-544 |
|  | Windows Intune Baseline | *S-1-5-32-544 |
| Create Global Objects | CIS (L1) User Rights (89) - Windows 11 Intune 4.0.0 | *S-1-5-32-544; *S-1-5-19; *S-1-5-20; *S-1-5-6 |
|  | Windows Intune Baseline | *S-1-5-32-544; *S-1-5-19; *S-1-5-20; *S-1-5-6 |
| Create Page File | CIS (L1) User Rights (89) - Windows 11 Intune 4.0.0 | *S-1-5-32-544 |
|  | Windows Intune Baseline | *S-1-5-32-544 |
| Debug Programs | CIS (L1) User Rights (89) - Windows 11 Intune 4.0.0 | *S-1-5-32-544 |
|  | Windows Intune Baseline | *S-1-5-32-544 |
| Load Unload Device Drivers | CIS (L1) User Rights (89) - Windows 11 Intune 4.0.0 | *S-1-5-32-544 |
|  | Windows Intune Baseline | *S-1-5-32-544 |
| Manage Auditing And Security Log | CIS (L1) User Rights (89) - Windows 11 Intune 4.0.0 | *S-1-5-32-544 |
|  | Windows Intune Baseline | *S-1-5-32-544 |
| Manage Volume | CIS (L1) User Rights (89) - Windows 11 Intune 4.0.0 | *S-1-5-32-544 |
|  | Windows Intune Baseline | *S-1-5-32-544 |
| Modify Firmware Environment | CIS (L1) User Rights (89) - Windows 11 Intune 4.0.0 | *S-1-5-32-544 |
|  | Windows Intune Baseline | *S-1-5-32-544 |
| Profile Single Process | CIS (L1) User Rights (89) - Windows 11 Intune 4.0.0 | *S-1-5-32-544 |
|  | Windows Intune Baseline | *S-1-5-32-544 |
| Remote Shutdown | CIS (L1) User Rights (89) - Windows 11 Intune 4.0.0 | *S-1-5-32-544 |
|  | Windows Intune Baseline | *S-1-5-32-544 |
| Restore Files And Directories | CIS (L1) User Rights (89) - Windows 11 Intune 4.0.0 | *S-1-5-32-544 |
|  | Windows Intune Baseline | *S-1-5-32-544 |
| Take Ownership | CIS (L1) User Rights (89) - Windows 11 Intune 4.0.0 | *S-1-5-32-544 |
|  | Windows Intune Baseline | *S-1-5-32-544 |
| Hypervisor Enforced Code Integrity | CIS (L1) Autopilot - Windows 11 Intune 4.0.0 | (Enabled with UEFI lock) Turns on Hypervisor-Protected Code Integrity with UEFI lock. |
|  | Windows Intune Baseline | (Enabled with UEFI lock) Turns on Hypervisor-Protected Code Integrity with UEFI lock. |
| Notify Malicious | CIS (L1) Section 15 - 104 - Windows 11 Intune 4.0.0 | Enabled |
|  | Windows Intune Baseline | Enabled |
| Notify Password Reuse | CIS (L1) Section 15 - 104 - Windows 11 Intune 4.0.0 | Enabled |
|  | Windows Intune Baseline | Enabled |
| Notify Unsafe App | CIS (L1) Section 15 - 104 - Windows 11 Intune 4.0.0 | Enabled |
|  | Windows Intune Baseline | Enabled |
| Service Enabled | CIS (L1) Section 15 - 104 - Windows 11 Intune 4.0.0 | Enabled |
|  | Windows Intune Baseline | Enabled |
| Allow Auto Connect To Wi Fi Sense Hotspots | CIS (L1) Section 15 - 104 - Windows 11 Intune 4.0.0 | Block |
|  | Windows Intune Baseline | Block |
| Prohibit connection to non-domain networks when connected to domain authenticated network | CIS (L1) Section 1 - 4.9.1.1 - Windows 11 Intune 4.0.0  | Enabled |
|  | Windows Intune Baseline | Enabled |
| Allow Windows Ink Workspace | CIS (L1) Section 15 - 104 - Windows 11 Intune 4.0.0 | ink workspace is enabled (feature is turned on), but the user cannot access it above the lock screen. |
|  | Windows Intune Baseline | ink workspace is enabled (feature is turned on), but the user cannot access it above the lock screen. |
| Sign-in and lock last interactive user automatically after a restart | CIS (L1) Admin Templates - Windows Components (4.11) - Windows 11 Intune 4.0.0 | Disabled |
|  | Windows Intune Baseline | Disabled |
| Configure the transmission of the user's password in the content of MPR notifications sent by winlogon. | CIS (L1) Admin Templates - Windows Components (4.11) - Windows 11 Intune 4.0.0 | Disabled |
|  | Windows Intune Baseline | Disabled |
| Turn off toast notifications on the lock screen (User) | CIS (L1) Section 1 - 4.9.1.1 - Windows 11 Intune 4.0.0  | Enabled |
|  | Windows Intune Baseline | Enabled |
| Default Inbound Action for Domain Profile | CIS (L1) Firewall (38) - Windows 11 Intune 4.0.0  | Block |
|  | Windows Intune Baseline | Block |
| Disable Inbound Notifications | CIS (L1) Firewall (38) - Windows 11 Intune 4.0.0  | True |
|  | Windows Intune Baseline | True |
| Enable Domain Network Firewall | CIS (L1) Firewall (38) - Windows 11 Intune 4.0.0  | True |
|  | Windows Intune Baseline | True |
| Enable Log Dropped Packets | CIS (L1) Firewall (38) - Windows 11 Intune 4.0.0  | Enable Logging Of Dropped Packets |
|  | Windows Intune Baseline | Enable Logging Of Dropped Packets |
| Enable Log Success Connections | CIS (L1) Firewall (38) - Windows 11 Intune 4.0.0  | Enable Logging Of Successful Connections |
|  | Windows Intune Baseline | Enable Logging Of Successful Connections |
| Log Max File Size | CIS (L1) Firewall (38) - Windows 11 Intune 4.0.0  | 16384 |
|  | Windows Intune Baseline | 16384 |
| Default Inbound Action for Private Profile | CIS (L1) Firewall (38) - Windows 11 Intune 4.0.0  | Block |
|  | Windows Intune Baseline | Block |
| Disable Inbound Notifications | CIS (L1) Firewall (38) - Windows 11 Intune 4.0.0  | True |
|  | Windows Intune Baseline | True |
| Enable Private Network Firewall | CIS (L1) Firewall (38) - Windows 11 Intune 4.0.0  | True |
|  | Windows Intune Baseline | True |
| Enable Log Dropped Packets | CIS (L1) Firewall (38) - Windows 11 Intune 4.0.0  | Enable Logging Of Dropped Packets |
|  | Windows Intune Baseline | Enable Logging Of Dropped Packets |
| Enable Log Success Connections | CIS (L1) Firewall (38) - Windows 11 Intune 4.0.0  | Enable Logging Of Successful Connections |
|  | Windows Intune Baseline | Enable Logging Of Successful Connections |
| Log Max File Size | CIS (L1) Firewall (38) - Windows 11 Intune 4.0.0  | 16384 |
|  | Windows Intune Baseline | 16384 |
| Allow Local Ipsec Policy Merge | CIS (L1) Firewall (38) - Windows 11 Intune 4.0.0  | False |
|  | Windows Intune Baseline | False |
| Allow Local Policy Merge | CIS (L1) Firewall (38) - Windows 11 Intune 4.0.0  | False |
|  | Windows Intune Baseline | False |
| Default Inbound Action for Public Profile | CIS (L1) Firewall (38) - Windows 11 Intune 4.0.0  | Block |
|  | Windows Intune Baseline | Block |
| Disable Inbound Notifications | CIS (L1) Firewall (38) - Windows 11 Intune 4.0.0  | True |
|  | Windows Intune Baseline | True |
| Enable Public Network Firewall | CIS (L1) Firewall (38) - Windows 11 Intune 4.0.0  | True |
|  | Windows Intune Baseline | True |
| Enable Log Dropped Packets | CIS (L1) Firewall (38) - Windows 11 Intune 4.0.0  | Enable Logging Of Dropped Packets |
|  | Windows Intune Baseline | Enable Logging Of Dropped Packets |
| Enable Log Success Connections | CIS (L1) Firewall (38) - Windows 11 Intune 4.0.0  | Enable Logging Of Successful Connections |
|  | Windows Intune Baseline | Enable Logging Of Successful Connections |
| Log Max File Size | CIS (L1) Firewall (38) - Windows 11 Intune 4.0.0  | 16384 |
|  | Windows Intune Baseline | 16384 |

---

### Unique Values

The following settings are configured in only one policy.

| Setting | Value | Policy |
| --- | --- | --- |
| Deny write access to fixed drives not protected by BitLocker | Disabled | Windows Intune Baseline |
| Deny write access to removable drives not protected by BitLocker | Enabled | Windows Intune Baseline |
| Do not allow write access to devices configured in another organization | False | Windows Intune Baseline |
| Remote Encryption Protection Configured State | Audit: Generate EDR detections without blocking | CIS (L1) Defender - Windows 11 Intune 4.0.0 |
| Days Until Aggressive Catchup Quick Scan | 7 | CIS (L1) Defender - Windows 11 Intune 4.0.0 |
| Disable Local Admin Merge | Disable Local Admin Merge | Windows Intune Baseline |
| Enable Convert Warn To Block | Warn verdicts are converted to block | Windows Intune Baseline |
| Enable File Hash Computation | Enable | Windows Intune Baseline |
| Hide Exclusions From Local Admins | If you enable this setting, local admins will no longer be able to see the exclusion list in Windows Security App or via PowerShell. | Windows Intune Baseline |
| Hide Exclusions From Local Users | If you enable this setting, local users will no longer be able to see the exclusion list in Windows Security App or via PowerShell. | CIS (L1) Defender - Windows 11 Intune 4.0.0 |
| Passive Remediation | PASSIVEREMEDIATIONFLAGSENSEAUTOREMEDIATION: Passive Remediation Sense AutoRemediation | Windows Intune Baseline |
|  Provider ID |  | CIS (L1) Section 15 - 104 - Windows 11 Intune 4.0.0 |
| Refresh cadence | 90 | CIS (L1) Section 15 - 104 - Windows 11 Intune 4.0.0 |
| Config refresh | Enabled. | CIS (L1) Section 15 - 104 - Windows 11 Intune 4.0.0 |
| Password Age Days | 30 | CIS (L1) Windows LAPS (105) - Windows 11 Intune 4.4.0 |
| Password Complexity  | Large letters + small letters + numbers + special characters | CIS (L1) Windows LAPS (105) - Windows 11 Intune 4.4.0 |
| Password Length  | 15 | CIS (L1) Windows LAPS (105) - Windows 11 Intune 4.4.0 |
| Post Authentication Actions  | Reset the password and logoff the managed account: upon expiry of the grace period, the managed account password will be reset and any interactive logon sessions using the managed account will terminated. | CIS (L1) Windows LAPS (105) - Windows 11 Intune 4.4.0 |
| Post Authentication Reset Delay  | 8 | CIS (L1) Windows LAPS (105) - Windows 11 Intune 4.4.0 |
| Device-scoped settings |  | CIS (L1) Device Lock & WHFB - Windows 11 Intune 4.0.0  |
| Minimum PIN Length | 6 | CIS (L1) Device Lock & WHFB - Windows 11 Intune 4.0.0  |
| Require Security Device | true | CIS (L1) Device Lock & WHFB - Windows 11 Intune 4.0.0  |
| Enable ESS with Supported Peripherals | Enhanced sign-in security will be enabled on systems with capable software and hardware, following the existing default behavior in Windows. For systems with one secure modality (face or fingerprint) and one insecure modality (fingerprint or face), only the secure sensor can be used for sign-in and the insecure sensor(s) will be blocked. This includes peripheral devices, which are unsupported and will be unusable. (default and recommended for highest security) | CIS (L1) Device Lock & WHFB - Windows 11 Intune 4.0.0  |
| Allow Cortana Above Lock | Block | CIS (L1) Section 1 - 4.9.1.1 - Windows 11 Intune 4.0.0  |
| Prevent the use of security questions for local accounts | Enabled | CIS (L1) Admin Templates - Windows Components (4.11) - Windows 11 Intune 4.0.0 |
| Control Event Log behavior when the log file reaches its maximum size | Disabled | CIS (L1) Admin Templates - Windows Components (4.11) - Windows 11 Intune 4.0.0 |
| Control Event Log behavior when the log file reaches its maximum size | Disabled | CIS (L1) Admin Templates - Windows Components (4.11) - Windows 11 Intune 4.0.0 |
| Control Event Log behavior when the log file reaches its maximum size | Disabled | CIS (L1) Admin Templates - Windows Components (4.11) - Windows 11 Intune 4.0.0 |
| Specify the maximum log file size (KB) | Enabled | CIS (L1) Admin Templates - Windows Components (4.11) - Windows 11 Intune 4.0.0 |
| Maximum Log Size (KB) (Device) | 32768 | CIS (L1) Admin Templates - Windows Components (4.11) - Windows 11 Intune 4.0.0 |
| Configure registry policy processing | Enabled | Windows Intune Baseline |
| Do not apply during periodic background processing (Device) | False | Windows Intune Baseline |
| Process even if the Group Policy objects have not changed (Device) | True | Windows Intune Baseline |
| Turn off background refresh of Group Policy | Disabled | CIS (L1) Admin Templates - System (4.10) - Windows 11 Intune 4.0.0 |
| Continue experiences on this device | Disabled | CIS (L1) Admin Templates - System (4.10) - Windows 11 Intune 4.0.0 |
| Block user from showing account details on sign-in | Enabled | CIS (L1) Admin Templates - System (4.10) - Windows 11 Intune 4.0.0 |
| Do not enumerate connected users on domain-joined computers | Enabled | CIS (L1) Admin Templates - System (4.10) - Windows 11 Intune 4.0.0 |
| Configure the 'Block at First Sight' feature | Enabled | Windows Intune Baseline |
| Turn off routine remediation | Disabled | Windows Intune Baseline |
| Turn on process scanning whenever real-time protection is enabled | Enabled | Windows Intune Baseline |
| Configure local setting override for reporting to Microsoft MAPS | Disabled | CIS (L1) Defender - Windows 11 Intune 4.0.0 |
| Block all consumer Microsoft account user authentication | Enabled | CIS (L1) Admin Templates - Windows Components (4.11) - Windows 11 Intune 4.0.0 |
| MSS: (AutoAdminLogon) Enable Automatic Logon (not recommended) | Disabled | CIS (L1) Autopilot - Windows 11 Intune 4.0.0 |
| MSS: (SafeDllSearchMode) Enable Safe DLL search mode (recommended) | Enabled | CIS (L1) Section 1 - 4.9.1.1 - Windows 11 Intune 4.0.0  |
| MSS: (ScreenSaverGracePeriod) The time in seconds before the screen saver grace period expires (0 recommended) | Enabled | CIS (L1) Section 1 - 4.9.1.1 - Windows 11 Intune 4.0.0  |
| ScreenSaverGracePeriod (Device) | 5 | CIS (L1) Section 1 - 4.9.1.1 - Windows 11 Intune 4.0.0  |
| MSS: (WarningLevel) Percentage threshold for the security event log at which the system will generate a warning | Enabled | CIS (L1) Section 1 - 4.9.1.1 - Windows 11 Intune 4.0.0  |
| WarningLevel (Device) | 90% | CIS (L1) Section 1 - 4.9.1.1 - Windows 11 Intune 4.0.0  |
| Require domain users to elevate when setting a network's location | Enabled | CIS (L1) Section 1 - 4.9.1.1 - Windows 11 Intune 4.0.0  |
| Allow Print Spooler to accept client connections | Disabled | CIS (L1) Section 1 - 4.9.1.1 - Windows 11 Intune 4.0.0  |
| Require use of specific security layer for remote (RDP) connections | Enabled | CIS (L1) Admin Templates - Windows Components (4.11) - Windows 11 Intune 4.0.0 |
| Security Layer (Device) | SSL | CIS (L1) Admin Templates - Windows Components (4.11) - Windows 11 Intune 4.0.0 |
| Do not delete temp folders upon exit | Disabled | CIS (L1) Admin Templates - Windows Components (4.11) - Windows 11 Intune 4.0.0 |
| Require user authentication for remote connections by using Network Level Authentication | Enabled | CIS (L1) Admin Templates - Windows Components (4.11) - Windows 11 Intune 4.0.0 |
| Enable Windows NTP Client | Enabled | CIS (L1) Admin Templates - System (4.10) - Windows 11 Intune 4.0.0 |
| Enable Windows NTP Server | Disabled | CIS (L1) Admin Templates - System (4.10) - Windows 11 Intune 4.0.0 |
| Minimize the number of simultaneous connections to the Internet or a Windows Domain | Enabled | CIS (L1) Section 1 - 4.9.1.1 - Windows 11 Intune 4.0.0  |
| Minimize Policy Options (Device) | 3 = Prevent Wi-Fi when on Ethernet | CIS (L1) Section 1 - 4.9.1.1 - Windows 11 Intune 4.0.0  |
| Turn off shell protocol protected mode | Disabled | CIS (L1) Admin Templates - Windows Components (4.11) - Windows 11 Intune 4.0.0 |
| Turn off the offer to update to the latest version of Windows | Enabled | CIS (L1) Admin Templates - Windows Components (4.11) - Windows 11 Intune 4.0.0 |
| Allow apps from the Microsoft app store to auto update | Allowed. | CIS (L1) Section 15 - 104 - Windows 11 Intune 4.0.0 |
| Block Non Admin User Install | Allow | CIS (L1) Section 15 - 104 - Windows 11 Intune 4.0.0 |
| Account Logon Logoff Audit Logoff | Success | CIS (L1) Auditing (6) - Windows 11 Intune 4.0.0 |
| Account Management Audit Application Group Management | Success+ Failure | CIS (L1) Auditing (6) - Windows 11 Intune 4.0.0 |
| Audit Authorization Policy Change | Success | CIS (L1) Auditing (6) - Windows 11 Intune 4.0.0 |
| System Audit I Psec Driver | Success+ Failure | CIS (L1) Auditing (6) - Windows 11 Intune 4.0.0 |
| Allow Password Manager | Block | Windows Intune Baseline |
| Allow Smart Screen | Allow | Windows Intune Baseline |
| Prevent Cert Error Overrides | Enabled | Windows Intune Baseline |
| Prevent Smart Screen Prompt Override | Enabled | Windows Intune Baseline |
| Prevent Smart Screen Prompt Override For Files | Enabled | Windows Intune Baseline |
| Prohibit installation and configuration of Network Bridge on your DNS domain network | Enabled | CIS (L1) Section 1 - 4.9.1.1 - Windows 11 Intune 4.0.0  |
| Turn on convenience PIN sign-in | Disabled | CIS (L1) Admin Templates - System (4.10) - Windows 11 Intune 4.0.0 |
| Turn off picture password sign-in | Enabled | CIS (L1) Admin Templates - System (4.10) - Windows 11 Intune 4.0.0 |
| Do not display the password reveal button | Enabled | CIS (L1) Admin Templates - Windows Components (4.11) - Windows 11 Intune 4.0.0 |
| Allow Direct Memory Access | Block | Windows Intune Baseline |
| Allow Archive Scanning | Allowed. Scans the archive files. | Windows Intune Baseline |
| Allow Cloud Protection | Allowed. Turns on Cloud Protection. | Windows Intune Baseline |
| Allow Email Scanning | Allowed. Turns on email scanning. | CIS (L1) Defender - Windows 11 Intune 4.0.0 |
| Allow On Access Protection | Allowed. | Windows Intune Baseline |
| Block abuse of exploited vulnerable signed drivers (Device) | Block | CIS (L1) Defender - Windows 11 Intune 4.0.0 |
| Block executable files from running unless they meet a prevalence, age, or trusted list criterion | Audit | CIS (L1) Defender - Windows 11 Intune 4.0.0 |
| Block persistence through WMI event subscription | Block | CIS (L1) Defender - Windows 11 Intune 4.0.0 |
| Use advanced protection against ransomware | Audit | CIS (L1) Defender - Windows 11 Intune 4.0.0 |
| Cloud Block Level | High | Windows Intune Baseline |
| Cloud Extended Timeout | 50 | Windows Intune Baseline |
| Real Time Scan Direction | Monitor all files (bi-directional). | Windows Intune Baseline |
| Submit Samples Consent | Send all samples automatically. | Windows Intune Baseline |
| DO Download Mode | HTTP only, no peering | CIS (L1) Section 15 - 104 - Windows 11 Intune 4.0.0 |
| Enable App Installer Experimental Features | Disabled | CIS (L1) Admin Templates - Windows Components (4.11) - Windows 11 Intune 4.0.0 |
| Enable App Installer Hash Override | Disabled | CIS (L1) Admin Templates - Windows Components (4.11) - Windows 11 Intune 4.0.0 |
| Enable App Installer ms-appinstaller protocol | Disabled | CIS (L1) Admin Templates - Windows Components (4.11) - Windows 11 Intune 4.0.0 |
| Machine Identity Isolation | (Disabled) Machine password is only LSASS-bound and stored in $MACHINE.ACC registry key. | Windows Intune Baseline |
| Prevent automatic download of applications associated with device metadata | Enabled | CIS (L1) Admin Templates - System (4.10) - Windows 11 Intune 4.0.0 |
| Prevent installation of devices using drivers that match these device setup classes | Enabled | Windows Intune Baseline |
| Prevented Classes | {d48179be-ec20-11d1-b6b8-00c04fa372a7} | Windows Intune Baseline |
| Also apply to matching devices that are already installed. | True | Windows Intune Baseline |
| Alphanumeric Device Password Required | Password or Alphanumeric PIN required. | CIS (L1) Device Lock & WHFB - Windows 11 Intune 4.0.0  |
| Device Password Expiration | 365 | CIS (L1) Device Lock & WHFB - Windows 11 Intune 4.0.0  |
| Max Device Password Failed Attempts | 5 | CIS (L1) Device Lock & WHFB - Windows 11 Intune 4.0.0  |
| Max Inactivity Time Device Lock | 15 | CIS (L1) Device Lock & WHFB - Windows 11 Intune 4.0.0  |
| Min Device Password Complex Characters | Digits and lowercase letters are required | CIS (L1) Device Lock & WHFB - Windows 11 Intune 4.0.0  |
| Minimum Password Age | 1 | CIS (L1) Device Lock & WHFB - Windows 11 Intune 4.0.0  |
| Device Enumeration Policy | Block all (Most restrictive) | Windows Intune Baseline |
| Control Event Log behavior when the log file reaches its maximum size | Disabled | CIS (L1) Admin Templates - Windows Components (4.11) - Windows 11 Intune 4.0.0 |
| Allow Cortana | Block | CIS (L1) Section 15 - 104 - Windows 11 Intune 4.0.0 |
| Allow Windows Consumer Features | Block | Windows Intune Baseline |
| Disable Consumer Account State Content | Enabled. | CIS (L1) Section 15 - 104 - Windows 11 Intune 4.0.0 |
| Do Not Show Feedback Notifications | Feedback notifications are disabled. | CIS (L1) Section 15 - 104 - Windows 11 Intune 4.0.0 |
| Turn on certificate address mismatch warning | Enabled | Windows Intune Baseline |
| Turn on Enhanced Protected Mode | Enabled | Windows Intune Baseline |
| Allow fallback to SSL 3.0 (Internet Explorer) | Enabled | Windows Intune Baseline |
| Allow insecure fallback for: | No Sites | Windows Intune Baseline |
| Allow software to run or install even if the signature is invalid | Disabled | Windows Intune Baseline |
| Check for server certificate revocation | Enabled | Windows Intune Baseline |
| Check for signatures on downloaded programs | Enabled | Windows Intune Baseline |
| Internet Explorer Processes | Enabled | Windows Intune Baseline |
| Prevent bypassing SmartScreen Filter warnings | Enabled | Windows Intune Baseline |
| Prevent bypassing SmartScreen Filter warnings about files that are not commonly downloaded from the Internet | Enabled | Windows Intune Baseline |
| Turn off Crash Detection | Enabled | Windows Intune Baseline |
| Turn off encryption support | Enabled | Windows Intune Baseline |
| Secure Protocol combinations | Use TLS 1.1 and TLS 1.2 | Windows Intune Baseline |
| Prevent ignoring certificate errors | Enabled | Windows Intune Baseline |
| Turn on 64-bit tab processes when running in Enhanced Protected Mode on 64-bit versions of Windows | Enabled | Windows Intune Baseline |
| Turn off the Security Settings Check feature | Disabled | Windows Intune Baseline |
| Do not allow ActiveX controls to run in Protected Mode when Enhanced Protected Mode is enabled | Enabled | Windows Intune Baseline |
| Security Zones: Do not allow users to add/delete sites | Enabled | Windows Intune Baseline |
| Security Zones: Do not allow users to change policies | Enabled | Windows Intune Baseline |
| Turn off blocking of outdated ActiveX controls for Internet Explorer | Disabled | Windows Intune Baseline |
| Intranet Sites: Include all network paths (UNCs) | Disabled | Windows Intune Baseline |
| Access data sources across domains | Enabled | Windows Intune Baseline |
| Access data sources across domains | Disable | Windows Intune Baseline |
| Automatic prompting for file downloads | Enabled | Windows Intune Baseline |
| Automatic prompting for file downloads | Disable | Windows Intune Baseline |
| Allow cut, copy or paste operations from the clipboard via script | Enabled | Windows Intune Baseline |
| Allow paste operations via script | Disable | Windows Intune Baseline |
| Allow drag and drop or copy and paste files | Enabled | Windows Intune Baseline |
| Allow drag and drop or copy and paste files | Disable | Windows Intune Baseline |
| Web sites in less privileged Web content zones can navigate into this zone | Enabled | Windows Intune Baseline |
| Web sites in less privileged Web content zones can navigate into this zone | Disable | Windows Intune Baseline |
| Allow loading of XAML files | Enabled | Windows Intune Baseline |
| XAML Files | Disable | Windows Intune Baseline |
| Run .NET Framework-reliant components not signed with Authenticode | Enabled | Windows Intune Baseline |
| Run .NET Framework-reliant components not signed with Authenticode | Disable | Windows Intune Baseline |
| Allow only approved domains to use ActiveX controls without prompt | Enabled | Windows Intune Baseline |
| Only allow approved domains to use ActiveX controls without prompt | Enable | Windows Intune Baseline |
| Allow only approved domains to use the TDC ActiveX control | Enabled | Windows Intune Baseline |
| Only allow approved domains to use the TDC ActiveX control | Enable | Windows Intune Baseline |
| Allow scripting of Internet Explorer WebBrowser controls | Enabled | Windows Intune Baseline |
| Internet Explorer web browser control | Disable | Windows Intune Baseline |
| Allow script-initiated windows without size or position constraints | Enabled | Windows Intune Baseline |
| Allow script-initiated windows without size or position constraints | Disable | Windows Intune Baseline |
| Allow scriptlets | Enabled | Windows Intune Baseline |
| Scriptlets | Disable | Windows Intune Baseline |
| Turn on SmartScreen Filter scan | Enabled | Windows Intune Baseline |
| Use SmartScreen Filter | Enable | Windows Intune Baseline |
| Allow updates to status bar via script | Enabled | Windows Intune Baseline |
| Status bar updates via script | Disable | Windows Intune Baseline |
| Userdata persistence | Enabled | Windows Intune Baseline |
| Userdata persistence | Disable | Windows Intune Baseline |
| Allow VBScript to run in Internet Explorer | Enabled | Windows Intune Baseline |
| Allow VBScript to run in Internet Explorer | Disable | Windows Intune Baseline |
| Don't run antimalware programs against ActiveX controls | Enabled | Windows Intune Baseline |
| Don't run antimalware programs against ActiveX controls | Disable | Windows Intune Baseline |
| Download signed ActiveX controls | Enabled | Windows Intune Baseline |
| Download signed ActiveX controls | Disable | Windows Intune Baseline |
| Download unsigned ActiveX controls | Enabled | Windows Intune Baseline |
| Download unsigned ActiveX controls | Disable | Windows Intune Baseline |
| Turn on Cross-Site Scripting Filter | Enabled | Windows Intune Baseline |
| Turn on Cross-Site Scripting (XSS) Filter | Enable | Windows Intune Baseline |
| Enable dragging of content from different domains across windows | Enabled | Windows Intune Baseline |
| Enable dragging of content from different domains across windows | Disable | Windows Intune Baseline |
| Enable dragging of content from different domains within a window | Enabled | Windows Intune Baseline |
| Enable dragging of content from different domains within a window | Disable | Windows Intune Baseline |
| Turn on Protected Mode | Enabled | Windows Intune Baseline |
| Protected Mode | Enable | Windows Intune Baseline |
| Include local path when user is uploading files to a server | Enabled | Windows Intune Baseline |
| Include local directory path when uploading files to a server | Disable | Windows Intune Baseline |
| Initialize and script ActiveX controls not marked as safe | Enabled | Windows Intune Baseline |
| Initialize and script ActiveX controls not marked as safe | Disable | Windows Intune Baseline |
| Java permissions | Enabled | Windows Intune Baseline |
| Java permissions | Disable Java | Windows Intune Baseline |
| Launching applications and files in an IFRAME | Enabled | Windows Intune Baseline |
| Launching applications and files in an IFRAME | Disable | Windows Intune Baseline |
| Logon options | Enabled | Windows Intune Baseline |
| Logon options | Prompt for user name and password | Windows Intune Baseline |
| Navigate windows and frames across different domains | Enabled | Windows Intune Baseline |
| Navigate windows and frames across different domains | Disable | Windows Intune Baseline |
| Run .NET Framework-reliant components signed with Authenticode | Enabled | Windows Intune Baseline |
| Run .NET Framework-reliant components signed with Authenticode | Disable | Windows Intune Baseline |
| Show security warning for potentially unsafe files | Enabled | Windows Intune Baseline |
| Launching programs and unsafe files | Prompt | Windows Intune Baseline |
| Use Pop-up Blocker | Enabled | Windows Intune Baseline |
| Use Pop-up Blocker | Enable | Windows Intune Baseline |
| Don't run antimalware programs against ActiveX controls | Enabled | Windows Intune Baseline |
| Don't run antimalware programs against ActiveX controls | Disable | Windows Intune Baseline |
| Initialize and script ActiveX controls not marked as safe | Enabled | Windows Intune Baseline |
| Initialize and script ActiveX controls not marked as safe | Disable | Windows Intune Baseline |
| Java permissions | Enabled | Windows Intune Baseline |
| Java permissions | High safety | Windows Intune Baseline |
| Don't run antimalware programs against ActiveX controls | Enabled | Windows Intune Baseline |
| Don't run antimalware programs against ActiveX controls | Disable | Windows Intune Baseline |
| Java permissions | Enabled | Windows Intune Baseline |
| Java permissions | Disable Java | Windows Intune Baseline |
| Turn on SmartScreen Filter scan | Enabled | Windows Intune Baseline |
| Use SmartScreen Filter | Enable | Windows Intune Baseline |
| Java permissions | Enabled | Windows Intune Baseline |
| Java permissions | Disable Java | Windows Intune Baseline |
| Java permissions | Enabled | Windows Intune Baseline |
| Java permissions | Disable Java | Windows Intune Baseline |
| Turn on SmartScreen Filter scan | Enabled | Windows Intune Baseline |
| Use SmartScreen Filter | Enable | Windows Intune Baseline |
| Java permissions | Enabled | Windows Intune Baseline |
| Java permissions | Disable Java | Windows Intune Baseline |
| Java permissions | Enabled | Windows Intune Baseline |
| Java permissions | Disable Java | Windows Intune Baseline |
| Internet Explorer Processes | Enabled | Windows Intune Baseline |
| Internet Explorer Processes | Enabled | Windows Intune Baseline |
| Internet Explorer Processes | Enabled | Windows Intune Baseline |
| Prevent managing SmartScreen Filter | Enabled | Windows Intune Baseline |
| Select SmartScreen Filter mode | On | Windows Intune Baseline |
| Prevent per-user installation of ActiveX controls | Enabled | Windows Intune Baseline |
| Internet Explorer Processes | Enabled | Windows Intune Baseline |
| Remove "Run this time" button for outdated ActiveX controls in Internet Explorer | Enabled | Windows Intune Baseline |
| Internet Explorer Processes | Enabled | Windows Intune Baseline |
| Access data sources across domains | Enabled | Windows Intune Baseline |
| Access data sources across domains | Disable | Windows Intune Baseline |
| Allow active scripting | Enabled | Windows Intune Baseline |
| Allow active scripting | Disable | Windows Intune Baseline |
| Automatic prompting for file downloads | Enabled | Windows Intune Baseline |
| Automatic prompting for file downloads | Disable | Windows Intune Baseline |
| Allow binary and script behaviors | Enabled | Windows Intune Baseline |
| Allow Binary and Script Behaviors | Disable | Windows Intune Baseline |
| Allow cut, copy or paste operations from the clipboard via script | Enabled | Windows Intune Baseline |
| Allow paste operations via script | Disable | Windows Intune Baseline |
| Allow drag and drop or copy and paste files | Enabled | Windows Intune Baseline |
| Allow drag and drop or copy and paste files | Disable | Windows Intune Baseline |
| Allow file downloads | Enabled | Windows Intune Baseline |
| Allow file downloads | Disable | Windows Intune Baseline |
| Web sites in less privileged Web content zones can navigate into this zone | Enabled | Windows Intune Baseline |
| Web sites in less privileged Web content zones can navigate into this zone | Disable | Windows Intune Baseline |
| Allow loading of XAML files | Enabled | Windows Intune Baseline |
| XAML Files | Disable | Windows Intune Baseline |
| Allow META REFRESH | Enabled | Windows Intune Baseline |
| Allow META REFRESH | Disable | Windows Intune Baseline |
| Run .NET Framework-reliant components not signed with Authenticode | Enabled | Windows Intune Baseline |
| Run .NET Framework-reliant components not signed with Authenticode | Disable | Windows Intune Baseline |
| Allow only approved domains to use ActiveX controls without prompt | Enabled | Windows Intune Baseline |
| Only allow approved domains to use ActiveX controls without prompt | Enable | Windows Intune Baseline |
| Allow only approved domains to use the TDC ActiveX control | Enabled | Windows Intune Baseline |
| Only allow approved domains to use the TDC ActiveX control | Enable | Windows Intune Baseline |
| Allow scripting of Internet Explorer WebBrowser controls | Enabled | Windows Intune Baseline |
| Internet Explorer web browser control | Disable | Windows Intune Baseline |
| Allow script-initiated windows without size or position constraints | Enabled | Windows Intune Baseline |
| Allow script-initiated windows without size or position constraints | Disable | Windows Intune Baseline |
| Allow scriptlets | Enabled | Windows Intune Baseline |
| Scriptlets | Disable | Windows Intune Baseline |
| Turn on SmartScreen Filter scan | Enabled | Windows Intune Baseline |
| Use SmartScreen Filter | Enable | Windows Intune Baseline |
| Allow updates to status bar via script | Enabled | Windows Intune Baseline |
| Status bar updates via script | Disable | Windows Intune Baseline |
| Userdata persistence | Enabled | Windows Intune Baseline |
| Userdata persistence | Disable | Windows Intune Baseline |
| Allow VBScript to run in Internet Explorer | Enabled | Windows Intune Baseline |
| Allow VBScript to run in Internet Explorer | Disable | Windows Intune Baseline |
| Don't run antimalware programs against ActiveX controls | Enabled | Windows Intune Baseline |
| Don't run antimalware programs against ActiveX controls | Disable | Windows Intune Baseline |
| Download signed ActiveX controls | Enabled | Windows Intune Baseline |
| Download signed ActiveX controls | Disable | Windows Intune Baseline |
| Download unsigned ActiveX controls | Enabled | Windows Intune Baseline |
| Download unsigned ActiveX controls | Disable | Windows Intune Baseline |
| Turn on Cross-Site Scripting Filter | Enabled | Windows Intune Baseline |
| Turn on Cross-Site Scripting (XSS) Filter | Enable | Windows Intune Baseline |
| Enable dragging of content from different domains across windows | Enabled | Windows Intune Baseline |
| Enable dragging of content from different domains across windows | Disable | Windows Intune Baseline |
| Enable dragging of content from different domains within a window | Enabled | Windows Intune Baseline |
| Enable dragging of content from different domains within a window | Disable | Windows Intune Baseline |
| Include local path when user is uploading files to a server | Enabled | Windows Intune Baseline |
| Include local directory path when uploading files to a server | Disable | Windows Intune Baseline |
| Initialize and script ActiveX controls not marked as safe | Enabled | Windows Intune Baseline |
| Initialize and script ActiveX controls not marked as safe | Disable | Windows Intune Baseline |
| Java permissions | Enabled | Windows Intune Baseline |
| Java permissions | Disable Java | Windows Intune Baseline |
| Launching applications and files in an IFRAME | Enabled | Windows Intune Baseline |
| Launching applications and files in an IFRAME | Disable | Windows Intune Baseline |
| Logon options | Enabled | Windows Intune Baseline |
| Logon options | Anonymous logon | Windows Intune Baseline |
| Navigate windows and frames across different domains | Enabled | Windows Intune Baseline |
| Navigate windows and frames across different domains | Disable | Windows Intune Baseline |
| Run ActiveX controls and plugins | Enabled | Windows Intune Baseline |
| Run ActiveX controls and plugins | Disable | Windows Intune Baseline |
| Run .NET Framework-reliant components signed with Authenticode | Enabled | Windows Intune Baseline |
| Run .NET Framework-reliant components signed with Authenticode | Disable | Windows Intune Baseline |
| Script ActiveX controls marked safe for scripting | Enabled | Windows Intune Baseline |
| Script ActiveX controls marked safe for scripting | Disable | Windows Intune Baseline |
| Scripting of Java applets | Enabled | Windows Intune Baseline |
| Scripting of Java applets | Disable | Windows Intune Baseline |
| Show security warning for potentially unsafe files | Enabled | Windows Intune Baseline |
| Launching programs and unsafe files | Disable | Windows Intune Baseline |
| Turn on Protected Mode | Enabled | Windows Intune Baseline |
| Protected Mode | Enable | Windows Intune Baseline |
| Use Pop-up Blocker | Enabled | Windows Intune Baseline |
| Use Pop-up Blocker | Enable | Windows Intune Baseline |
| Internet Explorer Processes | Enabled | Windows Intune Baseline |
| Internet Explorer Processes | Enabled | Windows Intune Baseline |
| Security Zones: Use only machine settings | Enabled | Windows Intune Baseline |
| Specify use of ActiveX Installer Service for installation of ActiveX controls | Enabled | Windows Intune Baseline |
| Don't run antimalware programs against ActiveX controls | Enabled | Windows Intune Baseline |
| Don't run antimalware programs against ActiveX controls | Disable | Windows Intune Baseline |
| Initialize and script ActiveX controls not marked as safe | Enabled | Windows Intune Baseline |
| Initialize and script ActiveX controls not marked as safe | Disable | Windows Intune Baseline |
| Java permissions | Enabled | Windows Intune Baseline |
| Java permissions | High safety | Windows Intune Baseline |
| PK Init Hash Algorithm Configuration | Enabled | Windows Intune Baseline |
| PK Init Hash Algorithm SHA1 | Not Supported | Windows Intune Baseline |
| PK Init Hash Algorithm SHA256 | Supported | Windows Intune Baseline |
| PK Init Hash Algorithm SHA384 | Supported | Windows Intune Baseline |
| PK Init Hash Algorithm SHA512 | Supported | Windows Intune Baseline |
| Audit Client Does Not Support Encryption | Enabled | Windows Intune Baseline |
| Audit Client Does Not Support Signing | Enabled | Windows Intune Baseline |
| Audit Insecure Guest Logon | Enabled | Windows Intune Baseline |
| Auth Rate Limiter Delay In Ms | 2000 | Windows Intune Baseline |
| Enable Auth Rate Limiter | Enabled | Windows Intune Baseline |
| Enable Mailslots | Disabled | Windows Intune Baseline |
| Max Smb2 Dialect | SMB 3.1.1 | Windows Intune Baseline |
| Min Smb2 Dialect | SMB 3.0.0 | Windows Intune Baseline |
| Audit Insecure Guest Logon | Enabled | Windows Intune Baseline |
| Audit Server Does Not Support Encryption | Enabled | Windows Intune Baseline |
| Audit Server Does Not Support Signing | Enabled | Windows Intune Baseline |
| Enable Mailslots | Disabled | Windows Intune Baseline |
| Max Smb2 Dialect | SMB 3.1.1 | Windows Intune Baseline |
| Min Smb2 Dialect | SMB 3.0.0 | Windows Intune Baseline |
| Require Encryption | Disabled | Windows Intune Baseline |
| Accounts Enable Guest Account Status | Disable | CIS (L1) Local Policies Security Options (49) - Windows 11 Intune 4.0.0  |
| Accounts Rename Administrator Account | Admin | CIS (L1) Local Policies Security Options (49) - Windows 11 Intune 4.0.0  |
| Accounts Rename Guest Account | Gtest | CIS (L1) Local Policies Security Options (49) - Windows 11 Intune 4.0.0  |
| Interactive Logon Do Not Display Last Signed In | Enabled (username will not be shown) | CIS (L1) Local Policies Security Options (49) - Windows 11 Intune 4.0.0  |
| Interactive Logon Do Not Require CTRLALTDEL | Disabled | CIS (L1) Local Policies Security Options (49) - Windows 11 Intune 4.0.0  |
| Interactive Logon Message Text For Users Attempting To Log On | Insert text here | CIS (L1) Autopilot - Windows 11 Intune 4.0.0 |
| Interactive Logon Message Title For Users Attempting To Log On | Enter title here | CIS (L1) Autopilot - Windows 11 Intune 4.0.0 |
| Microsoft Network Client Digitally Sign Communications If Server Agrees | Enable | CIS (L1) Local Policies Security Options (49) - Windows 11 Intune 4.0.0  |
| Microsoft Network Server Digitally Sign Communications If Client Agrees | Enable | CIS (L1) Local Policies Security Options (49) - Windows 11 Intune 4.0.0  |
| Network Security Allow Local System To Use Computer Identity For NTLM | Allow | CIS (L1) Local Policies Security Options (49) - Windows 11 Intune 4.0.0  |
| Network Security Allow PKU2U Authentication Requests | Block | CIS (L1) Local Policies Security Options (49) - Windows 11 Intune 4.0.0  |
| Network Security Restrict NTLM Audit Incoming NTLM Traffic | Enable auditing for all accounts | CIS (L1) Local Policies Security Options (49) - Windows 11 Intune 4.0.0  |
| User Account Control Switch To The Secure Desktop When Prompting For Elevation | Enabled | CIS (L1) Local Policies Security Options (49) - Windows 11 Intune 4.0.0  |
| Allow Custom SSPs and APs to be loaded into LSASS | Disabled | Windows Intune Baseline |
| Prevent bypassing Microsoft Defender SmartScreen prompts for sites | Enabled | Windows Intune Baseline |
| Configure Microsoft Defender SmartScreen | Enabled | Windows Intune Baseline |
| WDigest Authentication (disabling may require KB2871997) | Disabled | CIS (L1) Section 1 - 4.9.1.1 - Windows 11 Intune 4.0.0  |
| Allow widgets | Not allowed. | CIS (L1) Section 15 - 104 - Windows 11 Intune 4.0.0 |
| Allow standby states (S1-S3) when sleeping (on battery) | Disabled | Windows Intune Baseline |
| Allow standby states (S1-S3) when sleeping (plugged in) | Disabled | Windows Intune Baseline |
| Point and Print Restrictions | Enabled | CIS (L1) Section 1 - 4.9.1.1 - Windows 11 Intune 4.0.0  |
| When installing drivers for a new connection: (Device) | Show warning and elevation prompt | CIS (L1) Section 1 - 4.9.1.1 - Windows 11 Intune 4.0.0  |
| When updating drivers for an existing connection: (Device) | Show warning and elevation prompt | CIS (L1) Section 1 - 4.9.1.1 - Windows 11 Intune 4.0.0  |
| Users can only point and print to machines in their forest (Device) | False | CIS (L1) Section 1 - 4.9.1.1 - Windows 11 Intune 4.0.0  |
| Users can only point and print to these servers: (Device) | False | CIS (L1) Section 1 - 4.9.1.1 - Windows 11 Intune 4.0.0  |
| Enter fully qualified server names separated by semicolons (Device) |  | CIS (L1) Section 1 - 4.9.1.1 - Windows 11 Intune 4.0.0  |
| Allow Input Personalization | Block | CIS (L1) Section 15 - 104 - Windows 11 Intune 4.0.0 |
| Configure Offer Remote Assistance | Disabled | CIS (L1) Admin Templates - System (4.10) - Windows 11 Intune 4.0.0 |
| Enable RPC Endpoint Mapper Client Authentication | Enabled | CIS (L1) Admin Templates - System (4.10) - Windows 11 Intune 4.0.0 |
| Allow Search To Use Location | Block | CIS (L1) Section 15 - 104 - Windows 11 Intune 4.0.0 |
| Enable Smart Screen In Shell | Enabled | Windows Intune Baseline |
| Prevent Override For Files In Shell | Enabled | Windows Intune Baseline |
| Allow Telemetry | Basic | CIS (L1) Section 15 - 104 - Windows 11 Intune 4.0.0 |
| Enable One Settings Auditing | Enabled. | CIS (L1) Section 15 - 104 - Windows 11 Intune 4.0.0 |
| Limit Diagnostic Log Collection | Enabled. | CIS (L1) Section 15 - 104 - Windows 11 Intune 4.0.0 |
| Limit Dump Collection | Enabled. | CIS (L1) Section 15 - 104 - Windows 11 Intune 4.0.0 |
| Configure Xbox Accessory Management Service Startup Mode | Disabled | Windows Intune Baseline |
| Configure Xbox Live Auth Manager Service Startup Mode | Disabled | Windows Intune Baseline |
| Configure Xbox Live Game Save Service Startup Mode | Disabled | Windows Intune Baseline |
| Configure Xbox Live Networking Service Startup Mode | Disabled | Windows Intune Baseline |
| Enable Xbox Game Save Task | Disabled | Windows Intune Baseline |
| Allow Auto Update | Auto install and restart. Updates are downloaded automatically on non-metered networks and installed during "Automatic Maintenance" when the device is not in use and is not running on battery power. If automatic maintenance is unable to install updates for two days, Windows Update will install updates right away. If a restart is required, then the device is automatically restarted when the device is not actively being used. This is the default behavior for unmanaged devices. Devices are updated quickly, but it increases the risk of accidental data loss caused by an application that does not shutdown properly on restart. | CIS (L1) Windows Update (103) - Windows 11 Intune 4.0.0  |
| Defer Feature Updates Period In Days | 180 | CIS (L1) Windows Update (103) - Windows 11 Intune 4.0.0  |
| Defer Quality Updates Period (Days) | 0 | CIS (L1) Windows Update (103) - Windows 11 Intune 4.0.0  |
| Manage Preview Builds | Disable Preview builds | CIS (L1) Windows Update (103) - Windows 11 Intune 4.0.0  |
| Scheduled Install Day | Every day | CIS (L1) Windows Update (103) - Windows 11 Intune 4.0.0  |
| Block "Pause Updates" ability | Block | CIS (L1) Windows Update (103) - Windows 11 Intune 4.0.0  |
| Access Credential Manager As Trusted Caller | (<![CDATA[]]>) | CIS (L1) User Rights (89) - Windows 11 Intune 4.0.0 |
| Act As Part Of The Operating System | (<![CDATA[]]>) | CIS (L1) User Rights (89) - Windows 11 Intune 4.0.0 |
| Change System Time | *S-1-5-32-544; *S-1-5-19 | CIS (L1) User Rights (89) - Windows 11 Intune 4.0.0 |
| Create Permanent Shared Objects | (<![CDATA[]]>) | CIS (L1) User Rights (89) - Windows 11 Intune 4.0.0 |
| Create Symbolic Links | *S-1-5-32-544 | CIS (L1) User Rights (89) - Windows 11 Intune 4.0.0 |
| Create Token | (<![CDATA[]]>) | CIS (L1) User Rights (89) - Windows 11 Intune 4.0.0 |
| Deny Local Log On | *S-1-5-32-546 | CIS (L1) User Rights (89) - Windows 11 Intune 4.0.0 |
| Deny Log On As Batch Job | *S-1-5-32-546 | CIS (L1) User Rights (89) - Windows 11 Intune 4.0.0 |
| Deny Log On As Service | *S-1-5-32-546 | CIS (L1) User Rights (89) - Windows 11 Intune 4.0.0 |
| Enable Delegation | (<![CDATA[]]>) | CIS (L1) User Rights (89) - Windows 11 Intune 4.0.0 |
| Generate Security Audits | *S-1-5-19; *S-1-5-20 | CIS (L1) User Rights (89) - Windows 11 Intune 4.0.0 |
| Increase Scheduling Priority | *S-1-5-32-544; *S-1-5-90-0 | CIS (L1) User Rights (89) - Windows 11 Intune 4.0.0 |
| Lock Memory | (<![CDATA[]]>) | CIS (L1) User Rights (89) - Windows 11 Intune 4.0.0 |
| Modify Object Label | (<![CDATA[]]>) | CIS (L1) User Rights (89) - Windows 11 Intune 4.0.0 |
| Profile System Performance | *S-1-5-32-544; *S-1-5-80 | CIS (L1) User Rights (89) - Windows 11 Intune 4.0.0 |
| Replace Process Level Token | *S-1-5-19; *S-1-5-20 | CIS (L1) User Rights (89) - Windows 11 Intune 4.0.0 |
| Shut Down The System | *S-1-5-32-544; *S-1-5-32-545 | CIS (L1) User Rights (89) - Windows 11 Intune 4.0.0 |
| Require UEFI Memory Attributes Table | Require UEFI Memory Attributes Table | CIS (L1) Section 15 - 104 - Windows 11 Intune 4.0.0 |
| Allow Internet Sharing | Block | Windows Intune Baseline |
| Disallow Exploit Protection Override | (Enable) Local users cannot make changes in the exploit protection settings area. | CIS (L1) Defender - Windows 11 Intune 4.0.0 |
| Turn off app notifications on the lock screen | Enabled | CIS (L1) Admin Templates - System (4.10) - Windows 11 Intune 4.0.0 |
| Do not display network selection UI | Enabled | CIS (L1) Admin Templates - System (4.10) - Windows 11 Intune 4.0.0 |
| Enumerate local users on domain-joined computers | Disabled | CIS (L1) Admin Templates - System (4.10) - Windows 11 Intune 4.0.0 |
| Turn on PowerShell Script Block Logging | Enabled | Windows Intune Baseline |
| Log script block invocation start / stop events: | False | Windows Intune Baseline |
| Allow Clipboard Redirection | Not allowed. | CIS (L1) Section 15 - 104 - Windows 11 Intune 4.0.0 |
| Allow Networking | Not allowed. | CIS (L1) Section 15 - 104 - Windows 11 Intune 4.0.0 |
| Require Pin For Pairing | Pairing ceremony for new devices will always require a PIN | CIS (L1) Section 15 - 104 - Windows 11 Intune 4.0.0 |
| User-scoped settings |  | CIS (L1) Device Lock & WHFB - Windows 11 Intune 4.0.0  |
| Require Security Device (User) | true | CIS (L1) Device Lock & WHFB - Windows 11 Intune 4.0.0  |
| Prevent users from sharing files within their profile. (User) | Enabled | CIS (L1) Admin Templates - Windows Components (4.11) - Windows 11 Intune 4.0.0 |
| MSI Always Install With Elevated Privileges (User) | Disabled | CIS (L1) Section 15 - 104 - Windows 11 Intune 4.0.0 |
| Do not preserve zone information in file attachments (User) | Disabled | CIS (L1) Admin Templates - Windows Components (4.11) - Windows 11 Intune 4.0.0 |
| Notify antivirus programs when opening attachments (User) | Enabled | CIS (L1) Admin Templates - Windows Components (4.11) - Windows 11 Intune 4.0.0 |
| Allow Spotlight Collection (User) | 0 | CIS (L1) Section 15 - 104 - Windows 11 Intune 4.0.0 |
| Allow Third Party Suggestions In Windows Spotlight (User) | Block | Windows Intune Baseline |
| Allow Windows Spotlight (User) | Allow | Windows Intune Baseline |
| Turn on the auto-complete feature for user names and passwords on forms (User) | Disabled | Windows Intune Baseline |
| Default Outbound Action | Allow | Windows Intune Baseline |
| Log File Path | %systemroot%\system32\LogFiles\Firewall\domainfw.log | CIS (L1) Firewall (38) - Windows 11 Intune 4.0.0  |
| Default Outbound Action | Allow | Windows Intune Baseline |
| Log File Path | %systemroot%\system32\LogFiles\Firewall\privatefw.log | CIS (L1) Firewall (38) - Windows 11 Intune 4.0.0  |
| Default Outbound Action | Allow | Windows Intune Baseline |
| Log File Path | %systemroot%\system32\LogFiles\Firewall\publicfw.log | CIS (L1) Firewall (38) - Windows 11 Intune 4.0.0  |


