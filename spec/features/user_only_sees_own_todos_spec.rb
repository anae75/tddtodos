require 'spec_helper'

feature 'User only sees own todos' do 
  scenario 'user only sees own todos' do
    #FactoryGirl.create :todo, :name => 'conquer world', :owner_email => 'evil@overlord.com'
    Todo.create! :name => 'conquer world', :owner_email => 'evil@overlord.com'

    visit root_path
    click_on 'Sign in'
    fill_in 'Email', with: 'me@example.com'
    click_on 'Submit'
    
    expect(page).not_to have_css('.todos li', text: 'conquer world')
  end
end
