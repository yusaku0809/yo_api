class UsersController < ApplicationController
  def index
    tmp = {'name' => 'Yamada!!!!!!!!!!!', 'old' => 28}
    render :json => tmp
  end

  def show
    @user = User.find_by_name(params[:name])
    render json: @user
  end

  def create
    @newUser = User.create(user_params)
      render :json => @newUser, status: :created # JSON形式
  end

  def user_params
    params.permit(:name, :pass, :gcm_id)
  end

end
