// window.addEventListener("load", function initMap() {
//   var target = document.getElementById('map');  
//   //マップを生成して表示
//   var map = new google.maps.Map(document.getElementById('map'), {
//     center: {lat: 35.681167, lng: 139.767052},
//     zoom: 15
//   });
//   //情報ウィンドウのインスタンスの生成
//   var infoWindow = new google.maps.InfoWindow; 
  
//   //ブラウザが Geolocation に対応しているかを判定
//   //対応していない場合の処理
//   if(!navigator.geolocation){ 
//     //情報ウィンドウの位置をマップの中心位置に指定
//     infoWindow.setPosition(map.getCenter());
//     //情報ウィンドウのコンテンツを設定
//     infoWindow.setContent('Geolocation に対応していません。');
//     //情報ウィンドウを表示
//     infoWindow.open(map);
//   }
  
//   //ブラウザが対応している場合、position にユーザーの位置情報が入る
//   navigator.geolocation.getCurrentPosition(function(position) { 
//     //position から緯度経度（ユーザーの位置）のオブジェクトを作成し変数に代入
//     var pos = {  
//       lat: position.coords.latitude,
//       lng: position.coords.longitude
//     };
//     //情報ウィンドウに現在位置を指定
//     infoWindow.setPosition(pos);
//     //情報ウィンドウのコンテンツを設定
//     infoWindow.setContent('現在位置を取得しました。');
//     //情報ウィンドウを表示
//     infoWindow.open(map);
//     //マップの中心位置を指定
//     map.setCenter(pos);
  
//   }, function() {  //位置情報の取得をユーザーがブロックした場合のコールバック
//     //情報ウィンドウの位置をマップの中心位置に指定
//     infoWindow.setPosition(map.getCenter());
//     //情報ウィンドウのコンテンツを設定
//     infoWindow.setContent('Error: Geolocation が無効です。');
//     //情報ウィンドウを表示
//     infoWindow.open(map);
//   });   
// });
