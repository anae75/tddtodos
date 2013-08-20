# XXX
# see https://github.com/joshuaclayton/todos/commit/2d1639bf0a8d62c67d4f162ab7ff84c2d8edf226
#

class TodoOnPage
  include Capybara::DSL

  def initialize(name)
    @name = name
  end

  def create
    click_on 'Add new todo'
    fill_in 'Name', with: @name
    click_on 'Submit'
  end

  def mark_complete
    todo_element.click_on 'Mark complete'
  end

  def visible?
    begin
      todo_element.visible?
    rescue Capybara::ElementNotFound
      false
    end
  end

  def completed?
    todo_element['class'].include? 'completed'
  end

  private

  def todo_element
    find('.todos li', text: @name)
  end
end

