var input = document.getElementById('filtro');
var countryList = document.getElementById('country-list');

input.addEventListener('input', function() { //chatgpt
    var filterValue = input.value.toLowerCase();
    var countries = countryList.getElementsByTagName('li');

    for (var i = 0; i < countries.length; i++) {
            var country = countries[i];
            var countryName = country.textContent.toLowerCase();
        if (countryName.includes(filterValue)) {
            country.style.display = 'block'; 
        } else {
            country.style.display = 'none';
        }
    }
});

