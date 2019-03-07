class ColourPiecesController < ApplicationController
  before_action :set_colour_piece, only: [:show, :edit, :update, :destroy]

  # GET /colour_pieces
  # GET /colour_pieces.json
  def index
    @colour_pieces = ColourPiece.all
  end

  # GET /colour_pieces/1
  # GET /colour_pieces/1.json
  def show
  end

  # GET /colour_pieces/new
  def new
    @colour_piece = ColourPiece.new
  end

  # GET /colour_pieces/1/edit
  def edit
  end

  # POST /colour_pieces
  # POST /colour_pieces.json
  def create
    @colour_piece = ColourPiece.new(colour_piece_params)

    respond_to do |format|
      if @colour_piece.save
        format.html { redirect_to @colour_piece, notice: 'Colour piece was successfully created.' }
        format.json { render :show, status: :created, location: @colour_piece }
      else
        format.html { render :new }
        format.json { render json: @colour_piece.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /colour_pieces/1
  # PATCH/PUT /colour_pieces/1.json
  def update
    respond_to do |format|
      if @colour_piece.update(colour_piece_params)
        format.html { redirect_to @colour_piece, notice: 'Colour piece was successfully updated.' }
        format.json { render :show, status: :ok, location: @colour_piece }
      else
        format.html { render :edit }
        format.json { render json: @colour_piece.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /colour_pieces/1
  # DELETE /colour_pieces/1.json
  def destroy
    @colour_piece.destroy
    respond_to do |format|
      format.html { redirect_to colour_pieces_url, notice: 'Colour piece was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_colour_piece
      @colour_piece = ColourPiece.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def colour_piece_params
      params.require(:colour_piece).permit(:name, :url, :color, :description)
    end
end
