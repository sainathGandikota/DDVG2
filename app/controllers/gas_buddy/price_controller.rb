class GasBuddy::PriceController < ApplicationController
  def add
  	 params[:amount].sub!("USD", "")
    Prices.new do |price|
      price.vendor_id = params[:vendor_id]
      price.grade = params[:grade]
      price.amount = params[:amount]
      price.update_by = params[:user_id]
      price.created_at = Time.now
      price.updated_at = price.created_at
      price.save
  end

  def get
  end

  def update
  	 @next = params[:next]
    @state = params[:state]
  end
end
