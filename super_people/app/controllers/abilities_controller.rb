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

  private

  def ability_params
    params.require(:ability).permit(:name, :super_id, :description)
  end

end
