require_relative "word_game"

describe WordGame do
	let(:game) { WordGame.new("green")}
#TEST 1: PASS
	it "stores the word upon initialization and sets a guess count equal to the length of the word + 4" do
		expect(game.word?).to eq "green"
		expect(game.guess_count).to eq 9
	end
#TEST 2: PASS
	it "updates the guess limit after a new guess" do
		game.letter_guess("g")
		expect(game.guess_count).to eq 8
		game.letter_guess("g")
		expect(game.guess_count).to eq 8
	end
# TEST 3: PASS
	it "creates a string of underscores whose length equals length of word" do
		expect(game.word_status?).to eq "_____"
	end
#TEST 4: PASS
	it "accepts a letter guess and confirms or denies it's presence" do
		expect(game.letter_guess("g")).to eq true
		expect(game.letter_guess("a")).to eq false
	end

#TEST 5: PASS
	it "accepts a correct letter guess, updates @word_status" do
		game.letter_guess("g")
		expect(game.word_status?).to eq "g____"
		game.letter_guess("r")
		expect(game.word_status?).to eq "gr___"
	end
#TEST 6: PASS
	it "accepts an incorrect letter guess, doesn't update @word_status" do
		game.letter_guess("a")
		expect(game.word_status?).to eq "_____"
	end
#TEST 7:
	it "ends the game when @word == @word_status" do
		expect(game.word_status?).to eq "green"
	end

#TEST 8:
	it "prints congrats method if user wins" do
		expect(game.win).to eq "Congrats, you won before you ran out of guesses"
	end
#TEST 9:
	it "prints consolation method if user loses and reveal word" do
		expect(game.lose).to eq "Sorry, you're out of guesses.  The word was: green."
	end



end
