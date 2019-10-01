class MisPublicationsController < ApplicationController
    before_action :authenticate_user!, only: [:new, :create, :destroy, :update, :edit, :index]
    def index
        @publications = Publication.paginate(page: params[:page], per_page: 5)
                                   .order(id: :desc)
                                   .where user_id: current_user.try(:id)
    end
end
