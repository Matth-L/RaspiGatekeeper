import paramiko
from threading import Thread

# Configuration des connexions
ip_address = "???.???.???.???"
port = 22
username = "root"
password = "123456789"

num_connections = 1000

def ssh_connect(ip, port, user, passwd):
    try:
        client = paramiko.SSHClient()
        client.set_missing_host_key_policy(paramiko.AutoAddPolicy())
        client.connect(ip, port=port, username=user, password=passwd)
        print(f"Connexion réussie à {ip}:{port}")
        client.close()
    except Exception as e:
        print(f"Erreur lors de la connexion : {e}")

# Lancer les connexions simultanément
threads = []

for i in range(num_connections):
    thread = Thread(target=ssh_connect, args=(ip_address, port, username, password))
    threads.append(thread)
    thread.start()

for thread in threads:
    thread.join()

print("Test terminé.")
