# Site-Check
A script that checks a for errors and vulnerability 
This script assumes you have nmap installed on the system you are runnug it from. If you do not have nmap installed simply run 

For Ubuntu:
''' sudo apt-get install nmap '''

For CentOs or Redhat:
''' sudo apt-get install nmap '''

After you have installed nmap upload the file to your server, and navigate to it's location run the below command to give the file proper permissions. 

''' sudo chmod 750 Domain_info.sh ''' 

Now you are read to check some sites! Navigate to the files directory run the below command to get started. 

''' ./Domain_info.sh '''
