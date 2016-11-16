class StaticPagesController < ApplicationController
  def indes
  end

  def landing_page
  	@featured_product = Product.first
  end

end
