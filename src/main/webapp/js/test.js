/**
 * 
 */
// script.js

document.addEventListener('DOMContentLoaded', function () {
    var side1 = document.querySelector('.side-1');
    var side2 = document.querySelector('.side-2');
    var signInF = document.querySelector('.sign-in fieldset');
    var signUpF = document.querySelector('.sign-up fieldset');

    document.querySelector('.side-1 .toggle-log').addEventListener('click', function () {
        side1.style.transform = 'rotateY(180deg)';
        side1.style.backgroundPosition = '100%';
        side2.style.transform = 'rotateY(0deg)';
        side2.style.backgroundPosition = '100%';
        signInF.setAttribute('disabled', 'disabled');
        signInF.classList.add('block');
        signUpF.removeAttribute('disabled');
        signUpF.classList.remove('block');
    });

    document.querySelector('.side-2 .toggle-log').addEventListener('click', function () {
        side1.style.transform = 'rotateY(0deg)';
        side1.style.backgroundPosition = '0%';
        side2.style.transform = 'rotateY(-180deg)';
        side2.style.backgroundPosition = '0%';
        signInF.removeAttribute('disabled');
        signInF.classList.remove('block');
        signUpF.setAttribute('disabled', 'disabled');
        signUpF.classList.add('block');
    });

    // Add JavaScript code to handle placeholder behavior
    document.addEventListener('DOMContentLoaded', function () {
        var formInputs = document.querySelectorAll('form input');
        formInputs.forEach(function (input) {
            var placeholderText = input.getAttribute('data-placeholder');
            input.setAttribute('placeholder', placeholderText);
        });

        // Optional: You can add more interactions or animations as needed
    });
});
