# Microsoft Powershell Profile

Alias (or add) all files to your local user (host) profile.
- Windows
  - PowerShell 5.1 -- `$HOME/Documents/WindowsPowerShell/Microsoft.PowerShell_profile.ps1`.
  - PowerShell 7 -- `$HOME/Documents/PowerShell/Microsoft.PowerShell_profile.ps1`
- macOS -- `~/.config/powershell/Microsoft.PowerShell_profile.ps1`

```powershell
cmd /c mklink /path/to/symlink/Microsoft.PowerShell_profile.ps1 /path/to/Microsoft.PowerShell_profile.ps1
# And so on for each file sourced by the Microsoft.PowerShell_profile.ps1
```

## .powershell.d

- External packages
    - [posh-git](https://github.com/dahlbyk/posh-git)

