class NewsController < ApplicationController
  before_action :authenticate_admin!, except: [:index, :show]
  def index
    #Obtiene todos los registros en la tabla
    @news = News.all
  end

  def show
    #Encontrar un rigistro por id
    @news = News.find(params[:id])
    @comment = Comment.new
  end

  def new
    @news = News.new
  end

  def create #Post
    @news = current_admin.news.new(news_params)

    if @news.save
      redirect_to @news
    else
      render :new
    end

  end

  def edit
    @news = News.find(params[:id])
  end

  def update
    @news = News.find(params[:id])
    if @news.update(news_params)
      redirect_to @news
    else
      render :edit
    end
  end

  def destroy
    @news = News.find(params[:id])
    @news.destroy #elimina el objeto de la base de datos Xb
    redirect_to news_index_path
  end

  private

    def news_params
      params.require(:news).permit(:title, :img , :body)
    end

end
