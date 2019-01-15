class PeopleController < ApplicationController
  def new
    @person = Person.new
    @person.build.addresses(address_type: 'work')
    @person.build.address(address_type: 'home')
  end

  def create
    Person.create(person_params)
    redirect_to people_path
  end

  def index
    @people = Person.all
  end

  private

  def person_params
    params.require(:person).permit(:name)
  end
end
