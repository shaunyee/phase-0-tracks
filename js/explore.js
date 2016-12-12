// Code will take user promt and ask for their name
// will display Hello and the information typed in the prompt
// The function reverse will take the information from the user prompt
  // it will split the sting by each letter using .split
  // then it will reverse the order using .reverse
  // it will then join the word back together with the .join method
  // method will then print to the console their new reversed name
//driver code will store the reversed name as new_name
  //then it will run an if statment to check if new_name is equal to the old name to make sure it changed
  //if it did not change, it will return "OOPS"
  //if it did change, it will return "Yay!!"

name = prompt("please enter your name"); {
console.log("Hello "+ name)}
  
function reverse(name) {
  console.log("Your new name is " + name.split('').reverse().join(''));
  
}
new_name = reverse(name)

if (new_name == name){
console.log("OOPS");
}else{ 
console.log("Yay!!")
}