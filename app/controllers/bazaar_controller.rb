class BazaarController < ApplicationController
  def index
  	@items=Item.order(:title)
  end
end
