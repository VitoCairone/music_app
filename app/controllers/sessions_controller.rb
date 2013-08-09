class SessionsController < ApplicationController

  def give_token
    @user.session_token = SecureRandom.urlsafe_base64(16)
    @user.save!
    session[:session_token] = @user.session_token
  end

  def login
    @user = User.find_by_email(params[:login][:email])
    if @user.password == params[:login][:password]
      give_token
      true
    else
      flash[:notices] ||= []
      flash[:notices] << "Bad username or password"
      redirect_to new_sessions_url
      false
    end
  end

  def create
    redirect_to bands_url if login
  end

  def new
    render :new
  end

end
