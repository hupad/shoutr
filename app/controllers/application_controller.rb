class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def hustlers
	@top_hustlers = Shout.joins(:receiver)
						.group("shouts.receiver_id")
						.select("shouts.*, count(shouts.receiver_id) as top_hustlers")
						.order('top_hustlers DESC')
						.limit(3)
	byebug
  end
end
