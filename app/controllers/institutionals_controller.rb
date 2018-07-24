class InstitutionalsController < ApplicationController
  before_action :set_institutional, only: [:show, :edit, :update, :destroy]

  # GET /institutionals
  # GET /institutionals.json
  def index
    @institutionals = Institutional.all
  end

  # GET /institutionals/1
  # GET /institutionals/1.json
  def show
  end

  # GET /institutionals/new
  def new
    @institutional = Institutional.new
  end

  # GET /institutionals/1/edit
  def edit
  end

  # POST /institutionals
  # POST /institutionals.json
  def create
    @institutional = Institutional.new(institutional_params)

    respond_to do |format|
      if @institutional.save
        format.html { redirect_to @institutional, notice: 'Institutional was successfully created.' }
        format.json { render :show, status: :created, location: @institutional }
      else
        format.html { render :new }
        format.json { render json: @institutional.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /institutionals/1
  # PATCH/PUT /institutionals/1.json
  def update
    respond_to do |format|
      if @institutional.update(institutional_params)
        format.html { redirect_to @institutional, notice: 'Institutional was successfully updated.' }
        format.json { render :show, status: :ok, location: @institutional }
      else
        format.html { render :edit }
        format.json { render json: @institutional.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /institutionals/1
  # DELETE /institutionals/1.json
  def destroy
    @institutional.destroy
    respond_to do |format|
      format.html { redirect_to institutionals_url, notice: 'Institutional was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_institutional
      @institutional = Institutional.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def institutional_params
      params.require(:institutional).permit(:title, :icon, :body, :category)
    end
end
