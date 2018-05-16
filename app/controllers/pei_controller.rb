class PeiController < ApplicationController
  before_action :authenticate_admin!, except: [:index, :show]

  def index
  end
end
