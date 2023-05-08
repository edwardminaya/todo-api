class TodosController < ApplicationController
  def index
    if current_user
      @todos = Todo.where(user_id: current_user.id)
      render :index
    else
      render json: { message: "Must be logged in to see tasks" }
    end
  end

  def create
    if current_user
      @todo = Todo.create(
        title: params[:title],
        done: false,
        user_id: current_user.id,
      )
      render :show
    else
      render json: { message: "Must be logged in to create task" }
    end
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
