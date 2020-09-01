class UserMailer < ApplicationMailer
  default from: 'thaibach33@gmail.com'

  def welcome_email
    @user = params[:user]
    mail(to: @user.email, subject: "Welcome #{@user.lastname}!")
  end
end
