class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new user_detail
    @user.id = '4'
    if @user.save
      MailerJob.perform_later @user
      flash[:success] = "User was successfully created."
      redirect_to action: :new
    else
      flash[:error] = @user.errors.full_messages[0]
      redirect_to action: :new
    end
  end

  private
    def user_detail
      params.require(:user).permit(:lastname, :firstname, :password, :email)
    end
end
