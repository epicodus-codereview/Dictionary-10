require('rspec')
require ('definition')

describe(Definition) do
  before() do
    Definition.clear()
  end
end

describe('#part_of_speech') do
  it ("returns the part of speech of the definition") do
  test_definition = Definition.new("noun", "moister condensed from the atmosphere")
  expect(test_definition.part_of_speech()).to(eq("noun"))
  end
end

describe('#describe') do
  it ("returns the description of the definition") do
  test_definition = Definition.new("noun", "moister condensed from the atmosphere")
  expect(test_definition.describe()).to(eq("moister condensed from the atmosphere"))
  end
end

describe(".all") do
  it("it creates an empty array for the definition") do
    expect(Definition.all()).to(eq([]))
  end
end

describe("#save") do
  it("adds a definition to an array of definitions") do
  test_definition = Definition.new("noun", "moister condensed from the atmosphere")
  test_definition.save()
  expect(Definition.all()).to(eq([test_definition]))
  end
end

describe(".clear") do
  it("clears out all the saved definitions in the array") do
  Definition.new("noun", "moister condensed from the atmosphere").save()
  Definition.clear()
  expect(Definition.all()).to(eq([]))
  end
end

describe("#id") do
  it("returns the id of the definition") do
    test_definition = Definition.new("noun", "moister condensed from the atmosphere")
    test_definition.save()
    expect(test_definition.id()).to(eq(1))
  end
end

describe(".find") do
  it("returns the definition based on id") do
    test_definition = Definition.new("noun", "moister condensed from the atmosphere")
    test_definition.save()
    test_definition2 = Definition.new("verb", "give out bright light")
    test_definition2.save()
    expect(Definition.find(test_definition.id())).to(eq(test_definition))
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
