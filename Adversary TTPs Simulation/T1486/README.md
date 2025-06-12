# TEST 1: TTP Details

- Tactic = Encryption 
- TID = T1486 
- Technique Name = Data Encrypted for Impact 
- Procedure = Cipher for native Windows file encryption (EFS) 

## Simulation and Execution
This test simulates stealth ransomware-like behavior using native Windows tools in order to assess the detection and prevention capabilities of endpoint protection systems against living-off-the-land encryption tactics. This test specifically avoids third-party or overt ransomware binaries, making it harder to detect.

Deploy and execute the `Cipher.bat` batch script on the test machine.


# TEST 2: TTP Details

- Tactic = Encryption 
- TID = T1486 
- Technique Name = Data Encrypted for Impact 
- Procedure = Certutil for Encryption 

## Simulation and Execution

This test simulates a file encryption scenario using a native Windows utility (certutil.exe) for Base64 encoding. The objective is to assess the security solution’s ability to detect misuse of certutil for stealthy data transformation and simulate behavior similar to ransomware groups using non-executable methods.

Deploy and execute the `Certutil.ps1` batch script on the test machine.
