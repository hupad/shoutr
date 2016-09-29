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
  end

  def badges
  	@badges = Badge.includes(:badge_category)

  	@badge_categories = {
  		"General" => @badges.select { |b| b.badge_category_id == 1 },
  		"Engineering" => @badges.select { |b| b.badge_category_id == 2 },
  		"Design" => @badges.select { |b| b.badge_category_id == 3 }
  	}

  end

end
