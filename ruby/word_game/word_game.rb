class WordGame

	def initialize(word)
		@word = word
		@guess_count = @word.length + 4
		@guessed_letters = []
		@word_status = "_" * @word.length
	end

	def word?
		puts @word
		@word
	end

	def guess_count
		puts @guess_count
		@guess_count
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

	def word_status?
		puts @word_status
		@word_status
	end

	def end_game
		if @word_status == @word
			win
		elsif @guess_count == 0
			lose
		end
	end

	def win
		"Congrats, you won before you ran out of guesses"
	end

	def lose
		"Sorry, you're out of guesses. The word was '#{@word}'"
	end
end

