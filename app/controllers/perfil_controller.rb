class PerfilController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :destroy, :update, :edit, :index]
  def index

  end

end
