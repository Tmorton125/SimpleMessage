class MessagesController < ApplicationController

	def index
		@messages = Message.order(created_at: :desc)
	end

	def show
		@message = Message.where(id: params[:id]).first
	end

	 	
	def new
		@message = Message.new
	end

	def create

	end

	def update

	end

	def destroy

	end
end
