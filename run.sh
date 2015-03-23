#!/bin/sh

echo "Update openfire config"
sed -i "s/%SERVER_URL%/$DB_PORT_3306_TCP_ADDR/g" /opt/openfire/conf/openfire.xml
sed -i "s/%PASSWORD%/$PASSWORD/g" /opt/openfire/conf/openfire.xml

echo "Start openfire"
exec java -server -DopenfireHome="/opt/openfire" -Dopenfire.lib.dir="/opt/openfire/lib" -classpath "/opt/openfire/lib/startup.jar" -jar "/opt/openfire/lib/startup.jar"
