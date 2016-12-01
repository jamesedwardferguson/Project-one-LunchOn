class LunchItemsController < ApplicationController

  def index
    @lunchitems = LunchItem.all
  end

  def show
    @lunchitem = LunchItem.find params[:id]
  end

  def new
    @lunchitem = LunchItem.new
    @location = @lunchitem.build_location
  end

  def create
    lunchitem = LunchItem.new(lunch_item_params)
    lunchitem.user_id = @current_user.id
    if params[:file].present?
      req = Cloudinary::Uploader.upload(params[:file])
      lunchitem.image = req['public_id']
    end
    lunchitem.save
    redirect_to root_path
  end

  def edit
    @lunchitem = LunchItem.find params["id"]
  end

  def update
    lunchitem = LunchItem.find params["id"]
    if params[:file].present?
      req = Cloudinary::Uploader.upload(params[:file])
      lunchitem.image = req['public_id']
    end
    lunchitem.assign_attributes(lunch_items_params)
    lunchitem.save
    redirect_to "/user/#{user.id}"
  end

  def destroy
  end

  def rate
    lunch_item = LunchItem.find_by :id => params[:id]
    ratings = lunch_item.ratings.where :user_id => @current_user.id

    if ratings.empty?
  # If there are no ratings attached to this post with the current_user id
    # Create a new one

      r = Rating.new
      r.lunch_item_id = lunch_item.id
      r.user_id = @current_user.id
      r.save
    else
      flash[:error] = "You have already liked this"
    end
      redirect_to lunch_items_path
    end


  private
  def lunch_item_params
    params.require(:lunch_item).permit(:name, :price, :image, location_attributes: [:name, :address])
  end


end
