  var app = {


    initialize: function(){
    this.bindEvents();
  },

  bindEvents: function(){
    document.addEventListener('deviceready', this.onDeviceReady, false);
  },

  onDeviceReady: function(){
    var watchId = navigator.geolocation.watchPosition(geolocationSuccess,
                                                  [geolocationError],
                                                  [geolocationOptions]);
    navigator.geolocation.getCurrentPosition(onSuccess, onError);
  },
  onSuccess: function(position){
    var latitude = position.coords.latitude;
    var longitude = position.coords.longitude;
    var latLong = new google.LatLng(latitude, longitude);


    var mapOptions = {
      zoom: 14,
      center: latLong,
      mapTypeId: google.maps.MapTypeId, ROADMAP
    };

    var map = new google.maps.Map(document.getElementById('map'), mapOptions);

    var marker = new google.maps.Marker({
      position: latLong,
      map: map,
      title : 'VOCÊ ESTÁ AQUI!'
    });
  },

  onError: function(){
    alert('cod Erro' + error.code + '.\n'+ 'mensagem: '+ error.mensagem);
  }


};
