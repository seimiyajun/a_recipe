class StaticPagesController < ApplicationController
  def top
  end
  
  def roulette
    @materials = Material.pluck( :name, :id )
  end
  
  def post
    food_id = FoodMaterial.where( material_id: params[:materials_id] ).pluck( :food_id ).sample
    if food_id
      redirect_to static_pages_result_path( id: food_id )
    else
      redirect_to static_pages_roulette_path
    end
  end
  
  def result
    @food = Food.find( params[:id] )
  end
end
