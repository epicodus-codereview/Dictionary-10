require('rspec')
require('word')

describe(Word) do
  before() do
    Word.clear()
  end

  describe('#name') do
    it("returns the name of the word") do
      test_word = Word.new("flower")
      expect(test_word.name()).to(eq("flower"))
    end
  end

  describe(".all") do
    it("creates an empty array at first") do
      expect(Word.all()).to(eq([]))
    end
  end

  describe("#save") do
  it("adds a description to the array of saved words") do
    test_word = Word.new("flower")
    test_word.save()
    expect(Word.all()).to(eq([test_word]))
  end
end

describe(".clear") do
    it("empties out all of the saved words") do
      Word.new("flower").save()
      Word.clear()
      expect(Word.all()).to(eq([]))
    end
  end
end
