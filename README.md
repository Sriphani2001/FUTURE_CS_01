# FUTURE_CS_01
This is my Internship repository For a internship from Future interns Cyber security and task one.

# from ~/futureinterns/FUTURE_CS_01/bWapp
# start lab
docker compose build --no-cache
docker compose up -d

docker exec -it bwapp-web-1 bash -lc 'cat >/var/www/html/bWAPP/config.inc.php <<EOF
<?php
\$db_server   = "db";
\$db_database = "bwapp";
\$db_username = "bee";
\$db_password = "bug";
?>
EOF'




