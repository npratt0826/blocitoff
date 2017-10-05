class UserMailer < ApplicationMailer
  default from: 'nicholasapratt@gmail.com'

  def welcome_email(user)
    @user = user
    @url  = Rails.env.production? ? 'https://agile-headland-52552.herokuapp.com' : 'http://localhost:3000/login'
    mail(to: @user.email, subject: 'Welcome to Blocitoff')
  end
end
