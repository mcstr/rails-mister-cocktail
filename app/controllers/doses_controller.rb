class DosesController < ApplicationController
  before_action :set_cocktail, only: [:new, :create, :edit]
  before_action :set_dose, only: [:destroy]
  def index
    @doses = Dose.all
  end

  def new
    @dose = Dose.new
  end

  # def edit
  # end

  #  def update
  #   @dose.update(cocktail_params)
  #   if @dose.save
  #     redirect_to cocktail_path(@cocktail)
  #   else
  #     render :edit
  #   end
  # end

  def create
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new(dose_params)
    @dose.cocktail = @cocktail
    if
    @dose.save
    redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  def destroy
  @dose.destroy
  @cocktail = Cocktail.find(@dose[:cocktail_id])
  redirect_to cocktail_path(@cocktail)
  end


  private

  def set_dose
    @dose = Dose.find(params[:id])
  end

  def set_cocktail
    @cocktail = Cocktail.find(params[:cocktail_id])
  end

  def dose_params
    params.require(:dose).permit(:description, :ingredient_id)
  end
end

