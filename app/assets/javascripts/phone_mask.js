let inputPhone = document.getElementById("order_bill_address_attributes_phone");
let hiddenPhone = document.getElementById("hidden_phone_input");

inputPhone.oninput = () => phoneMask(inputPhone);

function phoneMask(inputEl) {
    let patStringArr = "+375(__)___-__-__".split('');
    let arrPush = [5, 6, 8, 9, 10, 12, 13, 15, 16];
    let val = inputEl.value;
    let arr = val.replace(/\D+/g, "").split('').splice(3);
    let n;
    arr.forEach((s, i) => {
        n = arrPush[i];
        patStringArr[n] = s;
    });


    inputEl.style.color = arr.length < 9 ? 'red' : 'black';

    inputEl.value = patStringArr.join('');


    n ? inputEl.setSelectionRange(n + 1, n + 1) : inputEl.setSelectionRange(17, 17);


    hiddenPhone.value = "+375" + arr.join('');


    if (arr.length >= 9) {
        inputEl.setAttribute('maxlength', 17);
    } else {
        inputEl.removeAttribute('maxlength');
    }
}
