### ssh (Secure Shell)

- `ssh <username>@<ip_address>` connecting through secure shell with the **username** to the instance that has the **ip_address**.
- `exit` command will close `ssh` connection.
- `/etc/os-release` file will show the OS details.

### scp (Secure Copy)

- `scp <source> <target>:<path>` will copy file to the target <br>
Ex; `scp ~/script.sh root@138.25.34.26:~/` will copy local `~/script.sh` to `root@138.25.34.26:~/` <br>
Ex2; you can do vice versa `scp root@138.25.34.26:~/ip.txt ~/`
