require  'spec_helper'

# first rspec file

feature 'Guest visits homepage' do 
  scenario 'learn about the application' do
    #visit '/'   # capybara  
    visit root_path   # capybara  

    # expect and to come from rspec
    # have_* comes from capybara
    expect(page).to have_content('Welcome to Todos!')
    expect(page).to have_css('h1', text: 'Welcome to Todos!')
    expect(page).to have_css('[data-role="description"]')
    expect(page).to have_title('Todos')
  end
end
