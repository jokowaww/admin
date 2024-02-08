#install
cp /root/wongedan/var.txt /tmp
cp /root/wongedan/var.txt /tmp
rm -rf wongedan
apt update && apt upgrade -y
apt install python3 python3-pip -y
apt install sqlite3 -y
pip install python-telegram-bot==13.7
cd /root/
rm -rf wongedan
wget https://raw.githubusercontent.com/jokowaww/admin/main/gendeng.zip
unzip gendeng.zip
cd wongedan
rm var.txt
rm database.db
pip3 install -r requirements.txt
