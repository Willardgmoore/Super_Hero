class SuperPeopleController < ApplicationController
  def index
    @super_person = SuperPerson.all
  end

  def show
    @super_person = SuperPerson(params[:id])
  end

  def new
    @super_person = SuperPerson.new
  end

  def create
    @super_person = SuperPerson.new(super_person_params)

    if @super_person.save
      redirect_to super_people_path
    else
      render.new
    end
  end

  def villians
    @super_person = SuperPerson.where(is_hero: false)
  end

  def heroes
    @super_person = SuperPerson.where(is_hero: true)
  end

  private

  def super_person_params
    params.require(:super_person).permit(:name, :gender, :nemesis_id, :has_cape, :location, :weakness, :is_hero, :description)
  end

end
