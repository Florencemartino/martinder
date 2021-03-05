// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")

require("bootstrap")

require("@fortawesome/fontawesome-free")

require("../includes/slides")

import 'bootstrap';

import { slider} from '../includes/slides'
import { loadDynamicBannerText } from '../includes/banner';
document.addEventListener('turbolinks:load', () => {
    slider();
    loadDynamicBannerText()
  });