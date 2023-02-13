This script uses the who command with the -q option to list the number of users currently logged in, and the grep and awk commands to extract the number of active SSH sessions. 
The script then checks if the number of active SSH sessions is equal to 0 and, if so, continues with the rest of the shutdown procedure. 
If there are active SSH sessions, the script will keep looping until either the load average is greater than 2 or the duration has passed and there are no active SSH sessions, at which point the server will be shut down.

To run this script using cron, you can add the following line to your crontab file:


```
0 * * * * /path/to/script.sh

```

To run this script using cron, you can add the following line to your crontab file:

```
0 * * * * /path/to/script.sh
```

This line will run the script every hour, at the 0th minute. To edit your crontab file, you can run the following command:

```
crontab -e
```

This will open the crontab file in your default text editor, where you can add the line above and save the file. 
The crontab file is used to configure cron jobs, which are scheduled tasks that run at specific times or intervals. The format of each line in the crontab file is as follows:

```
* * * * * command
```

Where the first 5 fields represent the minute (0-59), hour (0-23), day of the month (1-31), month (1-12), and day of the week (0-7, where both 0 and 7 represent Sunday) at which the command should run, respectively. The * wildcard character can be used to match any value.

In this case, the line 0 * * * * /path/to/script.sh will run the script at the 0th minute of every hour.