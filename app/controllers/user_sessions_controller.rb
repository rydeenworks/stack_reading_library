class UserSessionsController < ApplicationController
  skip_before_action :require_login, only: [:new, :create]
  
  def new
    @user = User.new
  end

  def create
    @user = login(params[:email], params[:password])

    if @user
#       redirect_back_or_to(root_url, notice: 'ログインに成功しました')
      redirect_to(root_url, notice: 'ログインに成功しました')
    else
      flash.now[:alert] = 'ログインに失敗しました'
      render action: 'new'
    end
  end

  def destroy
    logout
    redirect_to(root_url, notice: 'ログアウトしました')
  end
end
