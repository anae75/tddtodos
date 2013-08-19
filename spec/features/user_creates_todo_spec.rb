require  'spec_helper'

def create_todo_named(name)
  sign_in
  click_on 'Add new todo'
  fill_in 'Name', with: name
  click_on 'Submit'
end

feature 'User creates todo' do 
  scenario 'create a todo item' do
    create_todo_named 'Buy milk'

    expect(page).to display_todo_named 'Buy milk'
  end
end
