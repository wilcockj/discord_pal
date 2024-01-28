printf "Pulling repo\n\n"
git pull
printf "Building discordpal binary\n\n"
/usr/local/go/bin/go build .
printf "Built discordpal binary\n\n"
printf "Restarting discordpal service with new version\n\n"
systemctl restart discordpal.service
if [ $? -eq 0 ]; then
	echo "Successful deploy"
else
	echo "Deploy Failed"
fi
