class UsersController < ApplicationController
 
 load_and_authorize_resource

def index
    @q = User.search(params[:q])
    @users = @q.result(:distinct => true)
    @users = User.all
    flash.now[:alert] = "No corresponding user" if @userss.size == 0
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @courses }
    end
  end


  def search
    index 
    render :index
  end

  def new
    @user = User.new

  end

  def create
    @user = User.new(params[:user])
    @user.role = 'student'
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_path
  else
    render 'new'
  end
end
end
  