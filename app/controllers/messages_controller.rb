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
		# Params contains the message object so create new instance of object
		# on save successful save redirect to show action otherwise re-render new form with error messages
		@message= Message.new(message_params)

		if @message.save
			redirect_to @message
		else
			render 'new'
		end
	end

	def edit
		@message = Message.where(id: params[:id]).first
		@title = "test"

		if @message.blank?
			flash[:error] = "Unable to find requested Message"
			redirect_to action: :index
		end
	end

	def update
		@message = Message.where(id: params[:id]).first

		if @message.update(message_params)
			redirect_to @message
		else
			render 'edit'
		end
	end

	def destroy

		@message = Message.where(id: params[:id]).first
		if !@message.blank? and @message.destroy
			#no need to do anything at this time since we removed the message
		else
			flash[:error] = "Unable to perform requested Action"
		end
		redirect_to action: :index
	end

private
  # Include any private methods here that won't be accessible through routes

  def message_params
  	 params.require(:message).permit(:name, :content, :delivery_time)
  end

end # End of Controller
