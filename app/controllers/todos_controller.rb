class TodosController < ApplicationController
  def index
    @todos = Todo.all  
    @todo = Todo.new 
  end

  def create
    @todo = Todo.create(description: params[:todo][:description])
    if @todo.valid?
      redirect_to root_path
    else
      render :index
    end
  end
end
