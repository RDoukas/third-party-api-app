class Api::RestaurantsController < ApplicationController
  
  def index
    @restaurants = HTTP.get("https://developers.zomato.com/api/v2.1/categories?id=#{params[:id]}", :params => {:key => Rails.application.credentials.restaurant_api[:api_key]})
    render json: @restaurants.parse
  end
end
