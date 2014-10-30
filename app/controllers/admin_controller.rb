class AdminController < ApplicationController

  def index
    @products = Product.all
    @users= User.all
    @orders= Order.all

    @prodNum=@products.size
    @usersNum=@users.size
    @ordersNum=@orders.size

  end

  def products
    @products = Product.all
  end

  def users
    @users= User.all

  end

  def orders
    @orders= Order.all
  end


  def show_product
      @product = Product.find(params[:id])

  end





  def edit_product
    @product = Product.find(params[:id])

  end


  def new_product
    @product = Product.new

  end


  def show_order
    @order = Order.find(params[:id])
    @id=params[:id]
    @line_items=LineItem.where(:order_id => @id )
    @user= User.find(@order.user_id)

  end

  def show_user
    @user= User.find(params[:id])
    @ordersNum = Order.where(:user_id => params[:id]).size


  end


end
