Pre-requisites:
1. Install and configure AWS CLI.
2. Install Terraform.
3. Navigate to the project folder and enter <i>terraform init</i>.
4. Change 0_variables.tf file contents based on your needs.

Bootstrap a simple ubuntu Jenkins server with one simple command:
<i>terraform apply</i>

To use Jenkins WEB-UI enter the following in your browser:
<i>{server_ip}:8080</i>

To SSH into your server enter the following in your terminal:
<i>ssh -p 443 -i "{your_key_file_name}" ubuntu@{server_ip}</i>

To get the initial Jenkins password:
1. SSH into your server
2. Enter <i>sudo cat {directory_shown_in_web_ui}</i>