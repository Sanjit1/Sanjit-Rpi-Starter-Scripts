# Update and Upgrade
sudo apt-get update
sudo apt-get upgrade

# Restart Machchar
sudo systemctl start mosquitto

# Start Up the git pull and restart scripts (Use Nodemon(Oh I am so excited to code this stuff lol.))
(\
    terminator -T 'No You Cannot Have Admin Bot' -e 'echo "Admin Bot" & nodemon ~/Bots/no-you-cannot-have-admin-discord-bot/index.js; exec bash'\
)\
|\
(\
    terminator -T 'Lite Bot' -e 'echo "Lite Bot" & nodemon ~/Bots/control-my-lights/index.js; exec bash'\
)\
|
(
    wait 1000
    echo Started the bots
)&