class TeachersController < ApplicationController
  before_action :authenticate_admin!, except: [:index, :show]

  def index
    @teachers = Teacher.all
  end

  def show
    @teacher = Teacher.find(params[:id])
  end

  def new
    @teacher = Teacher.new
  end

  def create
    @teacher = current_admin.teacher.new(photo_params)

    if @teacher.save
      redirect_to @teacher
    else
      render :new
    end

  end

  def edit
    @teacher = Teacher.find(params[:id])
  end

  def update
    @teacher = Teacher.find(params[:id])
    if @teacher.update(teachers_params)
      redirect_to @teacher
    end
  end

  def destroy
    @teacher = Teacher.find(params[:id])
    @teacher.destroy
    redirect_to teachers_path
  end

  private

  def teachers_params
    params.require(:teachers).permit(:name, :img , :body)
  end
end
