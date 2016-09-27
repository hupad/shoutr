class CommentsController < ApplicationController
	before_action :authenticate_user!, only: [:create]
	before_action :new
	before_action :find_shout

	def	new
		@comment = Comment.new
	end

	def create
		@comment = @shout.comments.build(text: permit_params[:text], user_id: current_user.id)

		if @comment.save
			flash[:notice] = "Your comment has been posted successfully."
			redirect_to root_path
		end
	end

	def	index
		@comments = @shout.comments
	end

	private

	def find_shout
		@shout = Shout.includes(:comments).find(params[:id])
	end

	def permit_params
		params.require(:comment).permit(:text)
	end
end