class Api::PackagesController < ApplicationController
  before_action :set_tag, only: [:show, :update, :destroy]

  # GET /hotels
  def index
   @tags = Tag.all
   @hotels = Hotel.all
   @additions = Addition.all
   
   render :json => {:hotels => @hotels, :package_info => {:tags => @tags, :additions => @additions }}
  end
end

