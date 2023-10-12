<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport"
          content="width=device-width, initial-scale=1.0">
 <title>Registration Form</title>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <style>
 
        /* Styling the Body element i.e. Color, 
        Font, Alignment */ 
        body {
            background-color: #05c46b;
            font-family: Verdana;
            text-align: center;
        }
 
        /* Styling the Form (Color, Padding, Shadow) */
        form {
            background-color: #fff;
            max-width: 500px;
            margin: 50px auto;
            padding: 30px 20px;
            box-shadow: 2px 5px 10px rgba(0, 0, 0, 0.5);
        }
 
        /* Styling form-control Class */
        .form-control {
            text-align: left;
            margin-bottom: 25px;
        }
 
        /* Styling form-control Label */ 
        .form-control label {
            display: block;
            margin-bottom: 10px;
        }
 
        /* Styling form-control input, 
        select, textarea */
        .form-control input,
        .form-control select,
        .form-control textarea {
            border: 1px solid #777;
            border-radius: 2px;
            font-family: inherit;
            padding: 10px;
            display: block;
            width: 95%;
        }
 
        /* Styling form-control Radio 
        button and Checkbox */
        .form-control input[type="radio"],
        .form-control input[type="checkbox"] {
            display: inline-block;
            width: auto;
        }
 
        /* Styling Button */
        button {
            background-color: blue;
            border: 1px solid #777;
            border-radius: 2px;
            font-family: inherit;
            font-size: 21px;
            display: block;
            width: 100%;
            margin-top: 30px;
            margin-bottom: 20px;
            color: white;
            cursor: pointer;
        }
        .a{
         background-color: yellow;
            border: 1px solid #777;
            border-radius: 2px;
            font-family: inherit;
            font-size: 21px;
            display: block;
            width: 100%;
            margin-top: 30px;
            margin-bottom: 20px;
            color: black;
            cursor: pointer;
        }
    </style>
</head>
<body>
<form id="form">
 <h1>Customer Survey Form</h1>
        <!-- Details -->
        <div class="form-control">
            <label for="name" id="label-name">
               First Name
            </label>
 
            <!-- Input Type Text -->
            <input type="text"
                   id="name"
                   placeholder="Enter your name" required="required" />
        </div>
        <div class="form-control">
            <label for="secondname" id="label-secondname">
               Second Name
            </label>
 
            <!-- Input Type Text -->
            <input type="text"
                   id="sname"
                   placeholder="Enter your secondname" required="required" />
        </div>
  
        <div class="form-control">
            <label for="dob" id="label-dob">
                Date Of Birth
            </label>
 
            <!-- Input Type Email-->
            <input type="date"
                   id="dob"
                  required="required"  />
        </div>
  
        
        <div class="form-control">
            <label for="role" id="label-role">
               Select Country
            </label>
             
            <!-- Dropdown options -->
            <select name="role" id="role" required="required">
            <option >--Select Country--</option>
                <option value="India">India</option>
                <option value="Japan">Japan</option>
                <option value="USA">
                    USA
                </option>
                <option value="Germany">Germany</option>
            </select>
        </div>
  
        <div class="form-control">
            <label>
             Select Gender
            </label>
 
            <!-- Input Type Radio Button -->
            <label for="recommed-1">
                <input type="radio"
                       id="recommed-1"
                       name="male" required="required">Male</input>
            </label>
            <label for="recommed-2">
                <input type="radio"
                       id="recommed-2"
                       name="Female" required="required">Female</input>
            </label>
            
        </div>
  
       <div class="form-control">
            <label for="profession" id="label-profession">
              Profession
            </label>
 
            <!-- Input Type Text -->
            <input type="text"
                   id="profession"
                   placeholder="Enter your profession"  required="required"/>
        </div>
         <div class="form-control">
            <label for="email" id="label-email">
              Email
            </label>
 
            <!-- Input Type Text -->
            <input type="email"
                   id="email"
                   placeholder="Enter your email" required="required" />
        </div>
  
   <div class="form-control">
            <label for="profession" id="label-mno">
              Mobile No
            </label>
 
            <!-- Input Type Text -->
            <input type="number"
                   id="mno"
                   placeholder="Enter your mobile" required="required" />
        </div>
        <div class="form-control">
            <label for="comment">
                Any comments or suggestions
            </label>
 
            <!-- multi-line text input control -->
            <textarea name="comment" id="comment"
                placeholder="Enter your comment here" required="required">
            </textarea>
        </div>
  
        <!-- Multi-line Text Input Control -->
        <button  type="submit" value="submit" onclick="validateForm(event);">
            Submit
        </button>
        <button class="a" type="reset" value="reset">
          Reset
        </button>
    </form>   
    <script>
        function validateForm(event) {
            const username = document.getElementById("name").value;
            const password = document.getElementById("sname").value;
            const dob = document.getElementById("dob").value;
            const male = document.getElementById("recommed-1").checked;
            const female = document.getElementById("recommed-1").checked;
            const role = document.getElementById("role").value;
            const profession = document.getElementById("profession").value;
            const email1 = document.getElementById("email").value;
            const mno = document.getElementById("mno").value;
            const cmd = document.getElementById("comment").value;
            

  if (username.trim() === "" || password.trim() === "" || dob==="" || male==""|| female=="" || role=="" || profession=="" || email1 == "" ||mno===""
		|| cmd===""	  
  ) {
                event.preventDefault(); // Prevent form submission
                Swal.fire({
                    icon: 'error',
                    title: 'Oops...',
                    text: 'Please fill in all fields!'
                });
            }
        }
    </script>
</body>
</html>