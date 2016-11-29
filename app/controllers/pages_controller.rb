class PagesController < ApplicationController

  def home
    @locations = Location.all
    @lunchtypes = LunchType.all
    @lunchitems = LunchItem.all
  end


end
