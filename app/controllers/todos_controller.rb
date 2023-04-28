class TodosController < ApplicationController
  def index
    @todos = Todo.order("created_at DESC")
    render :index
  end

  def create
    @todo = Todo.create(
      title: params[:title],
      done: false,
      user_id: current_user.id,
    )
    render :show
  end

  def show
    @todo = Todo.find_by(id: params[:id])
    render :show
  end

  def update
    @todo = Todo.find_by(id: params[:id])
    @todo.update(
      title: params[:title] || @todo.title,
      done: params[:done] || @todo.done,
    )
    render :show
  end

  def destroy
    @todo = Todo.find_by(id: params[:id])
    @todo.destroy
    render json: { message: "task destroyed successfully" }
  end
end
