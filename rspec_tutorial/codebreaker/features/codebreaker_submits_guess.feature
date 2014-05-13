Feature: code-breaker submits guess

	 The Code-breaker submits a guess of four numbers.  The game marks the guess
	 with + and - signs.

	For each number in the guess that matches the number and position of a number
	in the secret code, the mark includes one + sign. For each number in the guess
	that matches the number but not the position of a number in the secret code,
	the mark includes one - sign.

  	Scenario Outline: submit guess
  		Given the secret code is "<code>"
  		When I guess "<guess>"
  		Then the mark should be "<mark>"

  		Scenarios: no matches
  			| code 	| guess | mark 	|
  			| 1234 	| 6665	| 		|
  		Scenarios: 1 number correct
  			| code 	| guess	| mark 	|
  			| 1234	| 5651	| -		|
  		Scenarios: 1 number(w/position) correct
  			| code 	| guess | mark 	|
  			| 6545	| 2843	| +		|
  			| 1234	| 6544	| +		|
  		Scenarios: 1 number(w/position), 1 number correct
  			| code 	| guess | mark 	|
  			| 5432	| 5398	| +-	|
  			| 9785	| 7791	| +-	|
  		Scenarios: 2 numbers(w/position), 2 numbers correct
  			| code 	| guess | mark 	|
  			| 1234	| 1432	| ++--	|
  		Scenarios: 4 numbers correct
  			| code 	| guess | mark 	|
  			| 2345	| 5432	| ----	|
  		Scenarios: 4 numbers(w/position) correct
  			| code 	| guess | mark 	|
  			| 3456	| 3456	| ++++	|



