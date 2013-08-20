require  'spec_helper'

feature 'User marks todo complete' do 
  scenario 'mark todo complete' do
    sign_in

    todo_on_page = TodoOnPage.new('raise hell')
    todo_on_page.create
    todo_on_page.mark_complete
    
    expect(todo_on_page).to be_completed
  end

  # XXX superseded by TodoOnPage
  #
  #  def mark_todo_complete(name)
  #    find('.todos li', text: name).click_on 'Mark complete'
  #  end
  #  
  #     "expect to have ..." ==> "has ... ?"
  #  def have_completed_todo(name)
  #    have_css('.todos li.completed', text: name)
  #  end

end
