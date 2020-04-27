# Microsoft Powershell Profile

Alias (or add) all files to your local user (host) profile.
- Windows -- `$HOME/Documents/WindowsPowerShell/Microsoft.Powershell_profile.ps1`.
- macOS -- `~/.config/powershell/Microsoft.Powershell_profile.ps1`

```powershell
cmd /c mklink /path/to/symlink/Microsoft.Powershell_profile.ps1 /path/to/Microsoft.Powershell_profile.ps1
# And so on for each file sourced by the Microsoft.Powershell_profile.ps1
```

