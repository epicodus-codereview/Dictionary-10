require('rspec')
require('word')

describe(Word) do
  end

  describe('#name') do
    it("returns the name of the word") do
      test_word = Word.new("flower")
      expect(test_word.name()).to(eq("flower"))
    end
  end
