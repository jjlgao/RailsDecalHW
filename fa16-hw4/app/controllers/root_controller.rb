class RootController < ActionController::Base
    def index
      @users = User.all
      @cats = Cat.all
      @todos = Todo.all
      
      render :index
    end
end
