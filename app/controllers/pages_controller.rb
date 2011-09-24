class PagesController < ApplicationController
  def home
     #automatically render the view "home.html.erb"
     @title = "Home"
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
