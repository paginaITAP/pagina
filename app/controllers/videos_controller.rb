class VideosController < ApplicationController
  before_action :authenticate_admin!, except: [:index, :show]

  def index
    @videos = Video.all
  end

  def show
    @video = Video.find(params[:id])
  end

  def new
    @video = Video.new
  end

  def create
    @video = current_admin.video.new(video_params)

    if @video.save
      redirect_to @video
    else
      render :new
    end

  end

  def edit
    @video = Video.find(params[:id])
  end

  def update
    @video = Video.find(params[:id])
    if @video.update(video_params)
      redirect_to @video
    end
  end

  def destroy
    @video = Video.find(params[:id])
    @video.destroy
    redirect_to videos_path
  end

  private

  def video_params
    params.require(:video).permit(:title, :img , :body)
  end
end
