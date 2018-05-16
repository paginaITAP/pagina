class NewspapersController < ApplicationController
  before_action :authenticate_admin!, except: [:index, :show]

  def index
    @newspapers = Newspaper.all
  end

  def show
    @newspaper = Newspaper.find(params[:id])
  end

  def new
    @newspaper = Newspaper.new
  end

  def create #Post
    @newspaper = current_admin.newspaper.new(newspaper_params)

    if @newspaper.save
      redirect_to @newspaper
    else
      render :new
    end

  end

  def edit
    @newspaper = Newspaper.find(params[:id])
  end

  def update
    @newspaper = Newspaper.find(params[:id])
    if @newspaper.update(newspaper_params)
      redirect_to @newspaper
    else
      render :edit
    end
  end

  def destroy
    @newspaper = Newspaper.find(params[:id])
    @newspaper.destroy #elimina el objeto de la base de datos Xb
    redirect_to newspapers_path
  end

  private

    def newspaper_params
      params.require(:newspaper).permit(:title, :img , :body)
    end
end
