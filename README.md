# 🔥 setup_pi_firewall

This project aims to provide a simple way to setup a firewall on a small linux machine (.ie Raspberry Pi). We wanted to create an easy way for people interested in computer security to setup their own router/firewall. Even though we only tested our project on a Raspberry Pi, it should work on any linux machine.

To do that, we created an ansible playbook that will install and configure absolutely everything you need to test our project.

Our solution implements the following features:
- 🔒 Firewall set as a router (with nftables)
- 🌐 VPN in a corporation style (with Wireguard)
- 🚫 Fail2ban to block brute force attacks
- 🌍 Geographic IP filtering (ip2location) that only allows connections from Canada (the country where we were located when doing this project)
- 🛡️ Intrusion detection system / Intrusion prevention system (IDS/IPS) (with cowrie)
- 🍯 Honeypot (with cowrie)
- 🔄 Modification of the SSH port
- 🐍 Rootkit (with rkhunter)
- 🧾 System analysis (with lynis)
- ⏲️ Crontab that runs regularly rkhunter and lynis

## 🚀 Getting Started

### 📋 Prerequisites

As our project mainly uses ansible, you will need to install it on your machine. You can do it by running the following command:

For Debian-based systems:
```bash 
sudo apt-get install ansible
```

For RedHat-based systems:
```bash
sudo yum install ansible
```

### 🛠️ Installing

To install our project, clone this repo on your machine by doing this command:

```bash
git clone 
```

Then, go to the project directory:

```bash
cd 
```

Finally, run the ansible playbook:

```bash
ansible-playbook -i inventory.ini playbook.yml
```

Alternatively, you can run the ansible playbook with the following command:

```bash
./launch.sh
```
## ⚠️ Disclaimer

This project was a school assignment where we had to do something related to cybersecurity. 
We are not professionals in this field and we do not guarantee the security of our project AT ALL.
Thus, we are not responsible for any damage that could be done to your machine by running our project.

## 👥 Authors

- Lapu Matthias 
- Audoux Gaspard
- Lochon Florentin
