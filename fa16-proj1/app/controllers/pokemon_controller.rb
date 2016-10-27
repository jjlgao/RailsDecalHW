class PokemonController < ApplicationController
  def capture
    poke = Pokemon.find_by_id(params[:id])
    poke.trainer_id = current_trainer.id
    poke.save!
    
    redirect_to "/"
  end
  
  def damage
    poke = Pokemon.find_by_id(params[:id])
    poke.health = poke.health - 20
    poke.save!
    
    if poke.health <= 0
      poke.destroy!
    end
    
    redirect_to trainers_path, id: params[:trainer_id]
  end
  
  def show
    render "/pokemons/new"
  end
  
  def new_pokemon
    p = Pokemon.new
    p.name = params[:pokemon][:name]
    if p.invalid?
      flash[:error] = "Invalid Pokemon name."
      redirect_to "/pokemons/new"
      return
    end
    p.health = 100
    p.level = 1
    p.trainer_id = current_trainer.id
    p.save!
    redirect_to trainer_path(id: current_trainer.id)
  end
end
