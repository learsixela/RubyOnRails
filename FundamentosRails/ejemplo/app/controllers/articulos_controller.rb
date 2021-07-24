class ArticulosController < ApplicationController
  before_action :set_articulo, only: %i[ show edit update destroy ]

  # GET /articulos or /articulos.json
  def index
    @articulos = Articulo.all
  end

  # GET /articulos/1 or /articulos/1.json
  def show
  end

  # GET /articulos/new
  def new
    @articulo = Articulo.new
  end

  # GET /articulos/1/edit
  def edit
  end

  # POST /articulos or /articulos.json
  def create
    @articulo = Articulo.new(articulo_params)

    respond_to do |format|
      if @articulo.save
        format.html { redirect_to @articulo, notice: "Articulo was successfully created." }
        format.json { render :show, status: :created, location: @articulo }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @articulo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /articulos/1 or /articulos/1.json
  def update
    respond_to do |format|
      if @articulo.update(articulo_params)
        format.html { redirect_to @articulo, notice: "Articulo was successfully updated." }
        format.json { render :show, status: :ok, location: @articulo }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @articulo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /articulos/1 or /articulos/1.json
  def destroy
    @articulo.destroy
    respond_to do |format|
      format.html { redirect_to articulos_url, notice: "Articulo was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_articulo
      @articulo = Articulo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def articulo_params
      params.require(:articulo).permit(:nombre, :descripcion, :cantidad)
    end
end
