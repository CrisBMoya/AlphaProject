var initVoice = function() {
if (annyang) {

  Shiny.onInputChange('Alpha', "Say Alpha something");
  Shiny.onInputChange('Repeat', "");

  var commands = {
    'Alpha *Alpha': function(Alpha) {
      Shiny.onInputChange('Alpha', Alpha);
    },
    'Repeat *Repeat': function(Repeat) {
      Shiny.onInputChange('Repeat', Repeat);
    }
  };
  annyang.addCommands(commands);
  annyang.start();
  }
};

$(function() {
  setTimeout(initVoice, 10);
});

