require ('sinatra')
require ('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/definition')
require('./lib/word')

get('/') do
  erb(:index)
end

get('/words/new') do
  erb(:words_form)
end

get('/words') do
  @words = Word.all()
  erb(:words)
end

post('/words') do
  name = params.fetch('name')
  Word.new(name).save()
  @words = Word.all()
  erb(:success_word)
end

get('/definitions') do
  @definitions = Definition.all
  erb(:definitions)
end

get('/definitions/new') do
  erb(:definitions_form)
end

get('/definition/:id') do
  @definition = Definition.find(params.fetch('id').to_i())
  erb(:definition)
end

get ('/words/:id') do
  @word =Word.find(params.fetch('id').to_i())
  erb(:word)
end

get('/words/:id/definitions/new') do
  @word = Word.find(params.fetch('id').to_i())
  erb(:word_definitions_form)
end

post('/definitions') do
  part_of_speech = params.fetch('part_of_speech')
  describe = params.fetch('describe')
  @definition = Definition.new(part_of_speech, describe)
  @definition.save()
  @word = Word.find(params.fetch('word_id').to_i())
  @word.add_definition(@definition)
  erb(:success_definition)
end
