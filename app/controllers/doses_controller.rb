class DosesController < ApplicationController

  def index
    @doses = Dose.all
  end

  def show
    @doses = Dose.find(params[:id])
    @review = Review.new
  end

  def new
    @doses = Dose.new
  end

  def create
    @doses = Dose.new(dose_params)
    if @doses.save
      redirect_to dose_path(@dose)
    else
      render 'new'
    end
  end

  private

  def dose_params
    params.require(:dose).permit(:name)
  end

end
