class ColourArtsController < ApplicationController
  before_action :set_colour_art, only: [:show, :edit, :update, :destroy]

  # GET /colour_arts
  # GET /colour_arts.json
  def index
    @colour_arts = ColourArt.all
  end

  # GET /colour_arts/1
  # GET /colour_arts/1.json
  def show
  end

  # GET /colour_arts/new
  def new
    @colour_art = ColourArt.new
  end

  # GET /colour_arts/1/edit
  def edit
  end

  # POST /colour_arts
  # POST /colour_arts.json
  def create
    @colour_art = ColourArt.new(colour_art_params)

    respond_to do |format|
      if @colour_art.save
        format.html { redirect_to @colour_art, notice: 'Colour art was successfully created.' }
        format.json { render :show, status: :created, location: @colour_art }
      else
        format.html { render :new }
        format.json { render json: @colour_art.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /colour_arts/1
  # PATCH/PUT /colour_arts/1.json
  def update
    respond_to do |format|
      if @colour_art.update(colour_art_params)
        format.html { redirect_to @colour_art, notice: 'Colour art was successfully updated.' }
        format.json { render :show, status: :ok, location: @colour_art }
      else
        format.html { render :edit }
        format.json { render json: @colour_art.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /colour_arts/1
  # DELETE /colour_arts/1.json
  def destroy
    @colour_art.destroy
    respond_to do |format|
      format.html { redirect_to colour_arts_url, notice: 'Colour art was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_colour_art
      @colour_art = ColourArt.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def colour_art_params
      params.require(:colour_art).permit(:name, :author, :url, :colorRank, :color, :description)
    end
end
