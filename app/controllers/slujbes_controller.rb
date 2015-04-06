class SlujbesController < ApplicationController
  before_action :set_slujbe, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @slujbes = Slujbe.all
    respond_with(@slujbes)
  end

  def show
    respond_with(@slujbe)
  end

  def new
    @slujbe = Slujbe.new
    respond_with(@slujbe)
  end

  def edit
  end

  def create
    @slujbe = Slujbe.new(slujbe_params)
    @slujbe.save
    respond_with(@slujbe)
  end

  def update
    @slujbe.update(slujbe_params)
    respond_with(@slujbe)
  end

  def destroy
    @slujbe.destroy
    respond_with(@slujbe)
  end

  private
    def set_slujbe
      @slujbe = Slujbe.find(params[:id])
    end

    def slujbe_params
      params.require(:slujbe).permit(:nivel_cariera, :descriere, :competente_obligatorii, :competente_optionale, :beneficii)
    end
end
