echo -e 'base64 /dev/urandom | head -c 10 >/home/user'{0..9}/delta/folder{1..10}/delta.txt"\n"  >> random_text.sh
echo '21 15 * * 1-6 ./random_text.sh' | crontab 
