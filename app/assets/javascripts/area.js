window.addEventListener("load", function() {
  var popup = document.getElementById('js-popup')

  let btn = document.getElementById("position");
  let WhiteBG = document.getElementById('js-white-bg');
 
  closepopup(btn);
  closepopup(WhiteBG);

  function closepopup(elem){
    elem.addEventListener("click", function() {
      popup.classList.toggle('is-show');
    });
  }


});

// window.addEventListener()function popupImage() {
//   var popup = document.getElementById('js-popup');
//   if(!popup) return;

//   var blackBg = document.getElementById('js-black-bg');

//   var blackBg = document.getElementById('js-black-bg');
//   var closeBtn = document.getElementById('js-close-btn');
//   var showBtn = document.getElementById('js-show-popup');

//   closePopUp(blackBg);
//   closePopUp(closeBtn);
//   closePopUp(showBtn);
//   function closePopUp(elem) {
//     if(!elem) return;
//     elem.addEventListener('click', function() {
//       popup.classList.toggle('is-show');
//     });
//   }
// }
// popupImage();

// window.addEventListener("load", function popupArea() {

// // function popupArea() {
//   var popup = document.getElementById('js-popup');
//   if(!popup) return;

//   var whiteBg = document.getElementById('js-white-bg');

//   var whiteBg = document.getElementById('js-white-bg');
//   var closeBtn = document.getElementById('js-close-btn')
//   var showBtn = document.getElementById('address');

//   closePopUp(whiteBg);
//   closePopUp(closeBtn);
//   closePopUp(showBtn);
//   function closePopUp(elem) {
//     if(!elem) return;
//     elem.addEventListener('click', function() {
//       popup.classList.toggle('is-show');
//     });
//   }
// });
