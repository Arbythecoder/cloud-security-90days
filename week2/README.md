# 🔐 Week 2 – Local Hardening + Attack Surface Simulation

## 🧠 Goal:
This week focused on securing a local Linux machine using simple tools like **UFW**, **Fail2Ban**, and **SSH hardening**. These tools are also used on cloud servers (like AWS EC2) for real-world security.

---

## 🔨 What I Did:

### ✅ Day 1 – Enable the Firewall (UFW)
Ubuntu includes a built-in firewall called UFW (Uncomplicated Firewall).

```bash
sudo ufw enable
This blocks unwanted access by default and keeps only trusted ports open, such as SSH.

---

### ✅ Day 2 – Install and Start Fail2Ban

Fail2Ban automatically blocks brute-force login attempts (like hackers guessing your password).

```bash
sudo apt update
sudo apt install fail2ban
```

Then I copied the config file:

```bash
sudo cp /etc/fail2ban/jail.conf /etc/fail2ban/jail.local
```

And restarted the service:

```bash
sudo systemctl restart fail2ban
```

---

### ✅ Day 3 – Monitor Login Attempts

To check if Fail2Ban is working:

```bash
sudo fail2ban-client status
```

Output should look like this:

```
Status
|- Number of jail: 1
`- Jail list: sshd
```

This confirms that Fail2Ban is monitoring SSH login attempts.

---

### ✅ Day 4 – Disable SSH Root Login

I opened the SSH configuration file:

```bash
sudo nano /etc/ssh/sshd_config
```

Then changed this line:

```
PermitRootLogin no
```

This blocks root login over SSH. 🔒

✅ *Note:* If you're using **WSL**, restarting SSH won't work. Just skip this part:

```bash
sudo systemctl restart ssh
```

---

### ✅ Day 5 – Reflection

This week taught me:

* Why a firewall is essential on all systems
* How brute-force SSH logins work and how to block them
* What `jail.conf` and `sshd_config` files do
* That these local security steps apply to cloud servers too

---

## 📚 Resources I Used:

* [UFW Docs](https://help.ubuntu.com/community/UFW)
* [Fail2Ban Docs](https://www.fail2ban.org/wiki/index.php/Main_Page)
* [Ubuntu SSH Hardening Guide](https://ubuntu.com/server/docs/security-hardening)

---

## 🧪 Mini Project – Local Server Hardening

Simulate a secure server with:

* UFW enabled
* Fail2Ban active and banning IPs
* Root login over SSH disabled

