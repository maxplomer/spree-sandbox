class Api::DigitalsController < ApplicationController

  def create
    logger.info("HELLOWORLDHELLOWORLDHELLOWORLD")
    logger.info(params)
    logger.info("HELLOWORLDHELLOWORLDHELLOWORLD")
    render json: {hello: "world"} 
  end

end
