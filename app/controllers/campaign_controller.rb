class CampaignController < ApplicationController
  def index
  @states = State.all
  end
end
