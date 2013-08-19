class TodosController < ApplicationController

  def new
    @todo = Todo.new
  end

  def create
    # replace attr_accessible
    @todo = Todo.new todo_params 
    #@todo = current_user.todos.create params[:todo].permit(:name)
    if @todo.save
      redirect_to todos_path
    else 
      render :new
    end
  end

  def todo_params
    params.require(:todo).merge(:owner_email => current_email ).permit(:name, :owner_email)
  end

  def index
    @todos = Todo.where( :owner_email => current_email )
    #@todos = current_user.todos
  end
end
