class TreesController < ApplicationController
  before_action :find_tree_by_id, only: [:show, :update, :destroy]

  def index
    @trees = Tree.all
    render json: @trees
  end

  def show 
    if @tree
      render json: @tree
    else
      render json: {message: "We couldn't find a tree with that id."}
    end
  end

  def create
    @tree = Tree.new(
      name: params[:name],
      scientific_name: params[:scientific_name],
      height: params[:height]
    )
    if @tree.save
      render json: @tree 
    else
      render status: 422
    end
  end

  def update 
    if @tree.update(
      name: params[:name],
      scientific_name: params[:scientific_name],
      height: params[:height]
      )
      render json: @tree 
    else
      render status: 422
    end
  end

  def destroy
    if @tree.destroy 
      redirect_to action: "index"
    else
      render status: 422
    end
  end

  private

  def find_tree_by_id
    @tree = Tree.find(params[:id])
  end

end
