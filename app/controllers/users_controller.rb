class UsersController < ApplicationController
  def index
    tmp = {'name' => 'Yamada', 'old' => 28}
    render :json => tmp
  end

  def show
  end
end
