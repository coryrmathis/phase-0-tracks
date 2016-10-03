require_relative "word_game"

describe WordGame do
	let(:game) { WordGame.new("green")}
#TEST 1: PASS
	it "stores the word upon initialization and sets a guess count equal to the length of the word + 4" do
		expect(game.word).to eq "green"
		expect(game.guess_count).to eq 9
	end
#TEST 2: PASS
	it "updates the guess limit ONLY after a new guess" do
		game.letter_guess("g")
		expect(game.guess_count).to eq 8
		game.letter_guess("g")
		expect(game.guess_count).to eq 8
	end
# TEST 3: PASS
	it "creates a string of underscores whose length equals length of word" do
		expect(game.word_status).to eq "_____"
	end
#TEST 4: PASS
	it "accepts a letter guess and confirms or denies it's presence" do
		expect(game.letter_guess("g")).to eq true
		expect(game.letter_guess("a")).to eq false
	end

#TEST 5: PASS
	it "accepts a correct letter guess, updates @word_status" do
		game.letter_guess("g")
		expect(game.word_status).to eq "g____"
		game.letter_guess("r")
		expect(game.word_status).to eq "gr___"
	end
#TEST 6: PASS
	it "accepts an incorrect letter guess, doesn't update @word_status" do
		game.letter_guess("a")
		expect(game.word_status).to eq "_____"
	end
#TEST 7: PASS
	it "ends game if the user runs out of guesses" do
		#All incorrect guesses
		#@guess_count == 9
		game.letter_guess("f")
		#@guess_count == 8
		game.letter_guess("t")
		#@guess_count == 7
		game.letter_guess("a")
		#@guess_count == 6
		game.letter_guess("w")
		#@guess_count == 5
		game.letter_guess("y")
		#@guess_count == 4
		game.letter_guess("z")
		#@guess_count == 3
		game.letter_guess("h")
		#@guess_count == 2
		game.letter_guess("u")
		#@guess_count == 1
		game.letter_guess("i")
		#@guess_count == 0
		expect(game.end_game).to eq "Sorry, you're out of guesses. The word was 'green'"
	end
#TEST 8:
	it "ends game if user gets all letters before running out of guesses" do
		#@guess_count == 9
		game.letter_guess("f")
		#@guess_count == 8
		game.letter_guess("g")
		#@guess_count == 7
		game.letter_guess("a")
		#@guess_count == 6
		game.letter_guess("r")
		#@guess_count == 5
		game.letter_guess("e")
		#@guess_count == 4
		game.letter_guess("e")
		#@guess_count == 3
		game.letter_guess("n")
		#@guess_count == 2
		expect(game.end_game).to eq "Congrats, you won before you ran out of guesses"
	end

#TEST 9:
	it "prints congrats method if user wins" do
		expect(game.win).to eq "Congrats, you won before you ran out of guesses"
	end
#TEST 10:
	it "prints consolation method if user loses and reveal word" do
		expect(game.lose).to eq "Sorry, you're out of guesses. The word was 'green'"
	end



end
