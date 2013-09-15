class PageController < ApplicationController
  def home
  end

  def about_us
  end

  def recipes
  end

  def product
  end

  def articles
  end

  def calender
    @my_time = Time.now
    @name = "Pawan"
    @products = %w(Skiis Boots Poles Mittens Mask hat)
    
  end

  def blog
  end

  def login
  end
end
