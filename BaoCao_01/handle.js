// Get element
const $ = document.querySelector.bind(document);
const formLogin = $(".form-login");
const inputName = $("#name");
const inputEmail = $("#email");
const inputPassword = $("#password");
const inputConfirm = $("#confirm-pass");

// Logic
// Function handle Login Form

formLogin.addEventListener("submit", function (e) {
  e.preventDefault();
  validateInput();
});

// Set Error
function setError(element, message) {
  // Get input parent by  element
  const inputControl = element.parentElement;
  // Display error
  const errorDisplay = inputControl.querySelector(".form-error");

  errorDisplay.innerText = message;
  inputControl.classList.add("error");
  inputControl.classList.remove("success");
}

// Set Success
function setSuccess(element) {
  // Get input parent by  element
  const inputControl = element.parentElement;
  // Display error
  const errorDisplay = inputControl.querySelector(".form-error");

  errorDisplay.innerText = "";
  inputControl.classList.add("success");
  inputControl.classList.remove("error");
}

// Check email
function isValidEmail(email) {
  const re =
    /^(([^<>()[\]\.,;:\s@\"]+(\.[^<>()[\]\.,;:\s@\"]+)*)|(\".+\"))@(([^<>()[\]\.,;:\s@\"]+\.)+[^<>()[\]\.,;:\s@\"]{2,})$/i;
  return re.test(String(email).toLowerCase());
}
// Check password
function isCheckPassword(password) {
  const pass = /^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$/;
  return pass.test(password);
}
// Delete Space
function validateInput() {
  const usernameValue = inputName.value.trim();
  const emailValue = inputEmail.value.trim();
  const passwordValue = inputPassword.value.trim();
  const passconfirmValue = inputConfirm.value.trim();
  if (usernameValue === "") {
    setError(inputName, "Tên Đăng Nhập Không Hợp Lệ !");
  } else {
    setSuccess(inputName);
  }
  // Check email
  if (emailValue === "") {
    setError(inputName, "Email Không Được Để Trống !");
  } else if (!isValidEmail(emailValue)) {
    setError(inputEmail, "Email Không Hợp Lệ !");
  } else {
    setSuccess(inputEmail);
  }
  // Check pass
  if (passwordValue === "") {
    setError(inputPassword, "Mật Khẩu Không Được Để Trống !");
  } else if (!isCheckPassword(passwordValue)) {
    setError(inputPassword, "Mật Khẩu Không Hợp Lệ !");
  } else {
    setSuccess(inputPassword);
  }
  // Confirm pass
  if (passconfirmValue === "") {
    setError(inputConfirm, "Nhập Lại Mật Khẩu!");
  } else if (passconfirmValue !== passwordValue) {
    setError(inputConfirm, "Mật Khẩu Không Khớp !");
  } else {
    setSuccess(inputConfirm);
  }
}
