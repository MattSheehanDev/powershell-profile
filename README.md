# Microsoft Powershell 7 Profile

Alias (or add) all files to your local user (host) profile.
- Windows
  - PowerShell 7 -- `$HOME/Documents/PowerShell/Microsoft.PowerShell_profile.ps1`
  - PowerShell 5.1 -- `$HOME/Documents/WindowsPowerShell/Microsoft.PowerShell_profile.ps1`.
- macOS -- `~/.config/powershell/Microsoft.PowerShell_profile.ps1`

Additional Microsoft [Documentation](https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_profiles?view=powershell-7.1) about Powershell profiles

## Setup

- Run `initSetup.ps1` from an Administrator PowerShell 7 shell to symlink to the OS profile directory.


### .powershell.d

- External packages
    - [posh-git](https://github.com/dahlbyk/posh-git)
    - [ZLocation](https://github.com/vors/ZLocation)


### Miniconda

- If you have Miniconda installed, don't forget `conda init` after installation to update `profile.ps1`.

