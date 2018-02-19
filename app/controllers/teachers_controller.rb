class TeachersController < ApplicationController

  #Get /teachers
  def index
    @teachers = Teacher.all
  end

  #Get /teachers/:id
  def show
    @teacher = Teacher.find(params[:id])
  end

  #Get /teachers/new
  def new
    @teacher = Teacher.new
  end
end
