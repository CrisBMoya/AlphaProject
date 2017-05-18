#FLUID PAGE
  ui = fluidPage(
    singleton(tags$head(
      tags$script(src="//cdnjs.cloudflare.com/ajax/libs/annyang/1.4.0/annyang.min.js"),
      includeScript('init.js')
    )),
    sidebarPanel(
    textOutput("foo")),
    
    uiOutput("audioDate"),
    uiOutput("audioTime"),
    textOutput("test")
    )
        
  
  
