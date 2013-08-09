class UserMailer < ActionMailer::Base
  default from: "Kevin Colten <kevincolten@musicapp.com>"


  def activation_email(user)
    @user = user
    @user.activation_token = SecureRandom.urlsafe_base64(16)
    @user.save!
    @url = "localhost:3000/users/activation?token=#{@user.activation_token}"
    mail(to: user.email, subject: "Activation for our music app!")
  end

end