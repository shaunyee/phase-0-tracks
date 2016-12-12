
function longest_word(str){
  
  var array = ["long phrase","longest phrase","longer phrase"];
  var lgth = 0;
  var longestString;
  for (var i = 0; i < array.length; i++) {
    if(array[i].length > lgth){
      lgth = array[i].length;
      longestString = array[i];
    }
  }
   console.log(longestString);
}
longest_word()

var a = {name: "Steven", age: 54};
var b = {name: "Tamir", age: 54};

function arraycheck(a, b) {
  var match = false;

  if (b.length < a.length) {
    var t = a;
    a = b;
    b = t;
  } 

  for (var key in a) {
    if (match === false) {
      if (a[key] == b[key]) match = true;
    }
  }

  return match;  
}
arraycheck(a,b);


function randomwords(quantity) {
  var letters = "abcdefghijklmnopqrstuvxyz";
  
  var result = [];

  for (var x = 1; x <= quantity; x++) {
    var length = Math.ceil(Math.random() * 10);
    var word = "";

    for (var char = 1; char <= length; char++) {
      var letter = letters.charAt(Math.floor(Math.random() * letters.length));
      word += letter;
    }
    
    result.push(word);
  }

  return result;
}

var random = randomwords(6);

console.log(random);
