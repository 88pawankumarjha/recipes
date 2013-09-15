class StoresController < ApplicationController
  # GET /stores
  # GET /stores.json
  def index
    @recipes = Recipe.order("created_at DESC").paginate(:page => params[:page], :per_page => 5)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @recipes }
      format.xml { render xml: @recipes }
    end
  end

  # GET /stores/1
  # GET /stores/1.json
  def show
    @recipe = Recipe.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @recipe }
      format.xml { render xml: @recipe }
    end
  end

end
