import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Salut beau goss", "Salut belle gosse"],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };