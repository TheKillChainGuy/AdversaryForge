# TEST 1: TTP Details

- Tactic = Lateral Movement 
- TID = T1021.002 
- Technique Name = Remote Services: SMB/Windows Admin Shares 
- Procedure = Remote Service Creation using PsExec 

## Simulation and Execution

This test simulates an attacker using the open-source Impacket toolkit to perform lateral movement within the network by leveraging credentials and executing remote commands using the psexec.py module. The following steps are performed:

Installation of Impacket:

Command: `pip install impacket`

Installs the Impacket library, which provides a collection of Python classes for working with network protocols used by adversaries in post-exploitation phases.

Execution of PsExec:

Command: `psexec.py administrator@192.168.1.29 -command "whoami"`

This command initiates an authenticated session to the remote host 192.168.1.29 using provided domain credentials and executes the whoami command to confirm access.

The purpose of this test is to emulate how attackers utilize credentialed access and administrative tools to move laterally and execute commands on remote systems without using traditional Windows utilities.
