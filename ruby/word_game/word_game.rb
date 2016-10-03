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
		@word_status.split("")
		@word_status[@word.index(letter)] = letter
		@word_status
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
	end

	def lose
	end
end


# @word_status.split("")
# @word_status[@word_status.index(letter)] = letter