require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the definition path', {:type => :feature}) do
  it('visits the index page') do
    visit('/')
    expect(page).to have_content("Welcome to this Site!")
  end
end
