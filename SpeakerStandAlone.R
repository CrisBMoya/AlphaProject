#java -Dwebdriver.chrome.driver=C:\Users\Naldrek\Documents\chromedriver.exe -jar C:\Users\Naldrek\Documents\selenium-server-standalone-3.0.1.jar -port 4444
library("RSelenium")
shell.exec("C:/Users/Naldrek/Dropbox/R/Alpha/Rselenium.bat")

remDr <- remoteDriver(browserName = "chrome") #mozilla, chrome
remDr$open(silent=TRUE)
remDr$navigate("http://onlinetonegenerator.com/voice-generator.html")

#Set text to speak
Speak="Hello"

{txtarea=remDr$findElement(using = "css selector", "textarea:nth-child(1)")
for(i in 1:107){
  i=txtarea$sendKeysToElement(list("", key = "backspace"))}

txtarea$sendKeysToElement(list(Speak))
playbutton=remDr$findElement(using="css selector", ".beginTuning")
playbutton$clickElement()

for(i in 1:nchar(Speak)){
  i=txtarea$sendKeysToElement(list("", key = "backspace"))}}

