class ThrowsController < ApplicationController
	before_action :winner, :comp_choice

	def index
		
	end

	def throw
		@player = params[:type].to_sym
		return @result = "invalid" unless @won.keys.include?(@player)
		if @player == @comp_choice
			@result = "Tied"
		elsif @comp_choice == @won[@player]
			@result = "Win"
		else 
			@result = "Lose"
		end
		@result
	end

	private

	def comp_choice
		@comp_choice = @won.keys.sample
	end

	def winner
		@won = {rock: :scissors, paper: :rock, scissors: :paper}
	end


end