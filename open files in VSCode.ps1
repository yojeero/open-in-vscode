
# =========  CONFIG  ===========

# Path to VS Code
$VSCodePath = "$env:LOCALAPPDATA\Programs\Microsoft VS Code\Code.exe"

# Extensions to associate with VS Code
$Extensions = @(
    ".c", 
    ".c++", 
    ".clj", 
    ".cpp", 
    ".cs", 
    ".css", 
    ".dart", 
    ".ex", 
    ".go", 
    ".h", 
    ".java", 
    ".js", 
    ".json", 
    ".kt", 
    ".md"
    ".php", 
    ".rb", 
    ".rs", 
    ".scala", 
    ".sml", 
    ".swift", 
    ".ts", 
    ".yml", 
)

# =========  FUNCTIONS  ===========

function Register-VSCodeAssociation($Ext, $ProgId, $VSCodePath) {

    # Create ProgID description
    New-Item -Path "HKCU:\Software\Classes\$ProgId" -Force | Out-Null
    Set-ItemProperty -Path "HKCU:\Software\Classes\$ProgId" -Name "(default)" -Value "Visual Studio Code File" -Force

    # Create shell\open\command
    $CommandPath = "HKCU:\Software\Classes\$ProgId\shell\open\command"
    New-Item -Path $CommandPath -Force | Out-Null
    Set-ItemProperty -Path $CommandPath -Name "(default)" -Value "`"$VSCodePath`" `"%1`"" -Force

    # Assign extension to ProgID
    New-Item -Path "HKCU:\Software\Classes\$Ext" -Force | Out-Null
    Set-ItemProperty -Path "HKCU:\Software\Classes\$Ext" -Name "(default)" -Value $ProgId -Force

    Write-Host "Associated $Ext with VS Code"
}

# =========  MAIN  ===========

foreach ($Ext in $Extensions) {
    $ProgId = "VSCode$($Ext.TrimStart('.').ToUpper())"
    Register-VSCodeAssociation -Ext $Ext -ProgId $ProgId -VSCodePath $VSCodePath
}

Write-Host "`nFile associations created successfully."
Write-Host "You may need to log out and back in for changes to take effect."
