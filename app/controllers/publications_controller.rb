class PublicationsController < ApplicationController
  
    #callback
  before_action :set_publica, only: [:edit, :update, :destroy]
  before_action :authenticate_user!, only: [:new, :create, :destroy, :update, :edit]

  def index
      @publications = Publication.paginate(page: params[:page], per_page: 10)
                              .all
                              .order(id: :desc) 
  end
    

  def new
      @publication = Publication.new
  end

  def create
    
    #binding.pry
    #begin
      @publication = current_user.publications.new(public_params)
      
      if @publication.save
        redirect_to publications_path
      else
        render :new
      end
  end

  def show
                    @publication = Publication.friendly.find params[:id]
                    puts "****************************"
                    puts "****************************"
                    
                    puts "****************************"
                    publication = Publication.find_by(slug: params[:id])
                    
                    @next = Publication.where("id > ?", publication.id).first
                    @prev = Publication.where("id < ?", publication.id).last
                    p @prev
  end

  def edit
      #callback
  end

  def destroy
    #callback
    @publication.destroy
    redirect_to publications_path
  end
  
  def update
    #callback
    @publication.update public_params
    redirect_to @publication
  end

  
  private

  def public_params
    params.require(:publication).permit(:title, :content, :image)
  end

  def set_publica
    @publication = Publication.friendly.find params[:id]
  end

    
end
