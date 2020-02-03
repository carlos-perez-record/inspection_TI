class VisitsController < ApplicationController
  def index
    @visits = Visit.all
  end

  def new
    @visits = Visit.new
  end
end
