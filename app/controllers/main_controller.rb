class MainController < ApplicationController
  def index
    UserJob.perform_now
  end
end
