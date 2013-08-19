class TodosController < ApplicationController

  def new
    @todo = Todo.new
  end

  def create
    # replace attr_accessible
    @todo = Todo.new todo_params 
    if @todo.save
      #redirect_to :controller => :todos, :action => :index
      redirect_to todos_path
    else 
      render :new
    end
  end

  def todo_params
    #params.require(:todo).merge(:owner_email =>session[:current_email]).permit(:name, :owner_email)
    params.require(:todo).merge(:owner_email => session[:current_email]).permit(:name, :owner_email)
  end

  def index
    @todos = Todo.where( :owner_email => session[:current_email] )
  end
end
