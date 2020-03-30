class LinksController < ApplicationController
  before_action :check_user_setup
  before_action :set_link, only: [:show, :edit, :update, :destroy]

  # GET /links
  def index
    @links = current_user.links.all
  end

  # GET /links/1
  def show
  end

  # GET /links/new
  def new
    @link = current_user.links.new
  end

  # GET /links/1/edit
  def edit
  end

  # POST /links
  def create
    @link = current_user.links.new(link_params)

    if @link.save
      redirect_to @link, notice: 'Link was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /links/1
  def update
    if @link.update(link_params)
      redirect_to @link, notice: 'Link was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /links/1
  def destroy
    @link.destroy
    redirect_to links_url, notice: 'Link was successfully destroyed.'
  end

  private

  def set_link
    @link = current_user.links.find(params[:id])
  end

  def link_params
    params.require(:link).permit(:name, :url)
  end
end
