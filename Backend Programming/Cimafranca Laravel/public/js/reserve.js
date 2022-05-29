"use strict";

const reserve = (name) => {
  name = name;
  return {name};
 };
 
 let customer = reserve("");

//const reserveForm = document.getElementById('reservation-form');
const reserveForm = document.querySelector('[name = "reservation-form"]');
const number = document.querySelector('[name = "phone"]').value;
reserveForm.addEventListener('submit', checkReserveForm);


// send an alert if required fields are not filled in reservation form
function checkReserveForm(event){
  event.preventDefault();
  if(this.number.value ===''){
  
    alert('PLEASE FILL ALL REQUIRED FIELDS BEFORE BOOKING');
    return;
  }

}