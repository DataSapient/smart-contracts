/*globals $, SimpleStorage, document*/

var addToLog = function(id, txt) {
  $(id + " .logs").append("<br>" + txt);
};

$(document).ready(function() {

  $("#blockchain button.set").click(function() {
    // var value = parseInt($("#blockchain input.text").val(), 10);
    // TheDeal.newContract(10, 11, 12);
    TheContract.newContract(0x4300AcB8e4A30f6dc971040428c0d764eC6acF8b, 10, 12);
    // TheDeal.newContract();
    // addToLog("#blockchain", "SimpleStorage.set(" + value + ")");
  });

  $("#blockchain button.get").click(function() {

    // TheDeal.testget(16).then(function(v){
    //   console.log(v.toNumber());
    // });
    // SimpleStorage.get().then(function(value) {
    //   $("#blockchain .value").html(value.toNumber());
    // });
    // addToLog("#blockchain", "SimpleStorage.get()");
  });

});
