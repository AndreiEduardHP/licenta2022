import Flatpickr from 'stimulus-flatpickr'

// you can also import a translation file
//import { Hebrew } from 'flatpickr/dist/l10n/he.js'

// import a theme (could be in your main CSS entry too...)
import 'flatpickr/dist/themes/dark.css'
import rangePlugin from "flatpickr/dist/plugins/rangePlugin"
// create a new Stimulus controller by extending stimulus-flatpickr wrapper controller
export default class extends Flatpickr {
  static targets = ['numberOfNights'];
  initialize() {
    // sets your language (you can also set some global setting for all time pickers)
    this.config = {
     "plugins": [new rangePlugin({input: "#end_date"})]


    }
  }

  // all flatpickr hooks are available as callbacks in your Stimulus controller
  


  // all flatpickr hooks are available as callbacks in your Stimulus controller
   close(selectedDates, dateStr, instance) {
          let daysInRange = document.getElementsByClassName('inRange');
          let daysLengthTotal = daysInRange.length + 1;
          var zile = daysLengthTotal
          var price = document.getElementById("ediprice").value;
            document.getElementById("numarzile").value=zile;
           
           
           
           document.getElementById("edipricetotal").value=zile*price;
           
         console.log(zile) ;
         }
         
         
}
 