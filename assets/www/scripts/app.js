(function() {
  var onDeviceReady, onLoad;

  onLoad = function() {
    return document.addEventListener("deviceready", onDeviceReady, true);
  };

  onDeviceReady = function() {
    return navigator.notification.alert("PhoneGap is working");
  };

}).call(this);
