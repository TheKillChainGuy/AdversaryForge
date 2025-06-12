# TEST 1: TTP Details

- Tactic = Lateral Movement 
- TID = T1047 
- Technique Name = Windows Management Instrumentation 
- Procedure = WMI Remote command  

## Simulation and Execution

This test simulates an attacker leveraging Windows Management Instrumentation (WMI) to remotely execute a command on a target host. Using the native wmic command-line utility, you will issues a remote process creation request:

Command: `wmic /node: "HOSTNAME" process call create "cmd.exe /c whoami"`

This command initiates a non-interactive session on the target system, executing the whoami command to retrieve the currently logged-in user context.

The objective of this test is to evaluate detection, logging, and response mechanisms related to WMI-based lateral movement—a technique frequently used by advanced threat actors to blend into legitimate administrative traffic and bypass traditional defenses.
