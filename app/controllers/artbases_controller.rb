class ArtbasesController < ApplicationController
  before_action :set_artbasis, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @artbases = Artbase.all
    respond_with(@artbases)
  end

  def show
    respond_with(@artbasis)
  end

  def new
    @artbasis = Artbase.new
    respond_with(@artbasis)
  end

  def edit
  end

  def create
    @artbasis = Artbase.new(artbase_params)
    @artbasis.save
    respond_with(@artbasis)
  end

  def update
    @artbasis.update(artbase_params)
    respond_with(@artbasis)
  end

  def destroy
    @artbasis.destroy
    respond_with(@artbasis)
  end

  private
    def set_artbasis
      @artbasis = Artbase.find(params[:id])
    end

    def artbasis_params
      params[:artbasis]
    end
end
