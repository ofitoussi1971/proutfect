class ItemsController < ApplicationController

  include ApplicationHelper

  before_action :authenticate_user!, except: [:index, :show]
  
  def index
    @items = Item.all
  end

  def show
    @item = Item.find(params[:id])
  end

  def new
  end

  def create
    @item = Item.create
  end

  def edit
  end

  def update
    @item = Item.find(params[:id])
    @item.update
  end

  def destroy
    @item = Item.find(params[:id])
    @item.destroy
  end
end
