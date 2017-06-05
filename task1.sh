sudo groupadd admin
sudo groupadd moderators
sudo groupadd students
for num in {1..3}; do sudo useradd user$num -m -g admin -p user$num; done
for num in {4..6}; do sudo useradd user$num -m -g moderators -p user$num; done
for num in {7..9}; do sudo useradd user$num -m -g students -p user$num; done
sudo useradd user0 -m -p user0
sudo chmod o-rwx /home/user0

for num in {1..9}; do for n in {1..10}; do sudo mkdir -p /home/user$num/delta/folder$n; done; done

for num in {1..9}; do for n in {1..10}; do sudo touch /home/user$num/delta/folder$n/delta.txt; done; done; done

for num in {4..9}; do sudo setfacl -R -m g:admin:rw /home/user$num; done
for num in {1..9}; do sudo setfacl -R -m g::- /home/user$num; done
for num in {7..9}; do sudo setfacl -R -m g:moderators:rw /home/user$num; done
for num in {1..7}; do sudo setfacl -R -m o::- /home/user$num; done
for num in {1..9}; do sudo setfacl -R -m u:user0:rwx /home/user$num; done
