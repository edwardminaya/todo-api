class ListsController < ApplicationController
  def index
    if current_user
      # Find way to get tasks that have done attribute set to false
      @lists = List.where(user_id: current_user)
      render :index
    else
      render json: { message: "Must be logged in to see lists" }
    end
  end

  def create
    if current_user
      @list = List.create(
        list_name: params[:list_name],
        user_id: current_user.id,
      )
      render :show
    else
      render json: { message: "Must be logged in to create list" }
    end
  end

  def show
    @list = List.find_by(id: params[:id])
    render :show
  end

  def update
    @list = List.find_by(id: params[:id])
    @list.update(
      list_name: params[:list_name] || @list.list_name,
    )
    render :show
  end
end
