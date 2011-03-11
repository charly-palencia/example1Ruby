(function(){
  var managerSystem = function() {

  };
  managerSystem.saveDog = function(dog){
    $.ajax({
      url:"dog/save",
      data:"name="+dog.name+"&race="+dog.race+"&large="+dog.large+"&birth="+dog.birth+"&weight="+dog.weight
    });
  };
  managerSystem.reloadActions= function() {
    $(".window h1 #close").click(function( ) {
      $(this).parent().parent().remove();
    });   
  };
  managerSystem.showDogs= function(){
    var that=this;
    $.ajax({
      url:"dog/list",
      success:function (data) {
        if (!$("#winList").length) { 
          $("body").append(data);
          $("#winList").css("left","5px");
          $("#winList").slideDown();
          that.reloadActions();
        } 
      }
    });
  };
  managerSystem.initialize = function(){
    var that = this;
    $("#btSaveDog").click( function() {
      that.saveDog({
        name:$("#name").val(),
        race:$("#race").val(),
        large:$("#large").val(),
        birth:$("#birth").val(),
        weight:$("#weight").val()
      })
      });
    $("#listWin").click( function() {
      that.showDogs();
    });
    that.reloadActions();
  };
  managerSystem.initialize();
})();


