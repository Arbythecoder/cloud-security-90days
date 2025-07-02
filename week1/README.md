# 📦 Week 1: Linux Terminal, Users & Permissions

## 🧠 Day 1–2: Study
### Resources I Used:
- [Linux Journey – Users & Permissions](https://linuxjourney.com)
- [Explainshell](https://explainshell.com)
- `man chmod`, `man sudo`
- [The Art of Command Line](https://github.com/jlevy/the-art-of-command-line)

## 🛠️ Day 3–5: Practice Projects
- ✅ Created user `arby` and added sudo access
- ✅ Secured sudo with `timestamp_timeout`
- ✅ Practiced `chmod` (e.g., 700, 644, 400)
- ✅ Generated and secured SSH keys
- ✅ Created shell scripts (`myscript.sh`, `secretscript.sh`)
- ✅ Set proper `.ssh` permissions

## 📝 Notes:
- `chmod 700`: owner has all permissions
- `chmod 644`: owner write, others read
- `chmod 400`: read-only (e.g., SSH private key)
- `visudo`: safest way to edit sudo rules
- `ssh-keygen`: creates public/private key pair

## 🖼️ Assets
📸 Add screenshots of:
- your shell script output  
- `ls -l` showing permission changes  
- `visudo` edits  
Place in: `week1/assets/`
