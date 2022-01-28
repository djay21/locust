#!/bin/bash
apt install python3-pip -y
pip3 install pip --upgrade
pip3 install locust
nohup /usr/bin/python3 /usr/local/bin/locust -f locustfile.py --master &
nohup /usr/bin/python3 /usr/local/bin/locust -f locustfile.py --worker --master-host=localhost &
/usr/bin/python3 /usr/local/bin/locust -f locustfile.py --worker --master-host=localhost