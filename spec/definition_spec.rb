require('rspec')
require ('definition')

describe(Definition) do
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
