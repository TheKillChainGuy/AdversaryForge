# TEST 1: TTP Details

Tactic = Exfiltration  
TID = T1486 
Technique Name = Exfiltration Over Web Service: Exfiltration to Cloud Storage 
Procedure = WhatsApp exfiltration 

## Simulation and Execution

This test simulates the use of a legitimate communication platform (WhatsApp Web) to exfiltrate sensitive data from an endpoint using automated browser interaction. The method leverages Selenium WebDriver to control a Chrome browser instance, mimicking user behaviour to upload and send a file to a designated contact via WhatsApp Web.

By using web-based exfiltration over HTTPS, this technique bypasses traditional email or file-sharing detection mechanisms, particularly if no DLP (Data Loss Prevention) controls are applied to web-based messaging platforms.

Execution Flow:
1.	Environment Setup:
o	Install Selenium (`pip install selenium`)
o	Download and configure the ChromeDriver compatible with the local Chrome version.
o	Place the target data file locally on the attack system.

2.	Script Execution:
o	The Python script opens WhatsApp Web in a Chrome browser instance.
o	After manual QR login, it searches for a specific contact.
o	It clicks the attachment icon, uploads the specified file, and sends it to the contact.

