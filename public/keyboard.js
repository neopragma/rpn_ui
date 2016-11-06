function captureKeyCodes() {
  $(document).ready(function() {
    $(document).keypress(function(event) {
  	  var key = event.keyCode;
  	  switch(true) {
  	    case ([13, 32].indexOf(key) > -1):  // enter or spacebar
  	      enter();
  	      break;
  	    // operators % * + - / ^
  	    case ([37, 42, 43, 45, 47, 94].indexOf(key) > -1):
  	      appendValue(String.fromCharCode(key)+' ');
  	      break;
  	    // operator 'r' for 'root'
  	    case (key == 114):
  	      appendValue('√ ');
  	      break;
  	    // 's' for 'submit'
  	    case (key == 115):
  	      submit();
  	      break;
  	    // decimal point
  	    case (key == 46):  
  	      appendValue('.');
  	      break;
  	    // numerals
  	    case (key >= 48 && key < 58):  
  	      appendValue(event.keyCode - 48);
  	      break;
  	    // backspace or delete
  	    case ([8, 43, 127].indexOf(key) > -1):
  	      eraseLast();
  	      break;
  	    // C or c
  	    case ([67, 99].indexOf(key) > -1):
  	      clearForm();
  	      break;
  	    default:
  	      break;  
  	  }
    }); 
  });
}

