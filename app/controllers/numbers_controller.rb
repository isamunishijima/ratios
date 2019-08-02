class NumbersController < ApplicationController
  def index
    @numbers = Number.all
  end
  
  def show
  end
  
  def new
    @number = Number.new
  end
  
  def create
    @number = Number.new(number_params)
    if @number.save
      redirect_to root_path, notice: "Success!"
    else
      flash[:alert] = "Save error!"
      render :new
    end
  end

  def edit
    @number = Number.find(params[:id])
  end
  
  def update
    @number = Number.find(params[:id])
    if @number.update(number_params)
      redirect_to root_path, notice:"Success!"
    else
      render :edit
      flash[:alert] = "Error!"
    end
  end
  
  def destroy
    @number = Number.find_by(params[:id])
    @number.destroy
    redirect_to root_path, notice:"Success!"
  end
  
  private
  
  def number_params
    params.require(:number).permit(:name, :current_asset, :cash, :receivable,
                                     :inventory, :current_liability,
                                     :payable, :total_liability, :total_debt,
                                     :long_term_debt, :short_term_debt,
                                     :total_equity, :sale, :EBIT,
                                     :net_profit, :cost_of_goods_sold,
                                     :total_asset)
  end
  
end
