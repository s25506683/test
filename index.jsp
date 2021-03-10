<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">

<style>
body {
	font-family: Arial,Helvetica, sans-serif;
    margin:0px auto;
	padding:0px;
	text-align:center;
    }

/* Full-width input fields */
input[type=text], input[type=password], input[type=date], select {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
}

/* Set a style for all buttons */
button {
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
  transition: all .5s;
}

button:hover {
  opacity: 0.8;
  border-radius: 20px;
}

/* Extra styles for the cancel button */
.cancelbtn {
  width: auto;
  padding: 10px 18px;
  background-color: #f44336;
}

/* Center the image and position the close button */
.imgcontainer {
  text-align: center;
  margin: 24px 0 12px 0;
  position: relative;
}

.t_btn {
  border: 2px solid black;
  background-color: white;
  color: black;
  padding: 14px 28px;
  font-size: 16px;
  cursor: pointer;
  transition: all .5s;
}

.SignUp {
  border-color: #2196F3;
  color: dodgerblue;
}

.SignUp:hover {
  background: #2196F3;
  color: white;
}

.forgotPwd {
  border-color: #ff9800;
  color: orange;
  
}

.forgotPwd:hover {
  background: #ff9800;
  color: white;
}

img.avatar {
  width: 40%;
  border-radius: 50%;
}

.container {
  padding: 16px;
}

span.psw {
  float: right;
  padding-top: 16px;
}

/* The Modal (background) */
.modal {
  display: none; /* Hidden by default */
  position: fixed; /* Stay in place */
  z-index: 1; /* Sit on top */
  left: 0;
  top: 0;
  width: 100%; /* Full width */
  height: 100%; /* Full height */
  overflow: auto; /* Enable scroll if needed */
  background-color: rgb(0,0,0); /* Fallback color */
  background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
  padding-top: 60px;
}

.home{
  max-width: 500px;
}

.padding-3{
	padding-top: 3%;
}

/* Modal Content/Box */
.modal-content {
  background-color: #fefefe;
  margin: 5% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
  border: 1px solid #888;
  width: 80%; /* Could be more or less, depending on screen size */
}

/* The Close Button (x) */
.close {
  position: absolute;
  right: 25px;
  top: 0;
  color: #000;
  font-size: 35px;
  font-weight: bold;
}

.close:hover,
.close:focus {
  color: red;
  cursor: pointer;
}

/* Add Zoom Animation */
.animate {
  -webkit-animation: animatezoom 0.6s;
  animation: animatezoom 0.6s
}

@-webkit-keyframes animatezoom {
  from {-webkit-transform: scale(0)} 
  to {-webkit-transform: scale(1)}
}
  
@keyframes animatezoom {
  from {transform: scale(0)} 
  to {transform: scale(1)}
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
  span.psw {
     display: block;
     float: none;
  }
  .cancelbtn {
     width: 100%;
  }
}
</style>
</head>
<body>

<form class="modal-content animate" action="login" method="post" onSubmit="return validate()">
  <div class="home container mx-auto my-auto">
    <img src="${pageContext.request.contextPath}/resources/img/img_avatar2.png" alt="Avatar" class="avatar">
    <div>
      <label for="uname" style="padding-top:5%;"><b>Username</b></label>
      <input type="text" placeholder="Enter Username" name="uname" required>

      <label for="psw"><b>Password</b></label>
      <input type="password" placeholder="Enter Password" name="psw" required>

      <button type="submit">Login</button>
      <label>
      <input type="checkbox" checked="checked" name="remember"> Remember me
      </label><br>

      <button onclick="document.getElementById('id01').style.display='block'" style="width:auto;" class="t_btn SignUp">Sign Up Account</button>
      <button onclick="document.getElementById('id02').style.display='block'" style="width:auto;" class="t_btn forgotPwd">Forgot password</button>
    </div>
  </div>
</form>



<div id="id01" class="modal">
  
  <form class="modal-content animate" action="signUpUser" method="post">
    <div class="imgcontainer">
      <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
      
    </div>

    <div class="container">
      <label for="uid" style="padding-top:8%;"><b>輸入ID</b></label>
      <input type="text" placeholder="Enter ID" id="id" name="id" required>
      
      <label for="uname" class="padding-3"><b>姓名</b></label>
      <input type="text" placeholder="Enter Name" id="name" name="name" required>
      
      <label for="psw" class="padding-3"><b>密碼</b></label>
      <input type="password" placeholder="Enter Password" id="password" name="password" id="pwd" required>
      
      <label for="repsw" class="padding-3"><b>再次輸入密碼</b></label>
      <input type="password" placeholder="ReEnter Password" name="pwdCheck" id="pwdCheck" οnfocus=chkPassword() required>
      
      <label for="uemail" class="padding-3"><b>Email</b></label>
      <input type="text" placeholder="Enter Email" id="email" name="email" required>
      
      <label for="uphone" class="padding-3"><b>手機號碼</b></label>
      <input type="text" placeholder="Enter Phone Number" id="phone" name="phone" required>
      
      <label for="ubirth" class="padding-3"><b>生日</b></label>
      <input type="date" id="birth" name="birth" required>
      
      <label for="ugender" class="padding-3"><b>生理性別</b></label>
      <select id="gender" name="gender">
          <option value="男">男</option>
          <option value="女">女</option>
      </select>
      
      <button type="submit">註冊</button>
    </div>

    <div class="container" style="background-color:#f1f1f1">
      <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">Cancel</button>
    </div>
  </form>
</div>

<div id="id02" class="modal">
  
  <form class="modal-content animate" action="forgotPwd" method="post">
    <div class="imgcontainer">
      <span onclick="document.getElementById('id02').style.display='none'" class="close" title="Close Modal">&times;</span>
      
    </div>

    <div class="container">
      <label for="uname" style="padding-top:8%;"><b>請輸入您註冊時的Email</b></label>
      <input type="text" placeholder="Enter Username" name="uname" required>
      
      <label for="uname"><b>請輸入您的手機號碼</b></label>
      <input type="text" placeholder="Enter Username" name="uname" required>
      
      <button type="submit">重設密碼</button>
    </div>

    <div class="container" style="background-color:#f1f1f1">
      <button type="button" onclick="document.getElementById('id02').style.display='none'" class="cancelbtn">Cancel</button>
    </div>
  </form>
</div>

<script>
// Get the modal
var modal = document.getElementById('id01');
var modal2 = document.getElementById('id02');
var pwd = document.getElementById('pwd');
var pwdCheck = document.getElementById('pwdCheck');

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal || event.target == modal2) {
        modal.style.display = "none";
        modal2.style.display = "none";
    }
}

function validate(){
	if(pwd != pwdCheck){
    	alert("密碼不一致，請重新輸入！");
		document.lform.pwd.focus();//游標輸入點移到pwd欄位中
    }
}

function chkPassword(){
	if(document.getElementById('pwdCheck').value != document.getElementById('pwd').value){
    	alert("密碼不一致，請再次輸入！");
		//document.lform.pwd.focus();//游標輸入點移到pwd欄位中
    }
}



</script>

</body>
</html>
