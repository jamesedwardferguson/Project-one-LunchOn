class LunchitemsController < ApplicationController

  def index
    @lunchitems = LunchItem.all
  end

  def show
    @lunchitems = LunchItem.find params[:id]
  end

  def new
  end

  def create
    lunchitem = LunchItem.create(lunchitem_params)
    redirect_to "/users"
  end

  def edit
    @lunchitem = LunchItem.find params["id"]
  end

  def update
    lunchitem = LunchItem.find params["id"]
    lunchitem.update lunchitem_params
    redirect_to "/user/#{user.id}"
  end

  def destroy
  end
end
