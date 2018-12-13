
//variables
var modal = document.querySelectorAll(".modal");
var span = document.querySelectorAll(".close");
var imgs = document.querySelectorAll(".logo");


//functions 

function opens() 
{
    modal.style.display = "block";
}

function closes() 
{ 
    modal.style.display = "none";
}

//listeners
 for(var i=0; i<span.length; i++) { 
 	span[i].addEventListener("click", closes, false);
 }
 
 for(var x=0; x<imgs.length; x++) { 
 	imgs[x].addEventListener("click", opens, false);
 }
