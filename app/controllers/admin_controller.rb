class AdminController < ApplicationController

  before_action :is_admin


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


  def is_admin
    if user_signed_in?
      if current_user.admin==1
        @user=current_user
      else
        no_auth
      end
    else
      no_auth
    end

  end

  def no_auth
    raise ActionController::RoutingError.new('Not Found')

  end


end
