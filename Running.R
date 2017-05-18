#java -Dwebdriver.chrome.driver=C:\Users\Naldrek\Documents\chromedriver.exe -jar C:\Users\Naldrek\Documents\selenium-server-standalone-3.0.1.jar -port 4444
library(shiny)
library("RSelenium")
shell.exec("C:/Users/Naldrek/Dropbox/R/Alpha/Rselenium.bat")
remDr <- remoteDriver(browserName = "chrome") #mozilla, chrome
remDr$open(silent=TRUE)
remDr$navigate("http://onlinetonegenerator.com/voice-generator.html")
txtarea=remDr$findElement(using = "css selector", "textarea:nth-child(1)")
for(i in 1:107){
  i=txtarea$sendKeysToElement(list("", key = "backspace"))}
#setwd("/home/naldrek/Documents/R/")
setwd("C:/Users/Naldrek/Dropbox/R")
runApp("Alpha", launch.browser = TRUE)

