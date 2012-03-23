onLoad = () ->
  document.addEventListener("deviceready", onDeviceReady, true)

onDeviceReady = () ->
  navigator.notification.alert "PhoneGap is working"
