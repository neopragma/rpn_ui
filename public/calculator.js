function appendValue(value) {
  document.getElementById("exprhead").style.display="block";
  document.getElementById("expression").style.display="block";
  document.getElementById("expression").innerHTML+=value;
}
function clearForm() {
  document.getElementById("answerhead").style.display="none";
  document.getElementById("answer").style.display="none";
  document.getElementById("answer").innerHTML=" ";
  document.getElementById("exprhead").style.display="none";
  document.getElementById("expression").style.display="none";
  document.getElementById("expression").innerHTML=" ";
}
function eraseLast() {
  expression().innerHTML=expression().innerHTML.slice(0,-2);
  if (expression().innerHTML == "") {
    clearForm();
  }
}
function enter() {
  if (expression().innerHTML.length > 0) {
    appendValue(' ');
  }
}
function expression() {
  return document.getElementById("expression");
}

function submit() {
  var postfix = document.getElementById("expression").innerHTML
  postfix = postfix.replace(/\//g,"d");
  postfix = postfix.replace(/√/g,"r");
  postfix = postfix.replace(/ /g,"/");
  postfix = postfix.replace(/\%/g,"\%25");
 
  $.getJSON("http://localhost:3000/calc/" + postfix, function (result) {
    document.getElementById("answer").innerHTML = result['rpn']['result'];
    document.getElementById("answerhead").style.display = "block";
    document.getElementById("answer").style.display = "block";
  });
}

