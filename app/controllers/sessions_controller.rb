class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      sign_in(user)
      redirect_to root_path
    else
      redirect_to login_path, notice: "Nombre de Usuario o contraseña equivocada, vuelva a digitarla o registrese"
      #render :new,
    end
  end

  def destroy
    sign_out
    redirect_to root_path
  end
end
