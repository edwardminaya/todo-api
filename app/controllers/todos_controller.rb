class TodosController < ApplicationController
  def index
    @todos = Todo.all
    render :index
  end

  def create
    @todo = Todo.create(
      title: params[:title],
      done: false,
    )
    render :show
  end

  def show
    @todo = Todo.find_by(id: params[:id])
    render :show
  end
end
