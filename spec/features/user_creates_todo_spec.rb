require  'spec_helper'

feature 'User creates todo' do 
  scenario 'create a todo item' do
    create_todo_named 'Buy milk'

    expect(page).to display_todo_named 'Buy milk'
  end
end
