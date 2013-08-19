require  'spec_helper'

def create_todo_named(name)
  visit root_path
  click_on 'Add new todo'
  fill_in 'Name', with: name
  click_on 'Submit'
end

def display_todo_named(name)
  have_css('.todos li', text: name)
end

feature 'Guest creates todo' do 
  scenario 'create a todo item' do
    create_todo_named 'Buy milk'

    expect(page).to display_todo_named 'Buy milk'
  end
end
