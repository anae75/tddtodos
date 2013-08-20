require 'spec_helper'

feature 'User only sees own todos' do 
  scenario 'user only sees own todos' do
    #FactoryGirl.create :todo, :name => 'conquer world', :owner_email => 'evil@overlord.com'
    Todo.create! :name => 'conquer world', :owner_email => 'evil@overlord.com'

    sign_in_as 'me@example.com'
    
    todo_on_page = TodoOnPage.new('conquer world')
    expect(todo_on_page).not_to be_visible 
  end
end
