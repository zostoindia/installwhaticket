#!/bin/bash

get_link_git() {
  
  print_banner
  printf "${WHITE} 💻 Enter the GITHUB link to start the installation:${GRAY_LIGHT}"
  printf "\n\n"
  read -p "> " link_git
}

get_instancia_add() {
  
  print_banner
  printf "${WHITE} 💻 Type the name of the instance to be configured (Use lowercase letters):${GRAY_LIGHT}"
  printf "\n\n"
  read -p "> " instancia_add
}

get_frontend_url() {
  
  print_banner
  printf "${WHITE} 💻 Enter the FRONTEND interface domain:${GRAY_LIGHT}"
  printf "\n\n"
  read -p "> " frontend_url
}

get_frontend_port() {
  
  print_banner
  printf "${WHITE} 💻 Enter the FRONTEND port for this instance; Example: 3333${GRAY_LIGHT}"
  printf "\n\n"
  read -p "> " frontend_port
}

get_backend_url() {
  
  print_banner
  printf "${WHITE} 💻 Enter the BACKEND domain:${GRAY_LIGHT}"
  printf "\n\n"
  read -p "> " backend_url
}

get_backend_port() {
  
  print_banner
  printf "${WHITE} 💻 Enter the BACKEND port for this instance; Example: 8080 ${GRAY_LIGHT}"
  printf "\n\n"
  read -p "> " backend_port
}

get_urls() {
  get_link_git
  get_instancia_add
  get_frontend_url
  get_backend_url
  get_frontend_port
  get_backend_port
}

software_update() {
  get_instancia_add
  frontend_update
  backend_update
}

inquiry_options() {
  
  print_banner
  printf "${WHITE} 💻 Welcome to the WHATSATENDE installer, Select the next action below!${GRAY_LIGHT}"
  printf "\n\n"
  printf "   [1] Install a new instance\n"
  printf "   [2] Update a instance\n"
  printf "\n"
  read -p "> " option

  case "${option}" in
    1) get_urls ;;

    2) 
      software_update 
      exit
      ;;

    *) exit ;;
  esac
}


