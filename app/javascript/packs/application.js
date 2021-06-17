// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")


// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)


// ----------------------------------------------------
// Note(lewagon): ABOVE IS RAILS DEFAULT CONFIGURATION
// WRITE YOUR OWN JS STARTING FROM HERE 👇
// ----------------------------------------------------

// External imports
import "bootstrap";
import "hammerjs";
// Internal imports, e.g:
// import { initSelect2 } from '../components/init_select2';
import { initCards } from './tinder';
function increase() {
    // Change the variable to modify the speed of the number increasing from 0 to (ms)
    let SPEED = 40;
    // Retrieve the percentage value
    let limit = parseInt(document.getElementById("value1").innerHTML, 10);

    for(let i = 0; i <= limit; i++) {
        setTimeout(function () {
            document.getElementById("value1").innerHTML = i + "%";
        }, SPEED * i);
    }
}


document.addEventListener('turbolinks:load', () => {
  // Call your functions here, e.g:
  if (document.getElementById("value1") !== null) {
    increase();
  }
    initCards();
    $(function() {
    $(".HeartAnimation").click(function() {
      $(this).toggleClass("animate");
      // setTimeout(window.location.replace("/movie_selections/favourites"),1000);
    });

    $(".EyeAnimation").click(function() {
      $(this).toggleClass("animate");
    });

    $(function () {
      $('[data-toggle="tooltip"]').tooltip()
    })

  });
});
























