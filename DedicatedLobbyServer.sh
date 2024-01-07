#!/bin/bash

# IW4x Lobby Server Configuration start-up file
# For support visit us on discord https://discord.gg/2ETE8engZM

# Choose your gamemode of 0-22 of your choice above 
PlaylistGameMode=1

# Your Game Server Port. Make sure you Port Forward both UDP & TCP
GamePort=28960

# Offline/Private LAN Party Mode
# 0 Disable (Send heartbeats to online serverlist)
# 1 Enable (Add to the Local serverlist. Unlisted from Public)
LANMode=0

# Enable logging
LogFile=1

# Load a mod on your server
ModFolderName=

# The name of your edited Playlist from the "userraw" folder goes here (optional)
PlaylistFilename=partyserver.cfg

# Your edited server.cfg in the "userraw" folder goes here...
# This is where you edit your hostname, rcon, inactivity, etc
# (Optional)
ServerFilename=serverlan.cfg

# Remove this line if automatic updates on start should be disabled
./alterware-launcher --update

wine iw4x.exe -dedicated -stdout +set fs_game "$ModFolderName" +set sv_lanonly "$LANMode" +set net_port "$GamePort" +exec "$ServerFilename" +set logfile "$LogFile" +set party_enable "1" +set playlistFilename "$PlaylistFilename" +playlist "$PlaylistGameMode"
