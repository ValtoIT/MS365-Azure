# Send-basic-email

This playbook will be sending email with basic incidents details (Incident title, severity, tactics, link,…) when incident is created in Azure Sentinel.
<br/><br/>
## Pre-requisites:
An O365 account to be used to send email notification 
(The user account will be used in O365 connector (Send an email).)
<br/><br/>
## Deployment:

<a href="https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2FValtoIT%2FMS365-Azure%2Fmain%2FAzure%2520ARM%2520Templates%2FAzure-Sentinel%2FAlerts%2FEmail%2520Alerts%2FAZ-Sentinel-Email-Alerts.json" target="_blank">
    <img src="https://aka.ms/deploytoazurebutton"/>
</a>


## Post-deployment

### Configure connections
Edit the Logic App or go to Logic app designer.<br/>
Expand “Send an email with Incident details” and fix this connector by adding a new connection or signing-in to marked one with user that has mailbox.<br/>
Note:  Email sent with this playbook will be from user that creates connection!<br/><br/>

### Attach the playbook
After deployment, attach this playbook to an automation rule so it runs when the incident is created.
[Learn more about automation rules](https://docs.microsoft.com/azure/sentinel/automate-incident-handling-with-automation-rules#creating-and-managing-automation-rules)<br/>
Note: Playbook is disabled by default. Please enable it before assigning to the Automation rule!
<br/><br/>
## Screenshot
### Playbook screenshoot
![Playbook](./images/LightPlaybook_Send-basic-email.png)
![Playbook](./images/DarkPlaybook_Send-basic-email.png)
### Email screenshot
![Email](./images/LightEmail_Send-basic-email.png)
![Email](./images/DarkEmail_Send-basic-email.png)
