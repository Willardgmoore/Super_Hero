class AbilitiesController < ApplicationController
  def index
  	@ability = Ability.all
  end

  def show
  	@ability = Ability.find(params[:id])
  end

  def new
  	@ability = Ability.new
  end

  def create
  	@ability = Ability.new(ability_params)

  	if @ability.save
  	  redirect_to abilities_path
  	else
  	  render.new
  	end
  end

  def edit
    @ability = Ability.find(params[:id])
  end

  def update
    @ability = Ability.find(params[:id])

    if @abilities.update(ability_params)
      redirect_to abilities_path
    else
      render :edit
    end
  end

  def destroy
    @ability = Ability.find(params[:id])
    @ability.destroy
    redirect_to abilities_path
  end

  def delete
  end

  private

  def ability_params
    params.require(:ability).permit(:name, :super_id, :description)
  end

end
