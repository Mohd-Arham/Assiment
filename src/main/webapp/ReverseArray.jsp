<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
 .b{
 font-size: 25px;

 }
  div{
 text-align: center;
 }
 .a{
 
 background-color: blue; color:white; font-weight: bold; cursor: pointer;
 padding:10px; font-size: 15px;
 }

</style>
</head>
<body>
<div>
<h1>Decending Array Order</h1>


<p id="output1" class="b"></p>


<p id="output" class="b"></p>

<a href="Calculator.jsp" ><Button class="a" >Calculator Programe</Button></a>
</div>
<script type="text/javascript">
function sortDescending(arr) {
	  // Use the sort() method with a custom comparison function
	  arr.sort(function(a, b) {
	    return b - a; // Compare in descending order
	  });
	}

	const arrayToSort = [3,2,5,4,8,0,1,2];
	const output1=document.getElementById("output1")
	output1.textContent="Before Decending Array " + arrayToSort;
	// Call the sorting function
	sortDescending(arrayToSort);

	
const output = document.getElementById("output");
output.textContent = "Afer Decending Array: " + arrayToSort;
</script>
</body>
</html>