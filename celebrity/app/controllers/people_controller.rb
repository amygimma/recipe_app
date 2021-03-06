class PeopleController < ApplicationController
  def index
    @people = People.all()
  end

  def new_name
  end

  def create
    @people = People.new(post_params)
    
    @people.save
    redirect_to people_index_path
  end
  
  def random
    total_people= People.count()
    random_number= rand(0..total_people)
    @person = People.find(random_number)
  end
  
  def clear_list
   
  end
  
  private 
    def post_params
      params.require(:people).permit(:name)
    end
   
end
