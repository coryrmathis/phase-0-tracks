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
				true
			else
				false
			end
		end
	end

	def word_status?
		puts @word_status
		@word_status
	end

	def correct_guess
	end

	def incorrect_guess
	end

	def guessed_letters
	end

	def win
	end

	def lose
	end
end