class LinksController < ApplicationController
  before_action :set_links
  before_action :set_link, only: [:show, :edit, :update, :destroy]

  # GET /links
  def index
    @links = @links.ordered_by_position
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

  def reorder
    @links.where(id: links_params).find_each do |link|
      link.update_columns(position: links_params.index(link.id.to_s).to_i, updated_at: Time.current)
    end
    redirect_to links_path, notice: 'Successfully updated positions'
  end

  private

  def set_links
    @links = current_user.links.all
  end

  def set_link
    @link = @links.find(params[:id])
  end

  def link_params
    params.require(:link).permit(:name, :url, :style, tags: [:key, :value]).tap do |permitted_params|
      permitted_params[:tags] ||= []
      permitted_params[:tags] = permitted_params[:tags].map(&:to_h)
                                                       .map(&:symbolize_keys)
                                                       .each_with_object({}) { |i, obj| obj[i[:key]] = i[:value] }
    end
  end

  def links_params
    params.require(:link_ids)
  end
end
