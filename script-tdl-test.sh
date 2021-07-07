#! /bin/bash
wget -O /var/www/html/tdl-test/index.html https://www.irelandwestairport.com/flight_information 

sed -i -e 's;img src="/;img src="https://www.irelandwestairport.com/;g' /var/www/html/tdl-test/index.html 

git add .

git commit -m "updated index.html - crond"

git push -u origin main 
