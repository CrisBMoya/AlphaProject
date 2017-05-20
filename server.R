#SERVER
server = function(input, output, session) {
  observe({
    if (input$close > 0) {stopApp();remDr$close()} # stop shiny
  })
  
  output$foo = renderText({
    #Begin

if(is.null(input$Alpha) || is.na(input$Alpha)){
return()
}
#Date
  if(input$Alpha=="date"){

    {txtarea=remDr$findElement(using = "css selector", "textarea:nth-child(1)")
    
    txtarea$sendKeysToElement(list(as.character(Sys.Date())))
    playbutton=remDr$findElement(using="css selector", ".beginTuning")
    playbutton$clickElement()
    Sys.sleep(2)
    for(i in 1:nchar(as.character(Sys.Date()))){
      i=txtarea$sendKeysToElement(list("", key = "backspace"))}}
    
  }
    
#Time
  if(input$Alpha=="time"){
    
    {txtarea=remDr$findElement(using = "css selector", "textarea:nth-child(1)")
    
    txtarea$sendKeysToElement(list(as.character(format(Sys.time(), "%H:%M"))))
    playbutton=remDr$findElement(using="css selector", ".beginTuning")
    playbutton$clickElement()
    Sys.sleep(2)
    for(i in 1:nchar(as.character(format(Sys.time(), "%H:%M")))){
      i=txtarea$sendKeysToElement(list("", key = "backspace"))}}
    
  }

#Repeat
 
    {txtarea=remDr$findElement(using = "css selector", "textarea:nth-child(1)")
    
    txtarea$sendKeysToElement(list(input$Repeat))
    playbutton=remDr$findElement(using="css selector", ".beginTuning")
    playbutton$clickElement()
    Sys.sleep(2)
    for(i in 1:nchar(input$Repeat)){
      i=txtarea$sendKeysToElement(list("", key = "backspace"))}}
    

    #END
  })}

