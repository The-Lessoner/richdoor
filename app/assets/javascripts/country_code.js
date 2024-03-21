document.addEventListener("DOMContentLoaded", function() {
    var countrySelect = document.getElementById("order_bill_address_attributes_country_code");

    if (countrySelect) {
        countrySelect.addEventListener("change", function() {
            var countryCode = this.value;
            var phoneInput = document.getElementById("order_bill_address_attributes_phone");


            var countryPhoneCodes = {
                "BY": "+375",
                "RU": "+7",
                "PL": "+48",
                "LT": "+370",
                "LV": "+371",
                "GE": "+995",
                "EE": "+372",
                "UZ": "+998"

            };

            if (countryPhoneCodes[countryCode]) {
                var phoneCode = countryPhoneCodes[countryCode];
                var currentValue = phoneInput.value;
                phoneInput.value = phoneCode;

            }
        });
    }
});

