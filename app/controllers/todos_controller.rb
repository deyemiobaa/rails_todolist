class TodosController < ApplicationController
  def index
    @todos = Todo.all.order(:created_at)    
  end
end
