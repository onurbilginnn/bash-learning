### Scheduling Tasks with "at" command

- On Ubuntu should install `at` command -> ```sudo apt install at```, then start `at` daemon `atd`
- ```at 9:30am``` will open `at` command line, and will run every script you write at nearest 9:30am
- ```at -l``` will list all the scheduled jobs id
- ```at -r <jobid>``` will remove the scheduled job
- ```at -f <script_file> 9:30am``` will run the script file on 9:30am
- ```at 9am Monday -f <script_file>``` will run script on next Monday 9am
- ```at 9am 12/23/2025 -f <script_file>``` will run script on 23 Dec 2025 9am
- ```at 9am 23.12.2025 -f <script_file>``` will run script on 23 Dec 2025 9am
- ```at 9am tomorrow -f <script_file>``` will run script on tomorrow 9am
- ```at 9am next week -f <script_file>``` will run script on next week 9am
- ```at now + 5 minutes -f <script_file>``` will run script after 5 minutes from now
- ```at now + 2 days -f <script_file>``` will run script after 2 days from now

### CRON Service

- ```sudo service cron start``` if cron service not running
- ```crontab -e``` for editing cron
- in crontab there is six columns information ```m h dom mon dow command``` -> m=minute (0-59), h=hour (0-23), dom=day of the month, mon=month, dow=day of the week, and command you want to run in cron
- Every column seperated by space, but not important how much space
- You can use comma `,` in order to enter **multiple values** for one column
- You can use comma `-` in order to enter **range of values** for one column
- ```*``` represents all minutes, hours etc
- Month, day values could be in numbers or 3 lettered uppercase words -> MON, SAT, JAN, DEC etc..
- ```sudo nano /etc/crontab``` same as ```crontab -e``` command but additionally you can add user for configured crons.
- cron monitoring system is not very good, it is good to use extensions for monitoring

#### Crontab.guru

- You can use [crontab.guru](https://crontab.guru) site in order to create crontab schedules easily.

#### Cron Directories

Cron directories are folders on your system where you can place scripts to run at a particular frequency

- ```./etc``` directory holds cron directories on Linux
- ```ls /etc | grep cron``` shows cron based directories
```diff
+ cron.d
+ cron.daily
+ cron.hourly
+ cron.monthly
+ cron.weekly
+ crontab
```
- ```sudo nano /etc/crontab``` you can see the directory info in this file
- If you put a script file in `cron.weekly` directory, this script will run on every week
- When adding script files in cron directories, you should **remove** `.sh` part of the file, because `run-parts` command requirement.
- You can see the configuration expressions in `/etc/crontab` file.
- It is not a good practice to run every script with `root` user.
- We can create our own cron directory and configuring it running `crontab -e`
```
mkdir cron.daily.2am
crontab -e
```
- crontab file add line ```00 02 * * * run-parts ~/cron.daily.2am --report```
