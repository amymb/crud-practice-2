class HatsController < ApplicationController
  def index
    @hats=Hat.all
  end

  def new
    @hat=Hat.new
  end

  def create
    @hat=Hat.new(hat_params)
    if @hat.save
      redirect_to hats_path
    else
      render :new
    end
  end


  private
  def hat_params
    params.require(:hat).permit(:style, :color, :hot)
  end
end
