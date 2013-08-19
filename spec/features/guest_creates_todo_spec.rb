require  'spec_helper'

feature 'Guest creates todo' do 
  scenario 'create a todo item' do
    visit root_path
    click_on 'Add new todo'
    fill_in 'Name', with: 'Buy milk'
    click_on 'Submit'

    expect(page).to have_css('.todos li', text: 'Buy milk')
    #puts current_path
  end
end
