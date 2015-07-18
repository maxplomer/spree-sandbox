class CustomCheckoutController < ApplicationController
  
  def guest
    redirect_to 'http://news.google.com'
  end
  
end
