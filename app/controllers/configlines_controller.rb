class ConfiglinesController < ApplicationController
  before_action :set_configline, only: [:show, :edit, :update, :destroy]

  # GET /configlines
  # GET /configlines.json
  def index
    @configlines = Configline.all
  end

  # GET /configlines/1
  # GET /configlines/1.json
  def show
  end

  # GET /configlines/new
  def new
    @configline = Configline.new
  end

  # GET /configlines/1/edit
  def edit
  end

  # POST /configlines
  # POST /configlines.json
  def create
    @configline = Configline.new(configline_params)

    respond_to do |format|
      if @configline.save
        format.html { redirect_to @configline, notice: 'Configline was successfully created.' }
        format.json { render :show, status: :created, location: @configline }
      else
        format.html { render :new }
        format.json { render json: @configline.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /configlines/1
  # PATCH/PUT /configlines/1.json
  def update
    respond_to do |format|
      if @configline.update(configline_params)
        format.html { redirect_to @configline, notice: 'Configline was successfully updated.' }
        format.json { render :show, status: :ok, location: @configline }
      else
        format.html { render :edit }
        format.json { render json: @configline.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /configlines/1
  # DELETE /configlines/1.json
  def destroy
    @configline.destroy
    respond_to do |format|
      format.html { redirect_to configlines_url, notice: 'Configline was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_configline
      @configline = Configline.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def configline_params
      params.require(:configline).permit(:router_id, :linenumber, :lineconfig)
    end
end
