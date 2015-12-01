#!/bin/bash
function openChatbot {
	cd ~/src/ChatbotE
	python AIAPI.py
}

function openSTT {
	cd ~/catkin_ws/src/SpeechToText/
	python -m SimpleHTTPServer
}

openChatbot &
roslaunch tts_ekho conversation.launch &
openSTT

