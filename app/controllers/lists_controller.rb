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
end
