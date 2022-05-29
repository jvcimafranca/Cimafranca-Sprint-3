"use strict";

const inquire = (name) => {
  name = name;
  return {name};
 };
 const inquiryForm = document.getElementByName('inquiry-form');

 inquiryForm.addEventListener('submit', checkInquiryForm);

// send an alert if required fields are not filled in inquiry form

function checkInquiryForm(event){
  event.preventDefault();
  if(this.name.value=== '' || this.email.value ===''){

    alert('PLEASE FILL ALL REQURED FIELDS BEFORE BOOKING');
    return;
  }

}