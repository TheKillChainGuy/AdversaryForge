# TEST 1: TTP Details

- Tactic = Lateral Movement 
- TID = T1053.005 
- Technique Name = Scheduled Task/Job: Scheduled Task 
- Procedure = Scheduled Tasks (Remote) command 

## Simulation and Execution

This test simulates an adversary leveraging remote scheduled tasks to execute malicious or reconnaissance commands on a target system. Using the native Windows utility schtasks.exe, the CTI team creates a one-time task remotely on the victim host (/s TARGET) that executes the whoami command via cmd.exe at a specified time.

The goal of this test is to evaluate detection and response capabilities around remote task creation, which is a common lateral movement and persistence technique used by ransomware operators and APT groups. The task itself is benign, but the method simulates how adversaries could use built-in system tools to bypass security controls.

Command: `schtasks /create /s 136486-P14s /u CORP\P2 / p XXXX /tn "CorpITTaskSc" /tr "cmd.exe /c whoami" /sc once /st 12:00`
