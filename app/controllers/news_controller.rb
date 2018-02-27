class NewsController < ApplicationController
  def index
    @news = News.all
  end

  def show
    @news = News.find(params[:id])
  end

  def new
    @news = News.new
  end

  def create #Post
    @news = News.new(title: params[:news][:title], body: params[:news][:body])

    @news.save
    redirect_to @news
  end

end
