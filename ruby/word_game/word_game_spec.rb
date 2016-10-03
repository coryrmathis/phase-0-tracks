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
# TEST 3:
	it "creates a string of underscores whose length equals length of word" do
		expect(game.word_status?).to eq "_____"
	end
#TEST 4: PASS
	it "accepts a letter guess and confirms or denies it's presence" do
		expect(game.letter_guess("g")).to eq true
		expect(game.letter_guess("a")).to eq false
	end
#TEST 5:
	it "checks if letter has been guessed already" do
		game.letter_guess("g")
		expect(game.check_letter("g")).to eq true
		expect(game.check_letter("a")).to eq false
	end
#TEST 6:
	it "accepts a correct letter guess, updates @word_status, and @guessed_letters" do
		game.letter_guess("g")
		expect(game.correct_guess("g")).to eq "g____"
		expect(game.word_status?).to eq "g____"
		expect(game.guessed_letters).to include("g")
	end
#TEST 7:
	it "accepts an incorrect letter guess, updates @word_status, and @guessed_letters" do
		game.letter_guess("a")
		expect(game.incorrect_guess("a")).to eq "_____"
		expect(game.word_status?).to eq "_____"
		expect(game.guessed_letters).to include("a")
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
