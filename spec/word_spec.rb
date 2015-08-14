require('rspec')
require('word')
require('definition')

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

  describe('#descriptions') do
    it("initially returns an empty array of descriptions for the words") do
      test_word = Word.new("flower")
      expect(test_word.descriptions()).to(eq([]))
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

  describe('#id') do
    it("returns the id of the word") do
      test_word = Word.new("flower")
      test_word.save()
      expect(test_word.id()).to(eq(1))
    end
  end

  describe(".find") do
    it("returns a word by its id number") do
      test_word = Word.new("flower")
      test_word.save()
      test_word2 = Word.new("bug")
      test_word2.save()
      expect(Word.find(test_word.id())).to(eq(test_word))
    end
  end

  describe('#add_definition') do
    it("adds a new definition to a word") do
      test_word = Word.new("flower")
      test_definition = Definition.new("noun", "seed-bearing part of a plant")
      test_word.add_definition(test_definition)
      expect(test_word.descriptions()).to(eq([test_definition]))
    end
  end
end
