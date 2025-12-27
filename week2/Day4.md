
---

## 🧪 `day4.md`

```markdown
# Day 4 – Harden the Server

## 🔥 Set up UFW Firewall

```bash
sudo ufw enable
sudo ufw default deny incoming
sudo ufw default allow outgoing
sudo ufw allow OpenSSH
sudo ufw status verbose > ufw-rules.txt
