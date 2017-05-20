#FLUID PAGE
  ui = fluidPage(
    tags$button(
      id = 'close',
      type = "button",
      class = "btn action-button",
      onclick = "setTimeout(function(){window.close();},500);",  # close browser
      "Close window"
    ),
  
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
        
  
  
