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
//  value = expression().innerHTML;
//  value = value.rstrip.value[0...value.rindex(' ')];
//  expression().innerHTML=value;
//  exprdata().value=value;
//  if (expression().innerHTML == "") {
    clearForm();
//  }
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

