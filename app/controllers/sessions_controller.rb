class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      # 登入用户, 然后重定向到用户的资料页面
    else
      # 创建一个错误消息
      render 'new'
    end
  end
  
  def destroy
  end
end