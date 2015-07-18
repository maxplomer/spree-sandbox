class CustomCheckoutController < ApplicationController

  def guest
    #fail
    redirect_to "/cart"
  end

end