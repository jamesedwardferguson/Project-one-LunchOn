class PagesController < ApplicationController

  def home
    @locations = Location.all
    @lunchitems = LunchItem.all
    
  end


end
