console.log ("I am linked");

function addGreenBorder(event) {
	console.log("here's the click event:");
	console.log(event); 
	event.target.style.border= "3px solid green";
}

var photo = document.getElementById("Backcourtdribblelogo");
photo.addEventListener("click", addGreenBorder);

function changeFont(event) {
	event.target.style.font= "italic bold 20px arial,serif";
}

var font = document.getElementById("info");
	font.addEventListener("click", changeFont);