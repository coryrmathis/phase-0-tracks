# Word Game Class Pseudocode

# 1. On initialization the class will accepts a word and sets a guess limit based on how many letters are in the word.  Also create a string of underscores with a length equal to the word. (“________”) Maybe call it player_guesses
# 2. Method which accepts a letter guess and searches the word for the letter.
# If the letter is present, return true, if not, return false.
# 3. Method which stores guessed letters and compares them with the inputted letter. If letter has already been guessed, return true, otherwise, return false
# 4. Method which, when a correct letter is guessed, replaces the correctly indexed character in the underscore string.
# 5. An end of game method which prints a congrats if they win and a taunt if they lose

class WordGame
	attr_accessor :word_status, :guess_count, :word

	def initialize(word)
		@word = word
		@guess_count = @word.length + 4
		@guessed_letters = []
		@word_status = "_" * @word.length
	end

	def letter_guess(letter)
		if @guessed_letters.include?(letter) == true
			nil
		else
			@guessed_letters << letter
			@guess_count -= 1
			if @word.include?(letter) == true
				update_word_status(letter)
				true
			else
				false
			end
		end
	end

	def update_word_status(letter)
		@word_status_array = @word_status.split("")
		@new_word_status_array = []
		count = 0
		until count == @word.length
		@word_status_array.each do |character|
			if letter == @word[count]
				@new_word_status_array << letter
			else
				@new_word_status_array << character
			end
			count += 1
		end
	end
		@word_status = @new_word_status_array.join("")
	end

	def end_game
		if @word_status == @word
			puts "-" * 100
			puts "Congrats, you won before you ran out of guesses"
			puts "-" * 100
		elsif @guess_count == 0
			puts "-" * 100
			puts "Sorry, you're out of guesses. The word was '#{@word}'"
			puts "-" * 100
		end
	end

end


#USER INTERFACE
puts ""
puts "-" * 100
puts "Welcome to Letter Guess!"
puts "-" * 100
puts ""
puts "Player 1: Please enter a word. All lowercase please!"
game_1 = WordGame.new(gets.chomp)

until game_1.guess_count == 0 || game_1.word == game_1.word_status
puts ""
puts "-" * 100
puts "Player 2: You have #{game_1.guess_count} guesses left. Guess a letter. Lowercase please!"
puts "-" * 100
puts ""
letter = gets.chomp
guess = game_1.letter_guess(letter)
if guess == nil
	puts ""
	puts "-" * 100
	puts "You already guessed that letter!"
	puts "-" * 100
	puts ""
elsif guess == true
	puts ""
	puts "-" * 100
	puts "Nice guess! The word does contain a #{letter}."
	puts "Word Status: #{game_1.word_status}"
	puts "-" * 100
	puts ""
elsif guess == false
	puts ""
	puts "-" * 100
	puts "Sorry the word doesn't contain #{letter}'s."
	puts "-" * 100
	puts ""
end
end

game_1.end_game










