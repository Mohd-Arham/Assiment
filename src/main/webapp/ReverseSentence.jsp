<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <title>Reverse Words in a Sentence</title>
 <style>
 .a{
 
 background-color: blue; color:white; font-weight: bold; cursor: pointer;
 padding:10px; font-size: 15px;
 }
 .b{
 font-size: 25px;
font-weight: bold;
color: red;
 }
 div{
 text-align: center;
 }
 div label {
	font-size: 25px;
}
button{
	font-size: 20px;
}
input{
font-size: 20px;
}

 </style>
</head>
<body>
<div>
<h1>Reverse Words in a Sentence</h1>
<form id="reverseForm">
        <label  for="sentence">Enter a sentence: </label>
        <input type="text" id="sentence" required>
        <button type="button" onclick="reverseWords()">Reverse</button>
    </form>
    
 <p id="output" class="b"></p>
 
 <h1>Check Second Programe Click Button</h1>
 
 
<a href="ReverseArray.jsp" ><Button class="a" >Second Programe</Button></a>
</div>
 <script>
 function reverseWords() {
     // Get the input sentence from the input field
     const sentenceInput = document.getElementById("sentence");
     const sentence = sentenceInput.value;

     // Split the sentence into words, reverse them, and join back
     const reversedSentence = sentence.split(' ').map(word => {
         return word.split('').reverse().join('');
     }).join(' ');

     // Display the reversed sentence
     const output = document.getElementById("output");
     output.textContent = "Reversed Sentence: " + reversedSentence;
 }

    </script>
    
    
</body>
</html>