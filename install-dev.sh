#!/bin/bash

GREEN="\033[0;92m"
LRED="\033[1;31m"
YELLOW="\033[0;93m"

echo -e "${GREEN}Cloning projects... ${YELLOW}"

git clone git@github.com:ScrimDorTest/scrimdor-server.git
git clone git@github.com:ScrimDorTest/client-react.git
git clone git@github.com:ScrimDorTest/scrimdor-chat-server.git
git clone git@github.com:ScrimDorTest/scrimdor-cdn.git

echo -e "${GREEN}Done."

echo -e "${GREEN}Building Docker containers...${YELLOW}"

sudo docker-compose up --build -d

echo -e "${GREEN}Done."
echo -e "${LRED}DB might be started little bit later."
