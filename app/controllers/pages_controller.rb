class PagesController < ApplicationController
  def home
     #automatically render the view "home.html.erb"
     @title = "Home"
     if signed_in?
       @micropost = Micropost.new
       @feed_items = current_user.feed.paginate(:page=>params[:page])
     end
  end

  def contact
     @title = "Contact"
  end

  def about
     @title = "About"
  end

  def help
     @title = "Help"
  end

end
