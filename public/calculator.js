function appendValue(value) {
  document.getElementById("expression").innerHTML+=value;
  document.getElementById("exprdata").value+=value;
}
function clearForm() {
  document.getElementById("answer").innerHTML=" ";
  document.getElementById("expression").innerHTML=" ";
  document.getElementById("exprdata").value=" ";
  document.location="/";
}
function eraseLast() {
  expression().innerHTML=expression().innerHTML.slice(0,-2);
  exprdata().value=expression().innerHTML;
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

function exprdata() {
  return document.getElementById("exprdata");
}

function submit() {
  document.getElementById("calcform").submit();
}

