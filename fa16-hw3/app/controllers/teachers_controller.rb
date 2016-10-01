class TeachersController < ApplicationController
  def new
    @placeholder_course = '186'
  end

  def create
    # Hint: params??
    puts params
    render 'show'
  end
  
  def index
    redirect_to '/students/new'
    'abc'
  end
end
