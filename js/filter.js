import { Filter } from './modules.js'

let filterFields = document.querySelectorAll(".filterField")
const filter = new Filter(filterFields)

// -----------------------Defining render parameters-------------------------
const destiny = document.getElementById("tableBody")
const error = function() {
    alert("No estás conectado a internet")
}
const route = "/inventariogg/phpurl/filtradoDe" +
    document.querySelector(".active").innerHTML + ".php"
    // ----------------------------------------------------------------------------

for (let n = 0; n < filterFields.length; n++) {
    filterFields[n].addEventListener("input", () => { filter.render(route, "POST", destiny, error) })
}