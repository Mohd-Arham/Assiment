<html>

<head>
  <title>Calculator</title>
  <link rel="icon" type="image/x-icon" href="jaiBallaya.jpeg" />
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous" />
  <style type="text/css">
  
  body {
  background-color: #70736D !important;
  margin-top: 90px !important;
  margin-bottom: 90px !important;
}
h1 {
  margin-top: 20px !important;
  color: white !important;
  text-align: center !important;
}
.col-md-6 {
  box-shadow: 5px 5px 5px 5px black !important;
  border-radius: 50px !important;
  padding-left: 20px !important;
}

.math-sign {
  background-color: rgb(105,105,105) !important;
  color: white !important;
  order: none !important;

  height: 7rem !important;
  width: 8rem !important;

  font-style: bolder !important;
  font-size: 35px !important;
}
.numb {
  background-color: #333333;
  color: white;
  border: none;

  height: 7rem !important;
  width: 8rem !important;
 
  font-size: 40px !important;


}
.numb:hover {
  /*background-color: blueviolet;*/
  /*background-image: linear-gradient(to right, #25aae1, #4481eb, #04befe, #3f86ed) !important;
    box-shadow: 0 4px 15px 0 rgba(65, 132, 234, 0.75) !important;*/
  background-color: gray !important;
  color: black !important;

}

.sign {
  background-color: green !important;
 
}
.math-sign:hover {
  background-color: grey !important;
 
}
#textarea {
 
  color: black !important;
  height: 110px !important;
  width: 100% !important;
  font-size: 40px !important;
  text-align: left !important;
 
  transition: 0.5s !important;
  font-style: bolder !important;
}


.table {
  border: rgb(54, 53, 53) !important;
}
  
  </style>
</head>

<body>
  <div class="container">
    <div class="row justify-content-center">
      <div class="col-md-6">
     
        <table class="table">
          <tr>
            <td colspan="3"><input type="text" id="textarea" readonly="readonly"/></td>
            <td>
              <input type="button" class="numb sign" value="AC" onclick="clr()" />
            </td>
          </tr>

          <tr>
            <td>
              <input type="button" class="numb" value="1" onclick="display('1')" />
            </td>
            <td>
              <input type="button" class="numb" value="2" onclick="display('2')" />
            </td>
            <td>
              <input type="button" class="numb" value="3" onclick="display('3')" />
            </td>
            <td>
              <input type="button" class="math-sign" value="/" onclick="display('/')" />
            </td>
          </tr>

          <tr>
            <td>
              <input type="button" class="numb" value="4" onclick="display('4')" />
            </td>
            <td>
              <input type="button" class="numb" value="5" onclick="display('5')" />
            </td>
            <td>
              <input type="button" class="numb" value="6" onclick="display('6')" />
            </td>
            <td>
              <input type="button" class="math-sign" value="-" onclick="display('-')" />
            </td>
          </tr>

          <tr>
            <td>
              <input type="button" class="numb" value="7" onclick="display('7')" />
            </td>
            <td>
              <input type="button" class="numb" value="8" onclick="display('8')" />
            </td>
            <td>
              <input type="button" class="numb" value="9" onclick="display('9')" />
            </td>
            <td>
              <input type="button" class="math-sign" value="+" onclick="display('+')" />
            </td>
          </tr>

          <tr>
            <td>
              <input type="button" class="numb" value="." onclick="display('.')" />
            </td>
            <td>
              <input type="button" class="numb" value="0" onclick="display('0')" />
            </td>
            <td>
              <input type="button" class="numb" value="=" onclick="calculate()" />
            </td>
            <td>
              <input type="button" class="math-sign" value="*" onclick="display('*')" />
            </td>
          </tr>
        </table>
      </div>
    </div>
  </div>
  <script>
  function display(value) {
	  document.getElementById("textarea").value += value;
	}

	function calculate() {
	  var value = document.getElementById("textarea").value;

	  var answer = eval(value);

	  document.getElementById("textarea").value = answer;
	}

	function clr() {
	  document.getElementById("textarea").value = "";
	}

  </script>
</body>

</html>