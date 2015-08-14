require ('sinatra')
require ('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/definition')

get('/') do
  erb(:index)
end

get('/definitions') do
  @definitions = Definition.all
  erb(:definitions)
end

get('/definitions/new') do
  erb(:definitions_form)
end

post('/definitions') do
  part_of_speech = params.fetch('part_of_speech')
  describe = params.fetch('describe')
  definition = Definition.new(part_of_speech, describe)
  definition.save()
  @definitions = Definition.all()
  erb(:definitions)
end

get('/definition/:id') do
  @definition = Definition.find(params.fetch('id').to_i())
  erb(:definition)
end
