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

echo -e '#!/bin/bash\ncd /root/\npython3 -m wongedan' > /usr/bin/nenen


chmod 777 /usr/bin/nenen

cat > /etc/systemd/system/wongedan.service << END
[Unit]
Description=Simple wongedan - @wongedan
After=network.target

[Service]
WorkingDirectory=/root
ExecStart=/usr/bin/nenen
Restart=always

[Install]
WantedBy=multi-user.target

END
systemctl daemon-reload
systemctl start wongedan
systemctl enable wongedan

cp /tmp/var.txt /root/wongedan

echo " Installations complete, type /menu on your bot "
