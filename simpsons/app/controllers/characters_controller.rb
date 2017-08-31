class CharactersController < ApplicationController

	def index
		@characters = Character.all
	end

	def show
		@character = Character.find(params[:id])
	end

	def edit
		@character = Character.find(params[:id])
	end

	def update
		@character = Character.find(params[:id])
		@character.update(character_params)
		redirect_to @character
	end

	def new
		@character = Character.new
	end

	def create
		@character = Character.new(character_params)
		@character.save
		redirect_to @character
	end

	def destroy
		@character = Character.find(params[:id])
		@character.destroy
		redirect_to characters_path
	end

	private
    # Never trust parameters from the scary internet, only allow the white list through.
    def character_params
      params.require(:character).permit(:name, :age, :voice_actor, :first_appearance, :job)
    end

end