class NumbersController < ApplicationController
  def index
    @numbers = Number.all
  end

  def new
  end

  def edit
  end

  def show
  end
end
