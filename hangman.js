$(document).ready(function(event){

$('h1').click(function() {
		$(this).text('Clicked!');
	});
	
    var letterArray = ['f','i','s','h'];
    var guessesArray = [];
    var board = document.getElementById("board");
    var field = document.getElementById("field");
    var button = document.getElementById("button");
    
    var guessesLeft = 10;

// <input name="buttonExecute" onclick="execute(document.getElementById('textbox1').value)" type="button" value="Execute" />


 function guessedLetter(guess){

      for(i = 0; i < letterArray.length; i += 1)
  		if (guess == letterArray[i]){
  			console.log(letterArray[i]);
        }
      else { boardArray.push(guess) 
    		}

    }	



  button.addEventListener('click', guessedLetter);

// when a letter is guessed, we must iterate through each character
// how do I pass the letter guessed from board to user?









});






// letterArray.indexOf("s")




