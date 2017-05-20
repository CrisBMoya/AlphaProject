print("Setting things up")
#Require and install packages if they aren't installed already
#Shiny
if(require("shiny")){
  print("Shiny is loaded correctly")
} else {
  print("trying to install Shiny")
  install.packages("shiny")
  if(require(shiny)){
    print("Shiny installed and loaded")
  } else {
    stop("could not install Shiny")
  }
}

#RSelenium
if(require("RSelenium")){
  print("RSelenium is loaded correctly")
} else {
  print("trying to install RSelenium")
  install.packages("RSelenium")
  if(require(RSelenium)){
    print("RSelenium installed and loaded")
  } else {
    stop("could not install RSelenium")
  }
}

#Set Working Directory as the directory from which the script is running
script.dir <- dirname(sys.frame(1)$ofile)
setwd(paste(getwd()))

#Running Java through bat
#print("Openning Selenium driver")
#shell.exec("Rselenium.bat")

#Openning browser controlled by Selenium
remDr <- remoteDriver(browserName = "chrome")
remDr$open(silent=TRUE)

#Setting up Text2Voice webpage
print("Setting up Text2Voice webpage. Wait until done")
remDr$navigate("http://onlinetonegenerator.com/voice-generator.html")
txtarea=remDr$findElement(using = "css selector", "textarea:nth-child(1)")
for(i in 1:107){
  i=txtarea$sendKeysToElement(list("", key = "backspace"))}

#Runapp
print("Running Alpha Project App")
setwd("..")
runApp("Alpha", launch.browser = TRUE)
