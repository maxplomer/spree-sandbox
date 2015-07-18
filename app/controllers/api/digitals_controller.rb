class Api::DigitalsController < ApplicationController
  before_action :require_valid_spree_api_key!

  def create
    product_id = params["product_id"]
    @digital = Spree::Digital.new(digital_params)
    @digital.variant_id = product_id

    if @digital.save
      render json: @digital
    else
      render :json => @digital.errors, :status => :unprocessable_entity
    end
  end

  private

  def digital_params
    params.require(:digital).permit(:attachment)
  end

end

## TODO before_action check for api key
