require  'spec_helper'

feature 'User marks todo complete' do 
  scenario 'mark todo complete' do
    create_todo_named 'raise hell'
    
    mark_todo_complete 'raise hell'

    expect(page).to have_completed_todo('raise hell')
  end

  def mark_todo_complete(name)
    find('.todos li', text: name).click_on 'Mark complete'
  end

  #   "expect to have ..." ==> "has ... ?"
  def have_completed_todo(name)
    have_css('.todos li.completed', text: name)
  end

end
