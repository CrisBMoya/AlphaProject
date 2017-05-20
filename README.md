# AlphaProject
Voice Control App for random uses using R Shiny.

This App was created with the idea in mind to put it into a Raspberry Pi Computer and then mount it into a piece of furniture, who will respond to the name 'Alpha', giving, for now, the current hour, date and repeating whatever you say.

# How to run the app
Using command line, go to the main folder (root folder of the app) and then run:
`RScript Start.R`.
This will start first the RSeleneium services then, the voice response webpage and finally the shiniy app. Inside the shiny app the voice recognition service start functioning (*init.js*)

# Voice Recognition
For the voice recognition part I used the core idea from here: https://github.com/yihui/shiny-apps/tree/master/voice which is based on: https://github.com/TalAter/annyang

I changed the voice command from which the app respond.
This can be changed inside the file *init.js*

# Voice response
The responses from the app are from a website which translate the text input into voice: http://onlinetonegenerator.com/voice-generator.html

This website is controlled via R using the RSelenium package: https://cran.r-project.org/web/packages/RSelenium/vignettes/RSelenium-basics.html

Since I cannot find any app or R package who let me translate text to speech in R I just used the website mentioned before.

# State of the app
~~Currently, I'll be trying to change all paths to relative paths so the app can function regardless folder and machine/OS.~~
- All absolute paths changed to relative ones, but the program can only run when *Start.R* script is called inside the same folder of the script.
- The app use RSelenium, which use a java (*.jar*) resource in order to run chromedriver.exe. In previous versions this was executed through a *.bat* file. Now its executed using R (RSelenium.R). The idea is that these app should be able to run in any system (any system for me is just Windows and Linux btw).
- There's now a button to close te app entirely. This prevents that multiple chromedriver.exe instances keep running in background. Close button not only closes the app window but also the RSelenium services.

# Some other info
Created under Windows10 using R Studio.


PS: I'm very new to Github environment, some mistakes may happen.
