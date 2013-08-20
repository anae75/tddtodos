require  'spec_helper'

feature 'User creates todo', js: true do 
  scenario 'create a todo item' do
    # XXX using page objects
    sign_in
    todo_on_page = TodoOnPage.new('Buy milk')
    todo_on_page.create

    expect(todo_on_page).to be_visible
    page.should_not have_content "fooof"
  end
end
