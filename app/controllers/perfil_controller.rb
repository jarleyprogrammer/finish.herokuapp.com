class PerfilController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :destroy, :update, :edit, :index]
  def index

  end


  def public_params
    params.require(:user).permit(:name, :surname)
  end
end
