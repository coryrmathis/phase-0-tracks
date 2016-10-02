require_relative "word_game"

describe WordGame do
	let(:game) { WordGame.new("green")}

	it "stores the word upon initialization" do
		expect(game.word?).to eq "green"
	end

	it "sets a guess limit equal to length of word + 4" do
		expect(game.guess_limit).to eq 9
	end

	it "creates a string of underscores whose length equals length of word" do
		expect(game.word_status?).to eq "_____"
	end

	it "accepts a letter guess and confirms or denies it's presence" do
		expect(game.letter_guess("g")).to eq true
		expect(game.letter_guess("a")).to eq false
	end

	it "accepts a correct letter guess, updates @word_status, and @guessed_letters" do
		game.letter_guess("g")
		expect(game.correct_guess("g")).to eq "g____"
		expect(game.word_status?).to eq "g____"
		expect(game.guessed_letters).to include("g")
	end

	it "accepts an incorrect letter guess, updates @word_status, and @guessed_letters" do
		game.letter_guess("a")
		expect(game.incorrect_guess("a")).to eq "_____"
		expect(game.word_status?).to eq "_____"
		









end
