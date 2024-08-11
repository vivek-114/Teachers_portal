// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs";
import Turbolinks from "turbolinks";
import * as ActiveStorage from "@rails/activestorage";
import "channels";

Rails.start();
Turbolinks.start();
ActiveStorage.start();

// document.addEventListener("DOMContentLoaded", () => {
//   debugger;
//   const editButtons = document.querySelectorAll(".edit-btn");
//   const addButton = document.getElementById("addStudentBtn");

//   editButtons.forEach((button) => {
//     button.addEventListener("click", (event) => {
//       const studentId = event.target.dataset.studentId;

//       console.log(`Fetching data for student ID: ${studentId}`);

//       fetch(`/students/${studentId}/edit`, {
//         method: "GET",
//         headers: {
//           "Content-Type": "application/json",
//         },
//       })
//         .then((response) => response.json())
//         .then((data) => {
//           console.log("Fetched student data:", data);

//           document.getElementById("modalStudentName").value = data.name || "";
//           document.getElementById("modalStudentSubject").value =
//             data.subject || "";
//           document.getElementById("modalStudentMark").value = data.mark || "";

//           document.getElementById(
//             "modalForm"
//           ).action = `/students/${studentId}`;
//         })
//         .catch((error) => console.error("Error:", error));
//     });
//   });

//   addButton.addEventListener("click", () => {
//     document.getElementById("modalStudentName").value = "";
//     document.getElementById("modalStudentSubject").value = "";
//     document.getElementById("modalStudentMark").value = "";

//     document.getElementById("modalForm").action = "/students";
//   });
// });
