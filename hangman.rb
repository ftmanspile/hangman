def play_game()
require 'io/console'
puts "Hello welcome to hangman!"
print "Player 1 please enter a word for player 2 to guess."
$word = STDIN.getpass
word_letters = $word.split("")
$letter_count = word_letters.count
word_guess = ["-"] * $letter_count
print word_guess
end


$turns = 10

$letters_guessed = []

def user_input()
	possible_guesses = ('a'..'z').to_a
	puts "Your word contains #{$letter_count}"
	puts "You have #{$turns} turns left."
	$turns = $turns - 1
	print possible_guesses
	$letter = gets.chomp();
	$letters_guessed.push($letter)
	puts $letters_guessed
	possible_guesses = possible_guesses - letters_guessed
	
	if ($letter.length) > 1
		puts "Invalid input!"
		play_game
	end
end

play_game

if $turns == 0 
	abort ("")
elsif $letter == $word
	print ("Congrats")
end
while $turns >= 1 
	user_input
end







# def game_over()
# 	(turns == 0) || ($letter.eql($word))
# 	abort ("")
# end

