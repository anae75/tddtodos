require 'spec_helper'

feature 'User only sees own todos' do 
  scenario 'user only sees own todos' do
    #FactoryGirl.create :todo, :name => 'conquer world', :owner_email => 'evil@overlord.com'
    Todo.create! :name => 'conquer world', :owner_email => 'evil@overlord.com'

    sign_in_as 'me@example.com'
    
    expect(page).not_to display_todo_named('conquer world')
  end
end
