sudo nmap -sS -sV -p 1-1024 --open -oG - <target_IP_address> | awk '/Up$/{print $2}' | xargs -I {} sh -c 'sudo nmap -sS -sV -p- -oN "{}.txt" --script default {}'
