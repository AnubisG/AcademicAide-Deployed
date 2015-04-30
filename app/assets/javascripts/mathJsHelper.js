/*
$(document).ready(function(){
  var expr = document.getElementById('question'),
      result = document.getElementById('answer');

  // initialize with an example expression
  result.innerHTML = math.eval(expr.value);

  expr.oninput = function () {
    var node = null;

    try {
      // parse the expression
      node = math.parse(expr.value);

      // evaluate the result of the expression
      result.innerHTML = node.compile(math).eval();
    }
    catch (err) {
      result.innerHTML = '<span style="color: red;">' + err.toString() + '</span>';
    }
  };
});
*/