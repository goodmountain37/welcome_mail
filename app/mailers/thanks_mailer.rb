class ThanksMailer < ApplicationMailer
  default from:'garbage202008@gmail.com'

  def welcome_email(user)
    @user = user
    @url = 'http://localhost:3000/users/sign_in'
    mail(to: @user.email, suject: '私の素敵なサイトへようこそ') do |format|
      format.text
      format.html
    end
  end
end
