class UsersController < ApplicationController
  def new
    @title = "Sign up"
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
    @title = @user.name
  end

  def create
    #:user is hash {:name => ,:email=> ,,,}from input name="user[OOO]"
    @user = User.new(params[:user])
    if @user.save
      #Handle a successful save.
      flash[:success] = "Welcome to the Sample App!"
      redirect_to @user
    else
      @title = "Sign up"
      render "new"
    end
  end

end
