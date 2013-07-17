class UsersController < ApplicationController
 
 load_and_authorize_resource

 def search
   @q = User.search(params[:q])
   @users = @q.result(:distinct => true)

  end
  
  def index 
  @users = User.all
  end

  def new
    @user = User.new

  end

  def create
    @user = User.new(params[:user])
    if @user.save
      redirect_to users_path
  else
    render 'new'
  end
end
end
  