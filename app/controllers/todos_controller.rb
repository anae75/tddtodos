class TodosController < ApplicationController

  def new
    @todo = Todo.new
  end

  def create
    #@todo = Todo.new params[:todo]
    @todo = Todo.new params.require(:todo).permit(:name)
    if @todo.save
      redirect_to :controller => :todos, :action => :index
    else 
      render :new
    end
  end

  def index
    @todos = Todo.all 
  end
end
