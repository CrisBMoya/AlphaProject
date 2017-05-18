# AlphaProject
Voice Control App for random uses using R Shiny.

This App was created with the idea in mind to put it into a Raspberry Pi Computer and then mount it into a piece of furniture, who will respond to the name 'Alpha', giving, for now, the current hour, date and repeating whatever you say.

# Voice Recognition
For the voice recognition part I used the core idea from here: https://github.com/yihui/shiny-apps/tree/master/voice which is based on: https://github.com/TalAter/annyang

I changed the voice command from which the app respond.
This can be changed inside the file `init.js`

# Voice response
The responses from the app are from a website which translate the text input into voice: http://onlinetonegenerator.com/voice-generator.html

This website is controlled via R using the RSelenium package: https://cran.r-project.org/web/packages/RSelenium/vignettes/RSelenium-basics.html

Since I cannot find any app or R package who let me translate text to speech in R I just used the website mentioned before.

# State of the app
Currently, I'll be trying to change all paths to relative paths so the app can function regardless folder and machine/OS.

# Some other info
Created under Windows10 using R Studio.


PS: I'm very new to Github environment, some mistakes may happen.
