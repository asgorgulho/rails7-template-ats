class DashboardController < ApplicationController
  def show
    flash.now[:notice] = "Welcome to the dashboard!"
  end
end
