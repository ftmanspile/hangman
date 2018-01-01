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
$possible_guesses = ('a'..'z').to_a
def user_input()
	puts "Your word contains #{$letter_count}"
	puts "You have #{$turns} turns left."
	$turns = $turns - 1
	print $possible_guesses
	$letter = gets.chomp();
	$letters_guessed.push($letter)
	puts $letters_guessed
	$possible_guesses = $possible_guesses - $letters_guessed
	print $possible_guesses
	if ($letter.length) > 1
		puts "Invalid input!"
		play_game
	end
end

play_game


while $turns >= 1 
	user_input
end
if $turns == 0
	print "YOU DIED"
end
#elsif $letter == $word
	#print ("Congrats")









# def game_over()
# 	(turns == 0) || ($letter.eql($word))
# 	abort ("")
# end

