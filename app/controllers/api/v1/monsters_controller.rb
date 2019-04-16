class Api::V1::MonstersController < ApplicationController
before_action :find_monster, only: [:show]
def index
  @monsters = Monster.all
  render json: @monsters
end

def show
    render json: @monster
end

# def update
#   @monster.update(monster_params)
#   if @monster.save
#     render json: @monster, status: :accepted
#   else
#     render json: { errors: @monster.errors.full_messages }, status: :unprocessible_entity
#   end
# end

private

def monster_params
  params.require(:monster).permit(:name, :phrase, :image)
end

def find_monster
  @monster = Monster.find(params[:id])
end
end
