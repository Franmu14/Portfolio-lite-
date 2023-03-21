//Función 1: moverse entre Login y Register//

const wrapper = document.querySelector('.wrapper');
const loginLink = document.querySelector('.login-link');
const registerLink= document.querySelector('.register-link');

registerLink.addEventListener('click', ()=>{
    wrapper.classList.add('active');
});

loginLink.addEventListener('click', ()=>{
    wrapper.classList.remove('active');
});


//Función 2: Popup al presionar Login

const btnPopup= document.querySelector('.bntLogin-popup');
const iconClose= document.querySelector('.icon-close');

btnPopup.addEventListener('click', ()=>{
    wrapper.classList.add('active-popup');
});

btnPopup.addEventListener('click', ()=>{
    wrapper.classList.remove('active-popup');
});