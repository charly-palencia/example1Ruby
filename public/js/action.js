(function(){
  var managerSystem = function() {
    
  };
  managerSystem.saveDog = function(dog){
    $.ajax({
      url:"dog/save",
      data:"name="+dog.name+"&race="+dog.race,
    });
  };
  managerSystem.listDogs = function(){
    initialize
  }
  managerSystem.initialize = function(){
    var that = this;
    $("#btSaveDog").click(function(){
      that.saveDog({
        name:$("#name").val(),
        race:$("#race").val()
        })
      });
  };
  managerSystem.initialize();
  
 })();


